package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtil;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;

/* loaded from: classes.dex */
public class DeleteButton extends ReviewMenuButton implements DialogInterface.OnClickListener {
    public DeleteButton(Context context) {
        super(context);
    }

    public DeleteButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public DeleteButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewMenuButton
    public RotatableDialog select() {
        return getMessagePopup().showOkAndCancel(R.string.cam_strings_file_delete_confirm_txt, -1, false, R.string.cam_strings_file_delete_confirm_title_txt, R.string.cam_strings_cancel_txt, this, null, null);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialog, int which) {
        ContentResolverUtil.executeDeteleTask(getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mHasMpo, this.mReviewScreen.getContentResolverUtilListener());
        this.mReviewScreen.backToViewFinder();
    }
}