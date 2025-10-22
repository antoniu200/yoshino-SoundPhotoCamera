package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class ViewButton extends ReviewMenuButton {
    public static final String TAG = "ViewButton";

    public ViewButton(Context context) {
        super(context);
    }

    public ViewButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ViewButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewMenuButton
    public RotatableDialog select() {
        try {
            AutoReviewWindow.launchAlbum((Activity) getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
            return null;
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "launchAlbum: failed.", e);
            return null;
        }
    }
}