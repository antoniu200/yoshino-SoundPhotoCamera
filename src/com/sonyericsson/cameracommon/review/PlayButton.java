package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/* loaded from: classes.dex */
public class PlayButton extends ReviewMenuButton {
    public PlayButton(Context context) {
        super(context);
    }

    public PlayButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public PlayButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewMenuButton
    public RotatableDialog select() {
        AutoReviewWindow.launchPlayer((Activity) getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
        return null;
    }
}