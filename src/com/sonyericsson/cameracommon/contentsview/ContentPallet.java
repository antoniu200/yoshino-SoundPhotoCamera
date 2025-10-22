package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
public class ContentPallet extends RelativeLayout {
    private static final int INSERTANIMATION_DURATION = 300;
    private static final float INSERTANIMATION_FADE_END = 1.0f;
    private static final float INSERTANIMATION_FADE_START = 0.0f;
    private static final float INSERTANIMATION_SCALE_END = 1.0f;
    private static final float INSERTANIMATION_SCALE_START = 0.7f;
    public static final String TAG = "ContentPallet";
    private static final long intervalTime = 3000;
    private long curTime;
    private final ClickListener mClickListener;
    private Content mContent;
    private boolean mIsRequestHide;
    private int mRequestId;
    private ThumbnailClickListener mThumbnailClickListener;

    public interface ThumbnailClickListener {
        void onClick(Content content);
    }

    public ContentPallet(Context context) {
        super(context);
        this.curTime = 0L;
        this.mClickListener = new ClickListener();
    }

    public ContentPallet(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.curTime = 0L;
        this.mClickListener = new ClickListener();
    }

    void initialize(int id, ThumbnailClickListener listener) {
        this.mRequestId = id;
        this.mThumbnailClickListener = listener;
        findViewById(R.id.content_thumbnail_frame).setOnClickListener(this.mClickListener);
    }

    void release() {
        if (this.mContent != null) {
            Bitmap thumbnail = this.mContent.getThumbnail();
            if (thumbnail != null && !thumbnail.isRecycled()) {
                thumbnail.recycle();
            }
            this.mContent = null;
        }
        findViewById(R.id.content_thumbnail_frame).setOnClickListener(null);
    }

    public int getRequestId() {
        return this.mRequestId;
    }

    void set(Content content) {
        View view;
        this.mContent = content;
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.content_progress_bar);
        progressBar.setVisibility(4);
        progressBar.setOnClickListener(null);
        ImageView thumbnailView = (ImageView) findViewById(R.id.content_thumbnail);
        Bitmap bitmap = content.getThumbnail();
        if (bitmap != null) {
            thumbnailView.setImageBitmap(bitmap);
        } else {
            ImageView corruptedIcon = new ImageView(getContext());
            addView(corruptedIcon);
            corruptedIcon.getLayoutParams().width = -2;
            corruptedIcon.getLayoutParams().height = -2;
            ((RelativeLayout.LayoutParams) corruptedIcon.getLayoutParams()).addRule(13);
            corruptedIcon.setImageResource(R.drawable.cam_photo_stack_file_corrupted_icn);
        }
        if (content.shouldShowPlayableIcon()) {
            ImageView playabeIcon = new ImageView(getContext());
            addView(playabeIcon);
            playabeIcon.getLayoutParams().width = -2;
            playabeIcon.getLayoutParams().height = -2;
            ((RelativeLayout.LayoutParams) playabeIcon.getLayoutParams()).addRule(13);
            playabeIcon.setImageResource(content.getPlayIconResourceId());
        }
        if (content.shouldShowExtraIcon()) {
            LayoutInflater inflater = ((Activity) getContext()).getLayoutInflater();
            if (inflater != null) {
                if (CommonUtility.isCoreCameraApp((Activity) getContext())) {
                    view = inflater.inflate(R.layout.content_extra_icon_core_camera, this);
                } else {
                    view = inflater.inflate(R.layout.content_extra_icon, this);
                }
                ImageView icon = (ImageView) view.findViewById(R.id.content_extra_icon_image);
                icon.setBackgroundResource(content.getExtraIconResourceId());
            } else {
                CameraLogger.w(TAG, "could not get inflater.");
            }
        }
        findViewById(R.id.content_thumbnail_frame).setVisibility(0);
        if (this.mIsRequestHide) {
            setVisibility(4);
        }
    }

    void enableClick() {
        findViewById(R.id.content_thumbnail_frame).setOnClickListener(this.mClickListener);
        findViewById(R.id.content_progress_bar).setClickable(true);
    }

    void disableClick() {
        findViewById(R.id.content_thumbnail_frame).setOnClickListener(null);
        findViewById(R.id.content_progress_bar).setClickable(false);
    }

    Animation createInsertAnimation(Animation.AnimationListener listener) {
        AnimationSet animation = new AnimationSet(true);
        animation.addAnimation(new ScaleAnimation(INSERTANIMATION_SCALE_START, 1.0f, INSERTANIMATION_SCALE_START, 1.0f, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f));
        animation.addAnimation(new AlphaAnimation(0.0f, 1.0f));
        animation.setInterpolator(new DecelerateInterpolator());
        animation.setDuration(300L);
        animation.setAnimationListener(listener);
        return animation;
    }

    public boolean hasContent() {
        return this.mContent != null;
    }

    public Content getContent() {
        return this.mContent;
    }

    public void requestHide() {
        this.mIsRequestHide = true;
    }

    public void cancelRequestHide() {
        this.mIsRequestHide = false;
    }

    private class ClickListener implements View.OnClickListener {
        private ClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (System.currentTimeMillis() - ContentPallet.this.curTime > ContentPallet.intervalTime && ContentPallet.this.mContent != null && ContentPallet.this.mThumbnailClickListener != null) {
                ContentPallet.this.mThumbnailClickListener.onClick(ContentPallet.this.mContent);
            }
        }
    }
}