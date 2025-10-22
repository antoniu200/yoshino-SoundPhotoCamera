package com.sonyericsson.cameracommon.review;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.List;

/* loaded from: classes.dex */
public class ShareButton extends ReviewMenuButton implements DialogInterface.OnClickListener {
    public static final String TAG = "ShareButton";
    private Intent mShareIntent;
    private List<ResolveInfo> mShareResolveInfoList;

    public ShareButton(Context context) {
        super(context);
    }

    public ShareButton(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ShareButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewMenuButton
    public RotatableDialog select() {
        this.mShareResolveInfoList = getShareResolveInfoList(getContext(), this.mReviewScreen.mUri, this.mReviewScreen.mMime);
        if (this.mShareResolveInfoList == null) {
            CameraLogger.e(TAG, "No activity found.");
            return null;
        }
        ListAdapter adapter = new ShareListAdapter(getContext(), this.mShareResolveInfoList);
        if (adapter.getCount() >= 1) {
            return getMessagePopup().showShareSelection(this, null, adapter);
        }
        return null;
    }

    private List<ResolveInfo> getShareResolveInfoList(Context context, Uri uri, String mime) {
        this.mShareIntent = new Intent();
        this.mShareIntent.setAction("android.intent.action.SEND");
        this.mShareIntent.putExtra("android.intent.extra.STREAM", uri);
        this.mShareIntent.setType(mime);
        this.mShareIntent.addFlags(1);
        List<ResolveInfo> activities = context.getPackageManager().queryIntentActivities(this.mShareIntent, 65600);
        return activities;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialog, int which) {
        ResolveInfo info = this.mShareResolveInfoList.get(which);
        ApplicationLauncher.startResolvedActivity(getContext(), this.mShareIntent, info);
    }
}