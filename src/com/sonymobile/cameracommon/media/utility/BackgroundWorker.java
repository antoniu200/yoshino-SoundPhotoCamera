package com.sonymobile.cameracommon.media.utility;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class BackgroundWorker {
    private static final int SHUTDOWN_TIMEOUT_MILLISECONDS = 2000;
    private final ExecutorService mExecutor;
    private final Handler mHandler;
    private Looper mLooper = null;

    public BackgroundWorker(String name) {
        final CountDownLatch readySignal = new CountDownLatch(1);
        this.mExecutor = Executors.newSingleThreadExecutor();
        this.mExecutor.execute(new Runnable() { // from class: com.sonymobile.cameracommon.media.utility.BackgroundWorker.1
            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                BackgroundWorker.this.mLooper = Looper.myLooper();
                readySignal.countDown();
                Looper.loop();
            }
        });
        try {
            readySignal.await();
        } catch (InterruptedException e) {
        }
        this.mHandler = new Handler(this.mLooper);
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    public void quit() {
        this.mLooper.quitSafely();
        this.mExecutor.shutdown();
        try {
            this.mExecutor.awaitTermination(2000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
        }
    }
}
