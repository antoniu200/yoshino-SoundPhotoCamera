package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class EditButton extends ReviewMenuButton {
    public static final String TAG = "EditButton";

    public EditButton(Context context) {
        super(context);
    }

    public EditButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public EditButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewMenuButton
    public RotatableDialog select() {
        try {
            AutoReviewWindow.launchEditor((Activity) getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
            return null;
        } catch (ActivityNotFoundException e) {
            CameraLogger.e(TAG, "launchEditor: failed.", e);
            return null;
        }
    }
}