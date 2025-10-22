package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.SimpleFrame;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class GLSurfaceContextView extends ExtendedGlSurfaceView implements GLSurfaceView.Renderer, CaptureFeedback {
    private static final float CENTER_X_POS = 0.0f;
    private static final float CENTER_Y_POS = 0.0f;
    private static final float CENTER_Z_POS = 0.2f;
    public static final String TAG = "GLSurfaceContextView";
    private CaptureFeedbackAnimation mAnimation;
    private final CaptureFeedbackAnimationCanvas mAnimationCanvas;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private SimpleFrame mFlashFeedback;
    private final SetInvisibleTask mSetInvisibleTask;
    private int mSimpleFrameShader;
    private static final float[] EYE_SIGHT_MATRIX = new float[16];
    private static final float[] PERSPECTIVE_PROJECTION_MATRIX = new float[16];
    private static final float[] PARALLEL_PROJECTION_MATRIX = new float[16];
    private static final float[] ROOT_GM = new float[16];

    public static final void preload() {
    }

    static {
        Matrix.setLookAtM(EYE_SIGHT_MATRIX, 0, 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.orthoM(PARALLEL_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 200.0f);
        Matrix.frustumM(PERSPECTIVE_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 50.0f, 150.0f);
    }

    public GLSurfaceContextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mFlashFeedback = null;
        this.mSimpleFrameShader = 0;
        this.mSetInvisibleTask = new SetInvisibleTask();
        this.mAnimationCanvas = new AnimationCanvas();
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setZOrderOnTop(true);
        setRenderer(this);
        setRenderMode(0);
        getHolder().setFormat(-2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl, EGLConfig arg1) {
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        setupRelatedToSurfaceSize();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl) {
        render();
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void start(CaptureFeedbackAnimation animation) {
        removeCallbacks(this.mSetInvisibleTask);
        this.mAnimation = animation;
        this.mAnimationElapsedTimeCount.start();
        setVisibility(0);
        setRenderMode(1);
        requestRender();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder holder) {
        release();
        super.surfaceDestroyed(holder);
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void release() {
        queueEvent(new ReleaseTask());
    }

    private class ReleaseTask implements Runnable {
        private ReleaseTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (GLSurfaceContextView.this.mFlashFeedback != null) {
                GLSurfaceContextView.this.mFlashFeedback.release();
                GLSurfaceContextView.this.mFlashFeedback = null;
            }
            GLSurfaceContextView.this.releaseAllShaders();
        }
    }

    public void setupRelatedToSurfaceSize() {
        queueEvent(new SetupRelatedToSurfaceSizeTask());
    }

    private class SetupRelatedToSurfaceSizeTask implements Runnable {
        private SetupRelatedToSurfaceSizeTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GLSurfaceContextView.this.setupDynamicConfig(GLSurfaceContextView.this.getWidth(), GLSurfaceContextView.this.getHeight());
            if (GLSurfaceContextView.this.mFlashFeedback == null) {
                GLSurfaceContextView.this.createAllShaders();
                GLSurfaceContextView.this.mFlashFeedback = new SimpleFrame(GLSurfaceContextView.this.getContext(), GLSurfaceContextView.this);
                GLSurfaceContextView.this.mFlashFeedback.setColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLSurfaceContextView.this.mFlashFeedback.setShaderProgram(GLSurfaceContextView.this.mSimpleFrameShader);
                GLSurfaceContextView.this.mFlashFeedback.setVisibility(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupDynamicConfig(int width, int height) {
        if (height < width) {
            int verticalOffset = (width - height) / 2;
            GLES20.glViewport(0, verticalOffset * (-1), width, width);
        } else {
            int horizontalOffset = (height - width) / 2;
            GLES20.glViewport(horizontalOffset * (-1), 0, height, height);
        }
    }

    private void render() {
        if (!enableGlobalFunctions()) {
            CameraLogger.e(TAG, "render():[Enable functions failed.]");
            return;
        }
        doRender();
        if (!disableGlobalFunctions()) {
            CameraLogger.e(TAG, "render():[Disable functions failed.]");
        }
    }

    private boolean enableGlobalFunctions() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glEnable(2929);
        return true;
    }

    private boolean disableGlobalFunctions() {
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
        return true;
    }

    private void clearSurface() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(17664);
    }

    private void doRender() {
        boolean isAnimationFinished;
        clearSurface();
        if (this.mFlashFeedback != null) {
            Matrix.setIdentityM(ROOT_GM, 0);
            Matrix.multiplyMM(ROOT_GM, 0, EYE_SIGHT_MATRIX, 0, ROOT_GM, 0);
            Matrix.multiplyMM(ROOT_GM, 0, PARALLEL_PROJECTION_MATRIX, 0, ROOT_GM, 0);
            this.mFlashFeedback.setGlobalMatrix(ROOT_GM);
            CaptureFeedbackAnimation animation = this.mAnimation;
            if (animation != null) {
                GLES20.glBlendFunc(770, 1);
                isAnimationFinished = animation.draw(this.mAnimationCanvas, this.mAnimationElapsedTimeCount.elapsedTimeMillis()) ? false : true;
                GLES20.glBlendFunc(770, 771);
            } else {
                isAnimationFinished = true;
            }
            if (isAnimationFinished) {
                this.mAnimationElapsedTimeCount.stop();
                post(this.mSetInvisibleTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAllShaders() {
        if (this.mSimpleFrameShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        }
        this.mSimpleFrameShader = ShaderProgramFactory.createSimpleFrameShaderProgram(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseAllShaders() {
        ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        this.mSimpleFrameShader = 0;
    }

    private class SetInvisibleTask implements Runnable {
        private SetInvisibleTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GLSurfaceContextView.this.setVisibility(4);
            GLSurfaceContextView.this.setRenderMode(0);
        }
    }

    private class AnimationCanvas implements CaptureFeedbackAnimationCanvas {
        private AnimationCanvas() {
        }

        @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas
        public void drawColor(float alpha, float red, float green, float blue) {
            GLSurfaceContextView.this.mFlashFeedback.translate(0.0f, 0.0f, GLSurfaceContextView.CENTER_Z_POS);
            GLSurfaceContextView.this.mFlashFeedback.setColor(red, green, blue, alpha);
            GLSurfaceContextView.this.mFlashFeedback.render();
        }
    }
}