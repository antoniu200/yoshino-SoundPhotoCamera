package com.sonyericsson.cameracommon.contentsview;

import android.view.View;
import android.view.animation.Animation;
import android.widget.ProgressBar;
import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public class PreloadThumbnail implements Animation.AnimationListener {
    public static final String TAG = "PreloadThumbnail";
    private final ContentsViewController mContentsViewController;
    private boolean mIsAnimationEnd;
    private boolean mIsContentCreated;
    private Animation mNextAnimation;
    private int mRequestId;
    private final View mThumbnail;

    public PreloadThumbnail(ContentsViewController contentsViewController, View view) {
        if (contentsViewController == null) {
            throw new IllegalArgumentException("contentsViewController should not be null.");
        }
        if (view == null) {
            throw new IllegalArgumentException("Thumbnail view should not be null.");
        }
        this.mContentsViewController = contentsViewController;
        this.mThumbnail = view;
    }

    public View getThumbnailView() {
        return this.mThumbnail;
    }

    public void setRequestId(int requestId) {
        this.mRequestId = requestId;
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    public void prepareAnimation() {
        this.mIsContentCreated = false;
        this.mIsAnimationEnd = true;
    }

    public void enableClick() {
        if (this.mThumbnail != null && this.mThumbnail.findViewById(R.id.content_progress_bar) != null) {
            this.mThumbnail.findViewById(R.id.content_progress_bar).setClickable(true);
        }
    }

    public void disableClick() {
        if (this.mThumbnail != null && this.mThumbnail.findViewById(R.id.content_progress_bar) != null) {
            this.mThumbnail.findViewById(R.id.content_progress_bar).setClickable(false);
        }
    }

    public void onContentCreated() {
        this.mIsContentCreated = true;
        if (this.mIsAnimationEnd) {
            this.mContentsViewController.removeEarlyThumbnailView();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.mIsAnimationEnd = true;
        if (this.mIsContentCreated) {
            this.mContentsViewController.removeEarlyThumbnailView();
        } else if (this.mThumbnail != null) {
            ProgressBar progressBar = (ProgressBar) this.mThumbnail.findViewById(R.id.content_progress_bar);
            progressBar.setVisibility(0);
        }
        if (this.mNextAnimation != null) {
            this.mContentsViewController.startHideAnimation(this.mNextAnimation);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.mIsAnimationEnd = false;
    }

    public void setNextAnimation(Animation animation) {
        this.mNextAnimation = animation;
    }

    public boolean isAnimationEnd() {
        return this.mIsAnimationEnd;
    }
}