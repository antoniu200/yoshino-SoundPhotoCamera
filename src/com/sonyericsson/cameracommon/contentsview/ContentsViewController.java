package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.res.Resources;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ContentLoader;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.IncrementalId;
import java.util.List;

/* loaded from: classes.dex */
public class ContentsViewController implements StorageController.StorageListener, ContentLoader.ContentCreationCallback {
    public static final int MAX_CONTENT_NUMBER = 1;
    public static final String TAG = "ContentsViewController";
    private Activity mActivity;
    private final ContentsContainer mContentContainer;
    private ContentCreatedListener mContentCreatedListener;
    private ContentLoader mContentLoader;
    private boolean mIsCoreCamera;
    private int mOrientation;
    private int mProgressRequestId;
    private CameraStorageManager mStorageManager;
    private PreloadThumbnail mThumbnail;
    private ContentPallet.ThumbnailClickListener mThumbnailClickListener;
    private boolean mClickable = true;
    private ClickListener mClickListener = null;
    private OnClickThumbnailProgressListener mClickThumbnailProgressListener = null;
    private final IncrementalId mRequestIdGenerator = new IncrementalId();

    public interface ContentCreatedListener {
        void onContentCreated();
    }

    public interface OnClickThumbnailProgressListener {
        void onClickThumbnailProgress();
    }

    public void requestLayout() {
        this.mContentContainer.requestLayout();
    }

    public ContentsViewController(Activity activity, CameraStorageManager storageManager, ContentPallet.ThumbnailClickListener receiver) {
        this.mThumbnailClickListener = null;
        this.mIsCoreCamera = false;
        this.mActivity = activity;
        this.mContentLoader = new ContentLoader(activity, this, 1);
        this.mContentContainer = (ContentsContainer) activity.findViewById(R.id.contents_container);
        this.mStorageManager = storageManager;
        this.mThumbnailClickListener = receiver;
        this.mIsCoreCamera = CommonUtility.isCoreCameraApp(activity);
    }

    public void resume() {
        if (this.mContentLoader != null) {
            this.mContentLoader.resume();
        }
    }

    public void pause() {
        if (this.mContentLoader != null) {
            this.mContentLoader.pause();
        }
    }

    public void release() {
        this.mContentLoader.clearLocalCacheBackup();
        this.mContentLoader.release();
        this.mContentLoader = null;
        this.mStorageManager.removeStorageListener(this);
        this.mThumbnail = null;
        this.mActivity = null;
    }

    public int createContentFrame() {
        int requestId = createClearContentFrame();
        showProgress(requestId);
        return requestId;
    }

    public int createClearContentFrame() {
        ContentPallet pallet;
        int requestId = -1;
        if (this.mActivity == null) {
            CameraLogger.w(TAG, "Activity has already been released at createClearContentFrame.");
        } else {
            LayoutInflater inflater = this.mActivity.getLayoutInflater();
            if (inflater == null) {
                CameraLogger.w(TAG, "could not get inflater.");
            } else {
                requestId = this.mRequestIdGenerator.getNext();
                if (this.mIsCoreCamera) {
                    pallet = (ContentPallet) inflater.inflate(R.layout.content_pallet_core_camera, (ViewGroup) null);
                } else {
                    pallet = (ContentPallet) inflater.inflate(R.layout.content_pallet, (ViewGroup) null);
                }
                pallet.initialize(requestId, this.mThumbnailClickListener);
                if (!this.mClickable) {
                    pallet.disableClick();
                }
                if (this.mContentContainer.getChildCount() >= 1) {
                    this.mContentContainer.removeViewAt(0);
                }
                this.mContentContainer.addView(pallet);
                this.mContentContainer.setSensorOrientation(this.mOrientation);
            }
        }
        return requestId;
    }

    public void addContent(int requestId, Uri uri) {
        if (this.mContentLoader != null) {
            this.mContentLoader.request(requestId, uri);
        }
    }

    public void reload() {
        if (this.mContentLoader != null) {
            List<String> list = this.mStorageManager.getReadableStoragePaths();
            if (list.size() > 0) {
                this.mContentLoader.reload(1, list);
            }
        }
        this.mStorageManager.addStorageListener(this);
    }

    public void remove() {
        this.mContentContainer.removeAllViews();
    }

    public void show() {
        this.mContentContainer.setVisibility(0);
        this.mContentContainer.cancelRequestHide();
    }

    public void hide() {
        this.mContentContainer.setVisibility(4);
    }

    public void hideThumbnail() {
        if (this.mThumbnail == null) {
            this.mContentContainer.hide();
        }
    }

    public void setSensorOrientation(int orientation) {
        this.mContentContainer.setSensorOrientation(orientation);
        this.mOrientation = orientation;
    }

    public void startHideAnimation(Animation animation) {
        if (this.mThumbnail != null && !this.mThumbnail.isAnimationEnd()) {
            this.mThumbnail.setNextAnimation(animation);
        } else {
            startAnimationInner(animation);
        }
    }

    public void startAnimation(Animation animation) {
        stopAnimation(false);
        startAnimationInner(animation);
    }

    private void startAnimationInner(Animation animation) {
        if (animation != null) {
            animation.reset();
            this.mContentContainer.startAnimation(animation);
        }
    }

    public void stopAnimation(boolean notify) {
        Animation animation = this.mContentContainer.getAnimation();
        if (animation != null) {
            if (!notify) {
                animation.setAnimationListener(null);
            }
            animation.cancel();
            this.mContentContainer.setAnimation(null);
        }
    }

    private ContentPallet searchPallet(int requestId) {
        for (int index = 0; index < this.mContentContainer.getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) this.mContentContainer.getChildAt(index);
            if (requestId == pallet.getRequestId()) {
                return pallet;
            }
        }
        return null;
    }

    public boolean isLoading() {
        for (int index = 0; index < this.mContentContainer.getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) this.mContentContainer.getChildAt(index);
            if (!pallet.hasContent()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentLoader.ContentCreationCallback
    public void onContentCreated(int requestId, Content content) {
        if (this.mActivity == null) {
            CameraLogger.w(TAG, "Activity has already been released.");
            return;
        }
        if (requestId == -1 && !isLoading()) {
            requestId = createClearContentFrame();
        }
        ContentPallet pallet = searchPallet(requestId);
        if (pallet != null) {
            pallet.set(content);
            if (this.mThumbnail != null) {
                this.mThumbnail.onContentCreated();
            }
        }
        if (this.mProgressRequestId == requestId && this.mContentCreatedListener != null) {
            this.mContentCreatedListener.onContentCreated();
        }
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentLoader.ContentCreationCallback
    public void onNoContentLoaded() {
        remove();
    }

    public void clearContents() {
        this.mContentLoader.pause();
        this.mContentContainer.removeAllViews();
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onStorageStateChanged(StorageUtil.CameraStorageType storage) {
        if (!this.mStorageManager.isReadable()) {
            clearContents();
        }
        if (!isLoading()) {
            reload();
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onDestinationToSaveChanged() {
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onAvailableSizeUpdated(long available) {
    }

    public void addContentOverlayView(int requestId, View view) {
        ViewGroup parent = (ViewGroup) view.getParent();
        if (parent != null) {
            parent.removeView(view);
        }
        ContentPallet pallet = searchPallet(requestId);
        if (pallet != null) {
            pallet.addView(view);
        }
    }

    public void addContentOverlayView(int requestId, View view, RelativeLayout.LayoutParams params) {
        ContentPallet pallet = searchPallet(requestId);
        if (pallet != null) {
            pallet.addView(view, params);
        }
    }

    public void removeContentOverlayView(int requestId, View view) {
        View progressBar = view.findViewById(R.id.content_progress_bar);
        if (progressBar != null) {
            setClickThumbnailProgressListener(null);
            progressBar.setOnClickListener(null);
        }
        ContentPallet pallet = searchPallet(requestId);
        if (pallet != null) {
            pallet.removeView(view);
            View progress = pallet.findViewById(R.id.content_progress_bar);
            if (progress != null) {
                progress.setVisibility(4);
                progress.setOnClickListener(null);
            }
        }
    }

    public void showProgress(int requestId) {
        View progress;
        this.mProgressRequestId = requestId;
        ContentPallet pallet = searchPallet(requestId);
        if (pallet != null && (progress = pallet.findViewById(R.id.content_progress_bar)) != null) {
            progress.setVisibility(0);
            progress.setOnClickListener(this.mClickListener);
        }
    }

    public void enableClick() {
        this.mContentContainer.enableClick();
        this.mClickable = true;
    }

    public void disableClick() {
        this.mContentContainer.disableClick();
        this.mClickable = false;
    }

    public void setEarlyThumbnailView(View view) {
        this.mThumbnail = new PreloadThumbnail(this, view);
        view.findViewById(R.id.content_progress_bar).setOnClickListener(this.mClickListener);
    }

    public void removeEarlyThumbnailView() {
        if (this.mThumbnail != null) {
            removeContentOverlayView(this.mThumbnail.getRequestId(), this.mThumbnail.getThumbnailView());
            this.mThumbnail = null;
        }
    }

    public void startInsertAnimation(int requestId) throws Resources.NotFoundException {
        startInsertAnimation(requestId, this.mThumbnail);
    }

    public void startInsertAnimation(int requestId, Animation.AnimationListener listener) throws Resources.NotFoundException {
        if (this.mThumbnail != null) {
            this.mThumbnail.setRequestId(requestId);
            this.mThumbnail.prepareAnimation();
            addContentOverlayView(requestId, this.mThumbnail.getThumbnailView());
            Animation animation = AnimationUtils.loadAnimation(this.mActivity, R.anim.early_thumbnail_insert);
            animation.setAnimationListener(listener);
            startAnimation(animation);
        }
    }

    public void setClickThumbnailProgressListener(OnClickThumbnailProgressListener listener) {
        this.mClickThumbnailProgressListener = listener;
        if (listener == null) {
            this.mClickListener = null;
        } else {
            this.mClickListener = new ClickListener();
        }
    }

    private class ClickListener implements View.OnClickListener {
        private ClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ContentsViewController.this.mClickThumbnailProgressListener != null && view != null && view.getId() == R.id.content_progress_bar) {
                ContentsViewController.this.mClickThumbnailProgressListener.onClickThumbnailProgress();
            }
        }
    }

    public void removeContentInfo() {
        this.mContentLoader.removeTopContent();
    }

    public void setContentCreatedListener(ContentCreatedListener cb) {
        this.mContentCreatedListener = cb;
    }

    public List<Content.ContentInfo> getLocalContentInfo() {
        return this.mContentLoader.getLocalCache();
    }

    public void reconstructLocalCache() {
        this.mContentLoader.loadLocalCache();
        this.mContentLoader.clearLocalCacheBackup();
        this.mContentLoader.removeInvalidLocalCache();
    }

    public void removeInvalidLocalCache() {
        this.mContentLoader.removeInvalidLocalCache();
    }

    public void saveLocalCache() {
        this.mContentLoader.saveLocalCache();
    }

    public Content getCurrentContent() {
        if (this.mContentContainer == null || this.mContentContainer.getChildCount() == 0) {
            CameraLogger.w(TAG, "getCurrentContent() mContentContainer has no content.");
            return null;
        }
        ContentPallet pallet = (ContentPallet) this.mContentContainer.getChildAt(0);
        if (pallet == null) {
            CameraLogger.w(TAG, "getCurrentContent() pallet(0) is null.");
            return null;
        }
        return pallet.getContent();
    }

    public int getCurrentRequestId() {
        if (this.mContentContainer == null || this.mContentContainer.getChildCount() == 0) {
            CameraLogger.w(TAG, "getCurrentRequestId() mContentContainer has no content.");
            return -1;
        }
        ContentPallet pallet = (ContentPallet) this.mContentContainer.getChildAt(0);
        if (pallet == null) {
            CameraLogger.w(TAG, "getCurrentRequestId() pallet(0) is null.");
            return -1;
        }
        return pallet.getRequestId();
    }
}