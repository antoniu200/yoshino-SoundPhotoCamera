package com.sonyericsson.cameracommon.contentsview.contents;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;

/* loaded from: classes.dex */
public class Content implements OptionOperating {
    public static final String TAG = "Content";
    protected String mCountText;
    private final int mExtraIconId;
    protected final ContentInfo mInfo;
    private final int mPlayableIconId;

    public enum ContentsType {
        NONE,
        PHOTO,
        VIDEO,
        BURST,
        PREDICTIVE_CAPTURE,
        TIME_SHIFT,
        TIME_SHIFT_VIDEO,
        TIME_SHIFT_VIDEO_120F,
        VIDEO_4K,
        SOUND_PHOTO,
        SUPER_SLOW_MOTION_VIDEO,
        SUPER_SLOW_SHOT_VIDEO,
        STANDARD_SLOW_MOTION_VIDEO,
        HIGH_FRAME_RATE_VIDEO
    }

    public static class ContentInfo {
        public int mBucketId;
        public ContentsType mContentType;
        public int mGroupedImage;
        public int mHeight;
        public int mId;
        public String mMimeType;
        public int mOrientation;
        public String mOriginalPath;
        public Uri mOriginalUri;
        public int mSomcType;
        public Bitmap mThumbnail;
        public int mType;
        public int mWidth;

        public ContentInfo getSnapShot() {
            ContentInfo dest = new ContentInfo();
            dest.mId = this.mId;
            dest.mType = this.mType;
            dest.mOriginalUri = this.mOriginalUri;
            dest.mOriginalPath = this.mOriginalPath;
            dest.mOrientation = this.mOrientation;
            dest.mWidth = this.mWidth;
            dest.mHeight = this.mHeight;
            dest.mMimeType = this.mMimeType != null ? this.mMimeType.toString() : null;
            dest.mGroupedImage = this.mGroupedImage;
            dest.mSomcType = this.mSomcType;
            dest.mBucketId = this.mBucketId;
            dest.mContentType = this.mContentType;
            dest.mThumbnail = this.mThumbnail;
            return dest;
        }
    }

    public Content(ContentInfo info, int extraIconId, int playIconId) {
        this.mInfo = info;
        this.mExtraIconId = extraIconId;
        this.mPlayableIconId = playIconId;
    }

    public ContentInfo getContentInfo() {
        return this.mInfo;
    }

    public boolean shouldShowPlayableIcon() {
        return this.mPlayableIconId != -1;
    }

    public boolean shouldShowExtraIcon() {
        return this.mExtraIconId != -1;
    }

    public int getExtraIconResourceId() {
        return this.mExtraIconId;
    }

    public int getPlayIconResourceId() {
        return this.mPlayableIconId;
    }

    public Bitmap getThumbnail() {
        return getContentInfo().getSnapShot().mThumbnail;
    }

    public String getCountText() {
        return this.mCountText;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating
    public void viewContent(Activity activity) {
        if (getThumbnail() != null) {
            ApplicationLauncher.launchAlbum(activity, this.mInfo.mMimeType, this.mInfo.mOriginalUri, this.mInfo.mBucketId, this.mInfo.mSomcType);
        } else {
            ApplicationLauncher.launchAlbum(activity, this.mInfo.mMimeType, this.mInfo.mOriginalUri, this.mInfo.mBucketId, this.mInfo.mSomcType, false);
        }
    }
}