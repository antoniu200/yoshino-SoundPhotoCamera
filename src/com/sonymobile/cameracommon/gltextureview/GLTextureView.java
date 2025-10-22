package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.AttributeSet;
import android.util.Log;
import android.view.TextureView;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.gltextureview.EGLConfigChooser_RGBA8888D16S8;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

/* loaded from: classes.dex */
public class GLTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    protected static final boolean IS_EGL_DEBUG = false;
    protected static final boolean IS_GL_DEBUG = false;
    public static final String TAG = "GLTextureView";
    private Queue<Runnable> mActionQueue;
    private Thread mBackgroundThread;
    private final DummyRenderer mDummyRenderer;
    private final DummySurfaceStateListener mDummyStateCallback;
    private EGLController mEglCon;
    private EGLConfigChooser mEglConfigChooser;
    protected final Object mGlLock;
    private boolean mIsAlreadyDestroyed;
    private boolean mIsAlreadyInitialized;
    private boolean mIsAlreadyScreenCleared;
    private boolean mIsRenderRequested;
    private boolean mIsSleep;
    protected OpenGLVersion mOpenGlVersion;
    protected RenderSyncType mRenderSyncType;
    private Renderer mRenderer;
    private SurfaceStateCallback mStateCallback;
    private int mSurfaceHeight;
    private int mSurfaceWidth;

    public interface EGLConfigChooser {
        EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, OpenGLVersion openGLVersion);
    }

    public enum OpenGLVersion {
        OPEN_GL_ES_11,
        OPEN_GL_ES_20
    }

    private enum RenderSyncType {
        IN_SYNC,
        ON_BACK
    }

    public interface Renderer {
        void onDrawFrame();
    }

    public interface SurfaceStateCallback {
        void onSurfaceChanged(int i, int i2);

        void onSurfaceCreated();

        void onSurfaceDestroyed();
    }

    public static void logPerformance(String event) {
        CameraLogger.p("TraceLog", event);
    }

    public static void logGlEgl(String event) {
        Log.e("TraceLog", "[GL/EGL] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + event + "]");
    }

    private static final class DummyRenderer implements Renderer {
        private DummyRenderer() {
        }

        @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.Renderer
        public void onDrawFrame() {
        }
    }

    private static final class DummySurfaceStateListener implements SurfaceStateCallback {
        private DummySurfaceStateListener() {
        }

        @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
        public void onSurfaceCreated() {
        }

        @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
        public void onSurfaceChanged(int width, int height) {
        }

        @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.SurfaceStateCallback
        public void onSurfaceDestroyed() {
        }
    }

    public GLTextureView(Context context) {
        super(context);
        this.mDummyRenderer = new DummyRenderer();
        this.mRenderer = this.mDummyRenderer;
        this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mStateCallback = this.mDummyStateCallback;
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        setSurfaceTextureListener(this);
    }

    public GLTextureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDummyRenderer = new DummyRenderer();
        this.mRenderer = this.mDummyRenderer;
        this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mStateCallback = this.mDummyStateCallback;
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        setSurfaceTextureListener(this);
    }

    public GLTextureView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDummyRenderer = new DummyRenderer();
        this.mRenderer = this.mDummyRenderer;
        this.mDummyStateCallback = new DummySurfaceStateListener();
        this.mStateCallback = this.mDummyStateCallback;
        this.mOpenGlVersion = OpenGLVersion.OPEN_GL_ES_20;
        this.mEglConfigChooser = new EGLConfigChooser_RGBA8888D16S8();
        this.mRenderSyncType = RenderSyncType.ON_BACK;
        this.mEglCon = null;
        this.mGlLock = new Object();
        this.mBackgroundThread = null;
        this.mIsAlreadyInitialized = false;
        this.mIsAlreadyDestroyed = false;
        this.mIsSleep = false;
        this.mIsRenderRequested = false;
        this.mIsAlreadyScreenCleared = false;
        this.mActionQueue = new ConcurrentLinkedQueue();
        this.mSurfaceWidth = 0;
        this.mSurfaceHeight = 0;
        setSurfaceTextureListener(this);
    }

    public void onResume() {
        this.mActionQueue.clear();
        this.mIsSleep = false;
    }

    public boolean isReady() {
        return !this.mIsSleep;
    }

    public void recoverEglContext() {
        this.mEglCon.enable();
    }

    public void onPause() {
        this.mIsSleep = true;
        this.mIsAlreadyScreenCleared = false;
    }

    public void setRenderer(Renderer renderer) {
        synchronized (this.mGlLock) {
            if (renderer != null) {
                this.mRenderer = renderer;
            } else {
                this.mRenderer = this.mDummyRenderer;
            }
        }
    }

    public void setSurfaceStateCallback(SurfaceStateCallback callback) {
        synchronized (this.mGlLock) {
            if (callback != null) {
                this.mStateCallback = callback;
            } else {
                this.mStateCallback = this.mDummyStateCallback;
            }
        }
    }

    public void requestRender() {
        synchronized (this.mGlLock) {
            switch (this.mRenderSyncType) {
                case IN_SYNC:
                    if (!this.mIsAlreadyInitialized) {
                        throw new UnsupportedOperationException("GLTextureView not initialized");
                    }
                    this.mEglCon.enable();
                    this.mRenderer.onDrawFrame();
                    this.mEglCon.onDrawFrameFinished();
                    this.mEglCon.disable();
                    break;
                case ON_BACK:
                    this.mIsRenderRequested = true;
                    this.mGlLock.notify();
                    break;
            }
        }
    }

    public void requestAction(Runnable task) {
        synchronized (this.mGlLock) {
            switch (this.mRenderSyncType) {
                case IN_SYNC:
                    if (!this.mIsAlreadyInitialized) {
                        throw new UnsupportedOperationException("GLTextureView not initialized");
                    }
                    this.mEglCon.enable();
                    task.run();
                    this.mEglCon.disable();
                    break;
                case ON_BACK:
                    this.mActionQueue.offer(task);
                    this.mGlLock.notify();
                    break;
            }
        }
    }

    public void requestSyncAction(Runnable task) {
        synchronized (this.mGlLock) {
            if (!this.mIsAlreadyInitialized) {
                throw new UnsupportedOperationException("GLTextureView not initialized");
            }
            this.mEglCon.enable();
            task.run();
            this.mEglCon.disable();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
        if (width > 0 && height > 0) {
            synchronized (this.mGlLock) {
                this.mSurfaceWidth = width;
                this.mSurfaceHeight = height;
                if (!this.mIsAlreadyInitialized) {
                    this.mEglCon = new EGLController();
                    this.mEglCon.initialize(this.mEglConfigChooser, this.mOpenGlVersion);
                    this.mEglCon.onSurfaceTextureChanged(surface);
                    if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                        this.mEglCon.enable();
                        this.mStateCallback.onSurfaceCreated();
                        this.mStateCallback.onSurfaceChanged(this.mSurfaceWidth, this.mSurfaceHeight);
                        this.mEglCon.disable();
                    }
                } else {
                    this.mEglCon.onSurfaceTextureChanged(surface);
                    if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                        this.mEglCon.enable();
                        this.mStateCallback.onSurfaceChanged(width, height);
                        this.mEglCon.disable();
                    }
                }
                this.mIsAlreadyInitialized = true;
                this.mIsAlreadyDestroyed = false;
            }
            if (this.mRenderSyncType == RenderSyncType.ON_BACK) {
                this.mBackgroundThread = new BackgroundRenderingThread();
                this.mBackgroundThread.start();
            }
        }
    }

    public EGLContext getEGLContext() {
        return this.mEglCon.getEGLContext();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        if (width > 0 && height > 0) {
            synchronized (this.mGlLock) {
                this.mSurfaceWidth = width;
                this.mSurfaceHeight = height;
                this.mEglCon.onSurfaceTextureChanged(surface);
                if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                    this.mEglCon.enable();
                    this.mStateCallback.onSurfaceChanged(this.mSurfaceWidth, this.mSurfaceHeight);
                    this.mEglCon.disable();
                }
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        synchronized (this.mGlLock) {
            this.mIsAlreadyInitialized = false;
            this.mIsAlreadyDestroyed = true;
            this.mGlLock.notify();
        }
        try {
            synchronized (this.mGlLock) {
                if (this.mRenderSyncType == RenderSyncType.IN_SYNC) {
                    this.mEglCon.enable();
                    this.mStateCallback.onSurfaceDestroyed();
                    this.mEglCon.disable();
                }
            }
            if (this.mBackgroundThread != null) {
                try {
                    this.mBackgroundThread.join();
                } catch (Exception e) {
                    CameraLogger.e(TAG, "Fail to join.", e);
                }
            }
            synchronized (this.mGlLock) {
                this.mEglCon.release();
            }
            this.mSurfaceWidth = 0;
            this.mSurfaceHeight = 0;
            return true;
        } catch (Throwable th) {
            synchronized (this.mGlLock) {
                this.mEglCon.release();
                throw th;
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }

    private class BackgroundRenderingThread extends Thread {
        private int mLocalHeight;
        private int mLocalWidth;

        private BackgroundRenderingThread() {
            this.mLocalWidth = 0;
            this.mLocalHeight = 0;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Runnable task;
            setName("GL-RenderingThread");
            GLTextureView.this.mEglCon.enable();
            GLTextureView.this.mStateCallback.onSurfaceCreated();
            GLTextureView.this.mEglCon.disable();
            while (true) {
                if (GLTextureView.this.mIsAlreadyDestroyed && GLTextureView.this.mActionQueue.isEmpty()) {
                    break;
                }
                if (!GLTextureView.this.mIsSleep || !GLTextureView.this.mActionQueue.isEmpty()) {
                    synchronized (GLTextureView.this.mGlLock) {
                        GLTextureView.this.mEglCon.enable();
                        if (this.mLocalWidth != GLTextureView.this.mSurfaceWidth || this.mLocalHeight != GLTextureView.this.mSurfaceHeight) {
                            this.mLocalWidth = GLTextureView.this.mSurfaceWidth;
                            this.mLocalHeight = GLTextureView.this.mSurfaceHeight;
                            GLTextureView.this.mStateCallback.onSurfaceChanged(this.mLocalWidth, this.mLocalHeight);
                        }
                        if (GLTextureView.this.mIsRenderRequested) {
                            GLTextureView.this.mRenderer.onDrawFrame();
                            GLTextureView.this.mIsRenderRequested = false;
                            GLES20.glFlush();
                            GLES20.glFinish();
                            GLTextureView.this.mEglCon.onDrawFrameFinished();
                        }
                        if (!GLTextureView.this.mActionQueue.isEmpty() && (task = (Runnable) GLTextureView.this.mActionQueue.poll()) != null) {
                            task.run();
                        }
                        GLTextureView.this.mEglCon.disable();
                        if (GLTextureView.this.mActionQueue.isEmpty() && !GLTextureView.this.mIsRenderRequested && !GLTextureView.this.mIsAlreadyDestroyed) {
                            try {
                                GLTextureView.this.mGlLock.wait(1000L);
                            } catch (InterruptedException e) {
                                CameraLogger.e(GLTextureView.TAG, "Fail to wait.", e);
                            }
                        }
                    }
                } else {
                    synchronized (GLTextureView.this.mGlLock) {
                        GLTextureView.this.mEglCon.enable();
                        GLTextureView.this.clearAll();
                        GLTextureView.this.mEglCon.onDrawFrameFinished();
                        GLTextureView.this.mEglCon.disable();
                    }
                    try {
                        Thread.sleep(100L);
                    } catch (Exception e2) {
                        CameraLogger.e(GLTextureView.TAG, "Fail to sleep.", e2);
                    }
                }
            }
            if (!GLTextureView.this.mIsAlreadyScreenCleared) {
                synchronized (GLTextureView.this.mGlLock) {
                    GLTextureView.this.mEglCon.enable();
                    GLTextureView.this.mStateCallback.onSurfaceDestroyed();
                    GLTextureView.this.mEglCon.disable();
                }
            }
        }
    }

    protected void clearAll() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(17664);
    }
}
