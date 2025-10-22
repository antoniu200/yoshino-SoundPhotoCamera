package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class RecordingProgressBar extends ImageView {
    public static final String TAG = "RecordingProgressBar";
    private int mProgressBarWidth;
    private Drawable mProgressIcon;
    private int mProgressRatio;

    public RecordingProgressBar(Context context) {
        super(context);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    public RecordingProgressBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    public RecordingProgressBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (Build.VERSION.SDK_INT >= 21) {
            this.mProgressIcon = getResources().getDrawable(R.drawable.cam_video_recording_progress_indicator_icn, null);
        } else {
            this.mProgressIcon = getResources().getDrawable(R.drawable.cam_video_recording_progress_indicator_icn);
        }
        this.mProgressBarWidth = getResources().getDimensionPixelSize(R.dimen.rec_constraint_progress_width);
    }

    public void setProgress(int progress, int limit) {
        int ratio = 0;
        if (limit != 0) {
            ratio = (int) ((progress / limit) * ((this.mProgressBarWidth - getPaddingLeft()) - getPaddingRight()));
        }
        this.mProgressRatio = ratio;
        invalidate();
    }

    public int getProgress() {
        return this.mProgressRatio;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int bottom = ((getPaddingTop() + getHeight()) - getPaddingTop()) - getPaddingBottom();
        if (CommonUtility.isMirroringRequired(getContext())) {
            int left = (this.mProgressBarWidth - getPaddingRight()) - this.mProgressRatio;
            this.mProgressIcon.setBounds(left, getPaddingTop(), this.mProgressBarWidth - getPaddingRight(), bottom);
        } else {
            int right = getPaddingLeft() + this.mProgressRatio;
            this.mProgressIcon.setBounds(getPaddingLeft(), getPaddingTop(), right, bottom);
        }
        this.mProgressIcon.draw(canvas);
    }
}