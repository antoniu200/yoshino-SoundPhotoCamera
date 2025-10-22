package com.sonymobile.cameracommon.gltextureview;

import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.view.Surface;
import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes.dex */
public class EGLController {
    public static final String TAG = "EGLController";
    private final Object mEglLock = new Object();
    private EGL10 mEgl = null;
    private EGLResources mSystemEglRes = null;
    private EGLResources mThisEglRes = null;

    private static class EGLResources {
        public EGLConfig eglConfig;
        public EGLContext eglContext;
        public EGLDisplay eglDisplay;
        public EGLSurface eglDrawSurface;
        public EGLSurface eglReadSurface;

        private EGLResources() {
            this.eglDisplay = null;
            this.eglReadSurface = null;
            this.eglDrawSurface = null;
            this.eglContext = null;
            this.eglConfig = null;
        }

        public boolean isValid() {
            return (this.eglDisplay == null || this.eglDrawSurface == null || this.eglContext == null || this.eglConfig == null) ? false : true;
        }

        public void release() {
            this.eglDisplay = null;
            this.eglReadSurface = null;
            this.eglDrawSurface = null;
            this.eglContext = null;
            this.eglConfig = null;
        }
    }

    public EGLContext getEGLContext() {
        return this.mThisEglRes.eglContext;
    }

    public void initialize(GLTextureView.EGLConfigChooser chooser, GLTextureView.OpenGLVersion version) {
        initialize(chooser, version, EGL10.EGL_NO_CONTEXT);
    }

    public void initialize(GLTextureView.EGLConfigChooser chooser, GLTextureView.OpenGLVersion version, EGLContext eglContext) {
        synchronized (this.mEglLock) {
            if (this.mEgl != null) {
                throw new IllegalStateException("EGL already initialized.");
            }
            this.mEgl = (EGL10) EGLContext.getEGL();
            this.mSystemEglRes = new EGLResources();
            this.mSystemEglRes.eglDisplay = this.mEgl.eglGetCurrentDisplay();
            this.mSystemEglRes.eglReadSurface = this.mEgl.eglGetCurrentSurface(12378);
            this.mSystemEglRes.eglDrawSurface = this.mEgl.eglGetCurrentSurface(12377);
            this.mSystemEglRes.eglContext = this.mEgl.eglGetCurrentContext();
            this.mThisEglRes = new EGLResources();
            this.mThisEglRes.eglDisplay = this.mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.mThisEglRes.eglDisplay == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("EGL_NO_DISPLAY");
            }
            int[] versionMajorMinor = new int[2];
            if (!this.mEgl.eglInitialize(this.mThisEglRes.eglDisplay, versionMajorMinor)) {
                throw new RuntimeException("Failed to eglInitialize()");
            }
            this.mThisEglRes.eglConfig = chooser.chooseConfig(this.mEgl, this.mThisEglRes.eglDisplay, version);
            if (this.mThisEglRes.eglConfig == null) {
                throw new RuntimeException("Failed to chooseConfig()");
            }
            int[] contextAttributes = null;
            switch (version) {
                case OPEN_GL_ES_20:
                    contextAttributes = new int[]{12440, 2, 12344};
                    break;
            }
            this.mThisEglRes.eglContext = this.mEgl.eglCreateContext(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, eglContext, contextAttributes);
            if (this.mThisEglRes.eglContext == EGL10.EGL_NO_CONTEXT) {
                throw new RuntimeException("Failed to eglCreateContext()");
            }
        }
    }

    public void onSurfaceTextureChanged(SurfaceTexture surfaceTexture) {
        synchronized (this.mEglLock) {
            if (this.mThisEglRes.eglDrawSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
            }
            EGLSurface surface = this.mEgl.eglCreateWindowSurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, surfaceTexture, null);
            if (surface == EGL10.EGL_NO_SURFACE) {
                throw new RuntimeException("Failed to eglCreateWindowSurface()");
            }
            this.mThisEglRes.eglDrawSurface = surface;
        }
    }

    public void onSurfaceTextureChanged(Surface surface) {
        synchronized (this.mEglLock) {
            if (this.mThisEglRes.eglDrawSurface != null) {
                this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
            }
            EGLSurface eglSurface = this.mEgl.eglCreateWindowSurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglConfig, surface, null);
            this.mThisEglRes.eglDrawSurface = eglSurface;
        }
    }

    public boolean isValid() {
        return this.mThisEglRes.isValid();
    }

    public void release() {
        synchronized (this.mEglLock) {
            if (this.mEgl != null) {
                this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                if (this.mThisEglRes.eglContext != null) {
                    this.mEgl.eglDestroyContext(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglContext);
                }
                if (this.mThisEglRes.eglReadSurface != null) {
                    this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglReadSurface);
                }
                if (this.mThisEglRes.eglDrawSurface != null) {
                    this.mEgl.eglDestroySurface(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
                }
                this.mThisEglRes.release();
                this.mThisEglRes = null;
                this.mSystemEglRes.release();
                this.mSystemEglRes = null;
                this.mEgl = null;
            }
        }
    }

    public void enable() {
        synchronized (this.mEglLock) {
            this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface, this.mThisEglRes.eglDrawSurface, this.mThisEglRes.eglContext);
        }
    }

    private boolean isUiThread() {
        return Thread.currentThread().equals(Looper.getMainLooper().getThread());
    }

    public void disable() {
        synchronized (this.mEglLock) {
            if (isUiThread()) {
                this.mEgl.eglMakeCurrent(this.mSystemEglRes.eglDisplay, this.mSystemEglRes.eglDrawSurface, this.mSystemEglRes.eglReadSurface, this.mSystemEglRes.eglContext);
            } else {
                this.mEgl.eglMakeCurrent(this.mThisEglRes.eglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            }
        }
    }

    public boolean onDrawFrameFinished() {
        boolean zEglSwapBuffers;
        synchronized (this.mEglLock) {
            zEglSwapBuffers = this.mEgl.eglSwapBuffers(this.mThisEglRes.eglDisplay, this.mThisEglRes.eglDrawSurface);
        }
        return zEglSwapBuffers;
    }
}