package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonymobile.cameracommon.media.utility.ReferenceClock;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class TextureContextView extends TextureView implements TextureView.SurfaceTextureListener, CaptureFeedback {
    private static final long DRAW_INTERVAL_MILLIS = 33;
    public static final String TAG = "TextureContextView";
    private CaptureFeedbackAnimation mAnimation;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private final AnimationCanvas mCanvas;
    private final ScheduledExecutorService mExecutor;
    private boolean mIsAnimationRequested;
    private ScheduledFuture<?> mScheduledFuture;
    private final SetInvisibleTask mSetInvisibleTask;

    public TextureContextView(Context context) {
        super(context);
        this.mSetInvisibleTask = new SetInvisibleTask();
        this.mCanvas = new AnimationCanvas();
        setSurfaceTextureListener(this);
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        this.mExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactoryImpl());
    }

    private static class ThreadFactoryImpl implements ThreadFactory {
        private ThreadFactoryImpl() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(10);
            return thread;
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture arg0, int arg1, int arg2) {
        if (this.mIsAnimationRequested) {
            this.mIsAnimationRequested = false;
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new DrawFrameTask(), 0L, DRAW_INTERVAL_MILLIS, TimeUnit.MILLISECONDS);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture arg0) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture arg0, int arg1, int arg2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture arg0) {
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void start(CaptureFeedbackAnimation animation) {
        this.mAnimation = animation;
        this.mAnimationElapsedTimeCount.start();
        setVisibility(0);
        if (isAvailable()) {
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new DrawFrameTask(), 0L, DRAW_INTERVAL_MILLIS, TimeUnit.MILLISECONDS);
        } else {
            this.mIsAnimationRequested = true;
        }
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void release() {
    }

    private class DrawFrameTask implements Runnable {
        private DrawFrameTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TextureContextView.this.mCanvas.lock()) {
                TextureContextView.this.mCanvas.clear();
                CaptureFeedbackAnimation animation = TextureContextView.this.mAnimation;
                boolean isAnimationFinished = animation == null || !animation.draw(TextureContextView.this.mCanvas, TextureContextView.this.mAnimationElapsedTimeCount.elapsedTimeMillis());
                TextureContextView.this.mCanvas.unlock();
                if (isAnimationFinished) {
                    TextureContextView.this.mAnimationElapsedTimeCount.stop();
                    TextureContextView.this.post(TextureContextView.this.mSetInvisibleTask);
                }
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void onResume() {
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void onPause() {
    }

    private class SetInvisibleTask implements Runnable {
        private SetInvisibleTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextureContextView.this.setVisibility(4);
            TextureContextView.this.mScheduledFuture.cancel(true);
        }
    }

    private class AnimationCanvas implements CaptureFeedbackAnimationCanvas {
        private Canvas mCanvas;

        private AnimationCanvas() {
            this.mCanvas = null;
        }

        public boolean lock() {
            this.mCanvas = TextureContextView.this.lockCanvas();
            return this.mCanvas != null;
        }

        public void unlock() {
            if (this.mCanvas != null) {
                TextureContextView.this.unlockCanvasAndPost(this.mCanvas);
            }
        }

        public void clear() {
            if (this.mCanvas != null) {
                this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            }
        }

        @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas
        public void drawColor(float alpha, float red, float green, float blue) {
            if (this.mCanvas != null) {
                this.mCanvas.drawColor(Color.argb((int) (255.0f * alpha), (int) (255.0f * red), (int) (255.0f * green), (int) (255.0f * blue)), PorterDuff.Mode.SRC_OVER);
            }
        }
    }
}