package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.util.Log;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonymobile.cameracommon.gltextureview.EGLController;
import com.sonymobile.cameracommon.gltextureview.ExtendedGLTextureView;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor;
import com.sonymobile.cameracommon.multiframerenderer.NotifySurfaceStateTask;
import com.sonymobile.cameracommon.opengl.CopiedFrame;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.FramebufferController;
import com.sonymobile.cameracommon.opengl.RgbFrame;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.TransitionControllerUtil;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.IntBuffer;
import java.util.List;

/* loaded from: classes.dex */
public class MultiFrameRender extends ExtendedGLTextureView implements GLTextureView.SurfaceStateCallback, GLTextureView.Renderer, GLRendererAccessor {
    public static final float EYE_POSITION_Z = 2.0f;
    public static final float FAR_CLIP = 10.0f;
    private static final boolean IS_DEBUG = false;
    public static final float NEAR_CLIP = 1.0f;
    public static final String TAG = "MultiFrameRender";
    private static final Object mFrameEncoderLock;
    private Bitmap mCaptureWorkBitmap;
    private float mClearColorBlue;
    private float mClearColorGreen;
    private float mClearColorRed;
    private MultiFrameLayoutBase mCurrentMultiFrameLayout;
    private FramebufferController mFramebuffer;
    private CopiedFrame mFramebufferRenderer;
    private int mFramebufferRendererShader;
    private boolean mIsNeedToSkipGetBitmap;
    private boolean mIsVideoFrameRendererReleaseRequired;
    private GLTextureView.SurfaceStateCallback mLifeCycleCallback;
    private GLRendererAccessor.OnTakeGlTextureViewBitmapCallback mOnTakeGlTextureViewBitmapCallback;
    private PhotoSavingRequest mPhotoSavingRequest;
    private TransitionControllerUtil.ServoControlRotator mRotator;
    private TransitionControllerUtil.ServoControlTranslator mTranslator;
    private Handler mUiThreadHandler;
    private EGLController mVideoEncoderEglController;
    private int mVideoFrameHeight;
    private int mVideoFrameWidth;
    private int[] mViewPort;
    private static final float[] EYE_SIGHT_MATRIX = new float[16];
    private static final float[] PERSPECTIVE_PROJECTION_MATRIX = new float[16];
    private static final float[] PARALLEL_PROJECTION_MATRIX = new float[16];
    static final float[] EYE_POSITION = {0.0f, 0.0f, 2.0f};

    private static void logDebug(String event) {
        Log.e("TraceLog", "[TIME=" + System.currentTimeMillis() + "] [TAG=" + TAG + "] [THREAD=" + Thread.currentThread() + "] [EVENT=" + event + "]");
    }

    static {
        Matrix.setLookAtM(EYE_SIGHT_MATRIX, 0, EYE_POSITION[0], EYE_POSITION[1], EYE_POSITION[2], 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.orthoM(PARALLEL_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 200.0f);
        Matrix.frustumM(PERSPECTIVE_PROJECTION_MATRIX, 0, -0.5f, 0.5f, -0.5f, 0.5f, 1.0f, 10.0f);
        mFrameEncoderLock = new Object();
    }

    private static int[] setupDynamicConfig(int width, int height) {
        if (height < width) {
            int verticalOffset = (width - height) / 2;
            GLES20.glViewport(0, verticalOffset * (-1), width, width);
        } else {
            int horizontalOffset = (height - width) / 2;
            GLES20.glViewport(0, horizontalOffset * (-1), height, height);
        }
        IntBuffer viewPort = IntBuffer.allocate(4);
        GLES20.glGetIntegerv(2978, viewPort);
        return viewPort.array();
    }

    private static void enableGlobalFunctions() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glEnable(2929);
    }

    private static void disableGlobalFunctions() {
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
    }

    private static void clearSurface(float red, float green, float blue) {
        GLES20.glClearColor(red, green, blue, 1.0f);
        GLES20.glClear(16640);
    }

    private static float[] getPerspectiveProjectionRootGlobalMatrix() {
        float[] rootGM = new float[16];
        Matrix.setIdentityM(rootGM, 0);
        Matrix.multiplyMM(rootGM, 0, EYE_SIGHT_MATRIX, 0, rootGM, 0);
        Matrix.multiplyMM(rootGM, 0, PERSPECTIVE_PROJECTION_MATRIX, 0, rootGM, 0);
        return rootGM;
    }

    public MultiFrameRender(Context context, int requiredFps) {
        super(context, true, requiredFps);
        this.mUiThreadHandler = new Handler();
        this.mIsVideoFrameRendererReleaseRequired = false;
        this.mVideoEncoderEglController = null;
        this.mLifeCycleCallback = null;
        this.mClearColorRed = 0.0f;
        this.mClearColorGreen = 0.0f;
        this.mClearColorBlue = 0.0f;
        this.mFramebufferRenderer = null;
        this.mFramebufferRendererShader = 0;
        super.setSurfaceStateCallback(this);
        super.setRenderer(this);
        this.mRotator = new TransitionControllerUtil.ServoControlRotator(0.0f, 0.0f, 0.0f);
        this.mRotator.setGains(0.2f, 0.01f, 0.01f);
        this.mTranslator = new TransitionControllerUtil.ServoControlTranslator(0.0f, 0.0f, 0.0f);
        this.mTranslator.setGains(0.2f, 0.03f, 0.04f);
    }

    public void release() {
        this.mLifeCycleCallback = null;
    }

    public void setGlobalRotate(float targetX, float targetY, float targetZ) {
        this.mRotator.updateTargetCondition(targetX, targetY, targetZ);
    }

    public void setGlobalTranslator(float targetX, float targetY, float targetZ) {
        setGlobalTranslator(targetX, targetY, targetZ, null);
    }

    public void setGlobalTranslator(float targetX, float targetY, float targetZ, TransitionControllerUtil.ServoControlBase.ServoControlListener listener) {
        this.mTranslator.updateTargetCondition(targetX, targetY, targetZ);
        this.mTranslator.setListener(listener);
    }

    public void setSurfaceClearColor(int color) {
        setSurfaceClearColor(Color.red(color) / 255.0f, Color.green(color) / 255.0f, Color.blue(color) / 255.0f);
    }

    public void setSurfaceClearColor(float red, float green, float blue) {
        this.mClearColorRed = red;
        this.mClearColorGreen = green;
        this.mClearColorBlue = blue;
    }

    private void setDefaultGlViewPort(int width, int height) {
        if (height < width) {
            int verticalOffset = (width - height) / 2;
            GLES20.glViewport(0, verticalOffset * (-1), width, width);
        } else {
            int horizontalOffset = (height - width) / 2;
            GLES20.glViewport(0, horizontalOffset * (-1), height, height);
        }
    }

    public void setUiOrientation(int orientation) {
    }

    public void setMultiFrameLayout(MultiFrameLayoutBase layout) {
        this.mCurrentMultiFrameLayout = layout;
        setMatrix(layout);
    }

    protected void setMatrix(MultiFrameLayoutBase layout) {
        layout.setMatrix(this.mViewPort, EYE_POSITION, getPerspectiveProjectionRootGlobalMatrix());
    }

    public MultiFrameLayoutBase getCurrentMultiFrameLayout() {
        return this.mCurrentMultiFrameLayout;
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void setRenderer(GLTextureView.Renderer renderer) {
        throw new IllegalAccessError("Do not use this directly.");
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void setSurfaceStateCallback(GLTextureView.SurfaceStateCallback callback) {
        this.mLifeCycleCallback = callback;
    }

    @Override // com.sonymobile.cameracommon.gltextureview.ExtendedGLTextureView, com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void onResume() {
        super.onResume();
        requestAction(new Runnable() { // from class: com.sonymobile.cameracommon.multiframerenderer.MultiFrameRender.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    @Override // com.sonymobile.cameracommon.gltextureview.ExtendedGLTextureView, com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void onPause() {
        super.onPause();
        requestAction(new Runnable() { // from class: com.sonymobile.cameracommon.multiframerenderer.MultiFrameRender.2
            @Override // java.lang.Runnable
            public void run() {
            }
        });
        requestRender();
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
    public void onSurfaceCreated() {
        if (this.mLifeCycleCallback != null) {
            this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.CREATED, getWidth(), getHeight(), this.mLifeCycleCallback));
        }
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
    public void onSurfaceChanged(int width, int height) {
        this.mViewPort = setupDynamicConfig(getWidth(), getHeight());
        setMatrix(this.mCurrentMultiFrameLayout);
        synchronized (this.mCurrentMultiFrameLayout) {
            this.mCurrentMultiFrameLayout.onSurfaceChanged(width, height);
        }
        this.mFramebuffer = new FramebufferController(width, height);
        this.mFramebufferRenderer = new CopiedFrame(getContext(), this);
        this.mFramebufferRendererShader = ShaderProgramFactory.createCopyFrameShaderProgram(getContext());
        this.mFramebufferRenderer.setShaderProgram(this.mFramebufferRendererShader);
        if (this.mLifeCycleCallback != null) {
            this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.CHANGED, width, height, this.mLifeCycleCallback));
        }
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
    public void onSurfaceDestroyed() {
        synchronized (this.mCurrentMultiFrameLayout) {
            this.mCurrentMultiFrameLayout.releaseGlEglRelatedInstances();
        }
        if (this.mFramebuffer != null) {
            this.mFramebuffer.release();
        }
        if (this.mFramebufferRenderer != null) {
            this.mFramebufferRenderer.release();
            this.mFramebufferRenderer = null;
        }
        if (this.mFramebufferRendererShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mFramebufferRendererShader);
            this.mFramebufferRendererShader = 0;
        }
        if (this.mLifeCycleCallback != null) {
            this.mUiThreadHandler.post(new NotifySurfaceStateTask(NotifySurfaceStateTask.NotifyType.DESTROYED, 0, 0, this.mLifeCycleCallback));
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void requestFrame(String frameId, FrameData frameData) {
        if (isReady()) {
            this.mCurrentMultiFrameLayout.updateFrameData(frameId, frameData);
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void setMirrored(String frameId, boolean isMirrored) {
        if (isReady()) {
            this.mCurrentMultiFrameLayout.setMirrored(frameId, isMirrored);
        }
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.Renderer
    public void onDrawFrame() {
        if (isReady()) {
            render();
        } else {
            clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
        }
    }

    private void render() {
        clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
        List<FrameStruct> structList = this.mCurrentMultiFrameLayout.getFrameStructList();
        if (!structList.isEmpty()) {
            float[] rootGM = getPerspectiveProjectionRootGlobalMatrix();
            this.mRotator.update();
            this.mTranslator.update();
            synchronized (this.mCurrentMultiFrameLayout) {
                enableGlobalFunctions();
                bindAndRenderToFrameBuffer(rootGM);
                renderPreviewFrame(rootGM);
                disableGlobalFunctions();
                synchronized (mFrameEncoderLock) {
                    renderVideoFrame(rootGM);
                }
            }
        }
    }

    private void bindAndRenderToFrameBuffer(float[] rootGM) {
        this.mFramebuffer.bind();
        clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
        setDefaultGlViewPort(getWidth(), getHeight());
        renderToFrameBuffer(rootGM);
        this.mFramebuffer.unbind();
    }

    protected void renderToFrameBuffer(float[] rootGM) {
        TransitionControllerUtil.ServoControlBase.Applier rotateApplier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier traslateApplir = this.mTranslator.getCurrentConcreteApplier();
        render(this.mCurrentMultiFrameLayout, rootGM, rotateApplier, traslateApplir, null, FrameStruct.FrameStructVisibility.COMMON);
    }

    private void renderPreviewFrame(float[] rootGM) {
        setDefaultGlViewPort(getWidth(), getHeight());
        this.mFramebufferRenderer.setGlobalMatrix(rootGM);
        this.mFramebufferRenderer.setInputTexture(this.mFramebuffer.getTexture());
        this.mFramebufferRenderer.scale(1.0f, -1.0f, 1.0f);
        this.mFramebufferRenderer.render();
        renderOnlyPreviewFrame(rootGM);
    }

    protected void renderOnlyPreviewFrame(float[] rootGM) {
        TransitionControllerUtil.ServoControlBase.Applier rotateApplier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier traslateApplir = this.mTranslator.getCurrentConcreteApplier();
        render(this.mCurrentMultiFrameLayout, rootGM, rotateApplier, traslateApplir, null, FrameStruct.FrameStructVisibility.PREVIEW_ONLY);
        render(this.mCurrentMultiFrameLayout, rootGM, rotateApplier, traslateApplir, null, FrameStruct.FrameStructVisibility.COMMON_OVERLAY);
    }

    protected void render(MultiFrameLayoutBase layoutBase, float[] rootGM, TransitionControllerUtil.ServoControlBase.Applier rotateApplier, TransitionControllerUtil.ServoControlBase.Applier traslateApplir, TransitionControllerUtil.ServoControlBase.Applier scalorApplir, FrameStruct.FrameStructVisibility visibility) {
        layoutBase.enableFunctions();
        for (FrameStruct data : layoutBase.getFrameStructList()) {
            if (data.getVisibility() == visibility) {
                boolean skipRender = false;
                FrameBase frameBase = data.getFrameBaseFactory().obtain();
                if (frameBase == null) {
                    data.getFrameBaseFactory().initialize(this);
                    frameBase = data.getFrameBaseFactory().obtain();
                }
                if (data.isTextureRequiredToUpdate()) {
                    FrameData frameData = data.getFrameData();
                    if (frameData == null) {
                        skipRender = true;
                    } else {
                        switch (frameData.getImageFormat()) {
                            case YVU420_SEMIPLANAR:
                                ((YuvFrame) frameBase).setTextureYvu(frameData.getFrameWidth(), frameData.getFrameHeight(), frameData.getByteArrayYvu(), frameData.getYOffset(), frameData.getVuOffset());
                                break;
                            case BITMAP:
                                ((RgbFrame) frameBase).updataTexture(frameData.getBitmap());
                                break;
                        }
                    }
                }
                String frameId = data.getFrameId();
                frameBase.setGlobalMatrix(rootGM);
                layoutBase.onObjectCoordTransformRequested(frameId, frameBase);
                layoutBase.onObjectVertexUpdateRequested(frameId, frameBase);
                if (scalorApplir != null) {
                    scalorApplir.apply(frameBase);
                }
                if (rotateApplier != null) {
                    rotateApplier.apply(frameBase);
                }
                if (traslateApplir != null) {
                    traslateApplir.apply(frameBase);
                }
                if (!skipRender) {
                    frameBase.render();
                }
                layoutBase.setFrameMvpMatrix(frameId, frameBase.getLocalGlobalMatrix());
            }
        }
        layoutBase.disableFunctions();
    }

    private void renderVideoFrame(float[] rootGM) {
        if (this.mVideoEncoderEglController != null) {
            if (this.mVideoEncoderEglController.isValid()) {
                if (this.mIsVideoFrameRendererReleaseRequired) {
                    this.mVideoEncoderEglController.release();
                    this.mVideoEncoderEglController = null;
                } else {
                    this.mVideoEncoderEglController.enable();
                    setDefaultGlViewPort(this.mVideoFrameWidth, this.mVideoFrameHeight);
                    enableGlobalFunctions();
                    clearSurface(this.mClearColorRed, this.mClearColorGreen, this.mClearColorBlue);
                    this.mFramebufferRenderer.setGlobalMatrix(rootGM);
                    this.mFramebufferRenderer.setInputTexture(this.mFramebuffer.getTexture());
                    this.mFramebufferRenderer.scale(1.0f, -1.0f, 1.0f);
                    this.mFramebufferRenderer.render();
                    renderOnlyVideoFrame(rootGM);
                    disableGlobalFunctions();
                    GLES20.glFlush();
                    GLES20.glFinish();
                    this.mVideoEncoderEglController.onDrawFrameFinished();
                    this.mVideoEncoderEglController.disable();
                }
            }
            recoverEglContext();
        }
    }

    protected void renderOnlyVideoFrame(float[] rootGM) {
        TransitionControllerUtil.ServoControlBase.Applier rotateApplier = this.mRotator.getCurrentConcreteApplier();
        TransitionControllerUtil.ServoControlBase.Applier traslateApplir = this.mTranslator.getCurrentConcreteApplier();
        render(this.mCurrentMultiFrameLayout, rootGM, rotateApplier, traslateApplir, null, FrameStruct.FrameStructVisibility.VIDEO_ONLY);
        render(this.mCurrentMultiFrameLayout, rootGM, rotateApplier, traslateApplir, null, FrameStruct.FrameStructVisibility.COMMON_OVERLAY);
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void startVideoFrameRendering(EGLController eglController, int width, int height) {
        synchronized (mFrameEncoderLock) {
            this.mVideoFrameWidth = width;
            this.mVideoFrameHeight = height;
            this.mVideoEncoderEglController = eglController;
            this.mIsVideoFrameRendererReleaseRequired = false;
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void stopVideoFrameRendering() {
        synchronized (mFrameEncoderLock) {
            this.mIsVideoFrameRendererReleaseRequired = true;
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void requestTakeGlTextureViewBitmap(GLRendererAccessor.OnTakeGlTextureViewBitmapCallback callback, PhotoSavingRequest request, Bitmap bitmap) {
        if (callback != null) {
            synchronized (this.mGlLock) {
                this.mOnTakeGlTextureViewBitmapCallback = callback;
                this.mPhotoSavingRequest = request;
                this.mCaptureWorkBitmap = bitmap;
                this.mIsNeedToSkipGetBitmap = true;
            }
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public Bitmap getGLTextureViewBitmap() {
        return getBitmap();
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.GLRendererAccessor
    public void getGLTextureViewBitmap(Bitmap bitmap) {
        getBitmap(bitmap);
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView, android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
        Bitmap bitmap;
        super.onSurfaceTextureUpdated(surface);
        if (this.mOnTakeGlTextureViewBitmapCallback != null) {
            synchronized (this.mGlLock) {
                if (this.mIsNeedToSkipGetBitmap) {
                    this.mIsNeedToSkipGetBitmap = false;
                    return;
                }
                if (this.mCaptureWorkBitmap != null) {
                    getBitmap(this.mCaptureWorkBitmap);
                    bitmap = this.mCaptureWorkBitmap;
                } else {
                    bitmap = getBitmap();
                }
                this.mOnTakeGlTextureViewBitmapCallback.onTakeGlTextureViewBitmap(bitmap, this.mPhotoSavingRequest);
                this.mOnTakeGlTextureViewBitmapCallback = null;
                this.mPhotoSavingRequest = null;
                synchronized (this.mGlLock) {
                    this.mCaptureWorkBitmap = null;
                }
            }
        }
    }
}