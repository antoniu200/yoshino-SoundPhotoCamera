package com.sonymobile.android.addoncamera.soundphoto.contents;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class BackgroundTaskRunner {
    private static final String TAG = BackgroundTaskRunner.class.getSimpleName();
    private final ExecutorService mExecutor;
    private final Object mLock = new Object();
    private final List<BackgroundTaskContainer> mTaskList = new ArrayList();

    public interface BackgroundTask extends Runnable {
        void onCanceled();
    }

    private class BackgroundTaskContainer implements Runnable {
        private boolean mIsCanceled = false;
        private final BackgroundTask mTask;

        BackgroundTaskContainer(BackgroundTask task) {
            this.mTask = task;
        }

        public void cancel() {
            this.mIsCanceled = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean canceled;
            synchronized (BackgroundTaskRunner.this.mLock) {
                canceled = this.mIsCanceled;
                if (!BackgroundTaskRunner.this.mTaskList.remove(this)) {
                }
            }
            if (canceled) {
                this.mTask.onCanceled();
            } else {
                this.mTask.run();
            }
        }
    }

    public BackgroundTaskRunner(ExecutorService executor) {
        this.mExecutor = executor;
    }

    public void put(BackgroundTask task) {
        synchronized (this.mLock) {
            BackgroundTaskContainer taskContainer = new BackgroundTaskContainer(task);
            this.mTaskList.add(taskContainer);
            this.mExecutor.execute(taskContainer);
        }
    }

    public int getTaskCount() {
        int size;
        synchronized (this.mLock) {
            size = this.mTaskList.size();
        }
        return size;
    }

    public void cancelAll() {
        synchronized (this.mLock) {
            for (BackgroundTaskContainer i : this.mTaskList) {
                i.cancel();
            }
        }
    }
}