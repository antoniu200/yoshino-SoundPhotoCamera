package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.cameracommon.contentsview.DataLoader;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.contentsview.contents.ContentFactory;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
public class ContentLoader {
    private static final int MAX_LOCAL_CACHE_NUM = 100;
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    public static final String TAG = "ContentLoader";
    private final ContentCreationCallback mContentCallback;
    private Context mContext;
    private DataLoader.DataLoadCallback mDataCallback;
    private LinkedBlockingDeque<Future<Integer>> mDataLoaderQueue;
    private DataLoaderHander mHandler;
    private boolean mIsPaused;
    private LinkedList<Content.ContentInfo> mLocalCacheBackup;
    private ExecutorService mExecutor = Executors.newSingleThreadExecutor();
    private LinkedList<Content.ContentInfo> mLocalCache = new LinkedList<>();

    interface ContentCreationCallback {
        void onContentCreated(int i, Content content);

        void onNoContentLoaded();
    }

    public ContentLoader(Context context, ContentCreationCallback callback, int maxContentNum) {
        this.mDataCallback = new DataCallback();
        this.mContext = context;
        this.mDataLoaderQueue = new LinkedBlockingDeque<>(maxContentNum);
        this.mContentCallback = callback;
        this.mHandler = new DataLoaderHander();
    }

    public void resume() {
        this.mIsPaused = false;
    }

    public void pause() {
        if (this.mDataLoaderQueue != null) {
            Iterator<Future<Integer>> it = this.mDataLoaderQueue.iterator();
            while (it.hasNext()) {
                Future<Integer> task = it.next();
                task.cancel(false);
            }
            this.mDataLoaderQueue.clear();
        }
        clearLocalCache();
        this.mIsPaused = true;
    }

    public void release() {
        clearLocalCache();
        this.mLocalCache = null;
        this.mDataCallback = null;
        this.mExecutor.shutdownNow();
        this.mExecutor = null;
        this.mDataLoaderQueue.clear();
        this.mDataLoaderQueue = null;
        this.mHandler.removeAllMessages();
    }

    public void request(int requestId, Uri uri) {
        DataLoader task = new DataLoader(requestId, uri, this.mContext, this.mDataCallback, true);
        loadData(task);
    }

    public void reload(int number, List<String> destinations) {
        LinkedList<Content.ContentInfo> localCache = getLocalCache();
        if (localCache != null) {
            if (localCache.size() > 0) {
                Content.ContentInfo info = localCache.getFirst();
                Content content = ContentFactory.create(info);
                this.mContentCallback.onContentCreated(-1, content);
                return;
            }
            this.mContentCallback.onNoContentLoaded();
        }
    }

    private void loadData(DataLoader task) {
        Future<Integer> oldestTask;
        if (this.mDataLoaderQueue.remainingCapacity() <= 0 && (oldestTask = this.mDataLoaderQueue.pollFirst()) != null) {
            oldestTask.cancel(true);
        }
        Future<Integer> future = this.mExecutor.submit(task);
        this.mDataLoaderQueue.addLast(future);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFuture(int indexId) {
        if (this.mDataLoaderQueue != null) {
            Iterator<Future<Integer>> it = this.mDataLoaderQueue.iterator();
            while (it.hasNext()) {
                Future<Integer> future = it.next();
                if (future.isDone() && !future.isCancelled()) {
                    int id = 0;
                    try {
                        id = future.get().intValue();
                    } catch (InterruptedException e) {
                    } catch (ExecutionException e2) {
                    }
                    if (id == indexId) {
                        it.remove();
                    }
                }
            }
        }
    }

    private class DataLoaderHander extends Handler {
        private static final int NOTIFY_CONTENT_CREATED = 1;
        private static final int NOTIFY_NO_CONTENT_LOADED = 0;

        private DataLoaderHander() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    ContentLoader.this.mContentCallback.onNoContentLoaded();
                    break;
                case 1:
                    int requestId = msg.arg1;
                    Content content = (Content) msg.obj;
                    ContentLoader.this.removeFuture(content.getContentInfo().mId);
                    ContentLoader.this.mContentCallback.onContentCreated(requestId, content);
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyContentLoaded(int requestId, Content content) {
            Message msg = Message.obtain(this);
            if (content != null) {
                msg.what = 1;
                msg.obj = content;
            } else {
                msg.what = 0;
            }
            msg.arg1 = requestId;
            sendMessage(msg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeAllMessages() {
            removeMessages(1);
            removeMessages(0);
        }
    }

    private class DataCallback implements DataLoader.DataLoadCallback {
        private DataCallback() {
        }

        @Override // com.sonyericsson.cameracommon.contentsview.DataLoader.DataLoadCallback
        public void onDataLoaded(boolean result, Content.ContentInfo info, int requestId, boolean isRegister) {
            if (result) {
                Content content = ContentFactory.create(info);
                if (isRegister) {
                    ContentLoader.this.addLocalCache(info);
                }
                ContentLoader.this.mHandler.notifyContentLoaded(requestId, content);
                return;
            }
            CameraLogger.w(ContentLoader.TAG, "Loading data is failed.");
            ContentLoader.this.mHandler.notifyContentLoaded(requestId, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addLocalCache(Content.ContentInfo info) {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCacheBackup.addFirst(info);
            if (this.mLocalCacheBackup.size() > 100) {
                this.mLocalCacheBackup.removeLast();
            }
        }
        if (!this.mIsPaused) {
            this.mLocalCache.addFirst(info);
            if (this.mLocalCache.size() > 100) {
                this.mLocalCache.removeLast();
            }
        }
    }

    private void clearLocalCache() {
        if (this.mLocalCache != null) {
            this.mLocalCache.clear();
        }
    }

    public LinkedList<Content.ContentInfo> getLocalCache() {
        return this.mLocalCache;
    }

    public void removeTopContent() {
        if (this.mLocalCache != null && this.mLocalCache.size() > 0) {
            this.mLocalCache.removeFirst();
        }
    }

    public void saveLocalCache() {
        this.mLocalCacheBackup = new LinkedList<>(this.mLocalCache);
    }

    public void clearLocalCacheBackup() {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCacheBackup.clear();
            this.mLocalCacheBackup = null;
        }
    }

    public void loadLocalCache() {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCache.clear();
            this.mLocalCache = new LinkedList<>(this.mLocalCacheBackup);
        }
    }

    public void removeInvalidLocalCache() {
        Iterator<Content.ContentInfo> it = this.mLocalCache.iterator();
        while (it.hasNext()) {
            File file = new File(it.next().mOriginalPath);
            if (!file.exists()) {
                it.remove();
            }
        }
    }
}