package com.sonymobile.android.addoncamera.soundphoto.view;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.android.addoncamera.soundphoto.R;

/* loaded from: classes.dex */
public class SoundRecordingIndicator extends FrameLayout {
    private static final int CAPTURE_DURATION_AFTER_GET_IN_MSEC = 2000;
    private static final int CAPTURE_DURATION_BEFORE_GET_IN_MSEC = 8000;
    private static final int CAPTURE_DURATION_FULL = 10000;
    private static final int CONTAINER_NUM = 3;
    private static final int DURATION_PER_CONTAINER;
    private static final int INTERVAL_MSEC = 330;
    private static final int MARKER_NUM_AFTER;
    private static final float MARKER_NUM_AFTER_FLOAT = 6.060606f;
    private static final float MARKER_NUM_FULL_FLOAT = 30.30303f;
    private static final int MARKER_NUM_PER_CONTAINER;
    private static final float MARKER_NUM_PER_CONTAINER_FLOAT = 15.151515f;
    private final AnimationListener mAnimationListener;
    private ObjectAnimator[] mAnimator;
    private LinearLayout[] mContainer;
    private final float mContainerWidth;
    private int mCurrentContainerId;
    private int mCurrentPosition;
    private int mCurrentPositionAfter;
    private final int mInterval;
    private final FrameLayout.LayoutParams[] mLayoutParams;
    private final LinearInterpolator mLinearInterpolator;
    private ImageView mMainIcon;
    private final int mMarkerPadding;
    private final int mMarkerWidth;
    private int mOrientation;
    private int mSoundLevel;
    private int mStartTime;
    private float mTranslationXPortrait;
    private float mTranslationYPortrait;
    private final float mWidth;
    private static final String TAG = SoundRecordingIndicator.class.getSimpleName();
    private static final int MARKER_NUM_FULL = (int) Math.floor(30.303030014038086d);

    static {
        MARKER_NUM_AFTER = (int) (6.060606002807617d - Math.floor(6.060606002807617d) != 0.0d ? Math.floor(6.060606002807617d) + 1.0d : 6.060606002807617d);
        MARKER_NUM_PER_CONTAINER = (int) Math.floor(15.151515007019043d);
        DURATION_PER_CONTAINER = MARKER_NUM_PER_CONTAINER * INTERVAL_MSEC;
    }

    public SoundRecordingIndicator(Context context) {
        this(context, null, 0);
    }

    public SoundRecordingIndicator(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SoundRecordingIndicator(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mWidth = getResources().getDimension(R.dimen.sound_indicator_width_for_calculation);
        this.mInterval = ((int) this.mWidth) / MARKER_NUM_FULL;
        this.mMainIcon = null;
        this.mContainer = new LinearLayout[3];
        this.mCurrentContainerId = 0;
        this.mContainerWidth = MARKER_NUM_PER_CONTAINER * this.mInterval;
        this.mMarkerWidth = (int) getResources().getDimension(R.dimen.sound_indicator_marker_width);
        this.mLayoutParams = new FrameLayout.LayoutParams[4];
        this.mMarkerPadding = this.mInterval - this.mMarkerWidth;
        this.mStartTime = 0;
        this.mAnimator = new ObjectAnimator[3];
        this.mAnimationListener = new AnimationListener();
        this.mLinearInterpolator = new LinearInterpolator();
        this.mCurrentPosition = 0;
        this.mCurrentPositionAfter = 0;
        this.mSoundLevel = 0;
        this.mOrientation = 2;
        this.mTranslationXPortrait = 0.0f;
        this.mTranslationYPortrait = getResources().getDimension(R.dimen.sound_indicator_translation_y_portrait);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mMainIcon = (ImageView) findViewById(R.id.indicator_main_icon);
        this.mContainer[0] = (LinearLayout) findViewById(R.id.indicator_container0);
        this.mContainer[1] = (LinearLayout) findViewById(R.id.indicator_container1);
        this.mContainer[2] = (LinearLayout) findViewById(R.id.indicator_container2);
        this.mContainer[1].setTranslationX(this.mContainerWidth);
        this.mContainer[2].setTranslationX(this.mContainerWidth * 2.0f);
        for (int i = 0; i < 3; i++) {
            this.mAnimator[i] = createAnimation(this.mContainer[i]);
        }
        this.mCurrentContainerId = 0;
        this.mLayoutParams[0] = new FrameLayout.LayoutParams(this.mInterval, this.mMarkerWidth);
        this.mLayoutParams[1] = new FrameLayout.LayoutParams(this.mInterval, (int) getResources().getDimension(R.dimen.sound_indicator_marker_height_1));
        this.mLayoutParams[2] = new FrameLayout.LayoutParams(this.mInterval, (int) getResources().getDimension(R.dimen.sound_indicator_marker_height_2));
        this.mLayoutParams[3] = new FrameLayout.LayoutParams(this.mInterval, (int) getResources().getDimension(R.dimen.sound_indicator_marker_height_3));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.mTranslationXPortrait == 0.0f) {
            this.mTranslationXPortrait = (widthMeasureSpec - heightMeasureSpec) / 2.0f;
            setPosition();
            setVisibility(0);
        }
    }

    private ObjectAnimator createAnimation(View view) {
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationX", this.mContainerWidth * 2.0f, -this.mContainerWidth);
        animator.setDuration(DURATION_PER_CONTAINER * 3);
        animator.setRepeatCount(-1);
        animator.addListener(this.mAnimationListener);
        animator.setInterpolator(this.mLinearInterpolator);
        return animator;
    }

    private ImageView createScaleMark(int level) {
        ImageView scaleMark = new ImageView(getContext());
        scaleMark.setLayoutParams(this.mLayoutParams[level]);
        scaleMark.setScaleType(ImageView.ScaleType.FIT_XY);
        scaleMark.setPadding(0, 0, this.mMarkerPadding, 0);
        scaleMark.setClickable(false);
        scaleMark.setFocusable(false);
        scaleMark.setFocusableInTouchMode(false);
        return scaleMark;
    }

    private void addScaleMark(int level) {
        if (this.mAnimator[this.mCurrentContainerId] != null && this.mAnimator[this.mCurrentContainerId].isRunning()) {
            ImageView scaleMark = createScaleMark(level);
            scaleMark.setImageResource(R.drawable.cam_soundphoto_level_gauge_translucent_icn);
            this.mContainer[this.mCurrentContainerId].addView(scaleMark);
        }
    }

    private void addScaleMarkCaptured(int level) {
        if (this.mAnimator[this.mCurrentContainerId] != null && this.mAnimator[this.mCurrentContainerId].isRunning()) {
            ImageView scaleMark = createScaleMark(level);
            scaleMark.setImageResource(R.drawable.cam_soundphoto_level_gauge_icn);
            this.mContainer[this.mCurrentContainerId].addView(scaleMark);
        }
    }

    private void setContainerId() {
        if (this.mContainer[this.mCurrentContainerId].getChildCount() == MARKER_NUM_PER_CONTAINER) {
            switch (this.mCurrentContainerId) {
                case 0:
                    this.mCurrentContainerId = 1;
                    break;
                case 1:
                    this.mCurrentContainerId = 2;
                    break;
                case 2:
                    this.mCurrentContainerId = 0;
                    break;
            }
        }
    }

    private void initialize() {
        startAnimation();
        for (int i = 0; i < MARKER_NUM_FULL - 1; i++) {
            setContainerId();
            addScaleMark(0);
        }
    }

    private void startAnimation() {
        for (int i = 0; i < 3; i++) {
            this.mAnimator[i].start();
            switch (i) {
                case 0:
                    this.mAnimator[0].setCurrentPlayTime(DURATION_PER_CONTAINER * 2);
                    break;
                case 1:
                    this.mAnimator[1].setCurrentPlayTime(DURATION_PER_CONTAINER);
                    break;
                case 2:
                    this.mAnimator[2].setCurrentPlayTime(5L);
                    break;
            }
        }
    }

    public void updateProgress(int milliSec, int volume) {
        this.mSoundLevel = Math.max(this.mSoundLevel, volume);
        if (this.mCurrentPosition == 0) {
            initialize();
            this.mStartTime = milliSec;
        }
        int low = CameraStorageManager.TIMEOUT_GET_STATFS / 4;
        int middle = 875 * 2;
        int high = 875 * 3;
        if (milliSec >= (this.mCurrentPosition * INTERVAL_MSEC) + this.mStartTime) {
            int level = 0;
            if (this.mSoundLevel < low) {
                level = 0;
            } else if (low <= this.mSoundLevel && this.mSoundLevel < middle) {
                level = 1;
            } else if (middle <= this.mSoundLevel && this.mSoundLevel < high) {
                level = 2;
            } else if (high <= this.mSoundLevel) {
                level = 3;
            }
            setContainerId();
            if (this.mCurrentPositionAfter == 0) {
                addScaleMark(level);
            } else {
                addScaleMarkCaptured(level);
                this.mCurrentPositionAfter++;
                if (this.mCurrentPositionAfter == MARKER_NUM_AFTER + 1) {
                    this.mCurrentPositionAfter = 0;
                    if (this.mMainIcon != null) {
                        this.mMainIcon.setImageResource(R.drawable.cam_soundphoto_mic_icn);
                    }
                    for (LinearLayout container : this.mContainer) {
                        for (int i = 0; i < container.getChildCount(); i++) {
                            ((ImageView) container.getChildAt(i)).setImageResource(R.drawable.cam_soundphoto_level_gauge_translucent_icn);
                        }
                    }
                }
            }
            this.mCurrentPosition++;
            this.mSoundLevel = 0;
        }
    }

    public void onCaptureStarted() {
        if (this.mMainIcon != null) {
            this.mMainIcon.setImageResource(R.drawable.cam_soundphoto_mic_recording_icn);
        }
        int containerId = this.mCurrentContainerId;
        int totalNum = 0;
        for (int c = 0; c < 3; c++) {
            for (int i = this.mContainer[containerId].getChildCount() - 1; i >= 0; i--) {
                if (totalNum <= MARKER_NUM_FULL) {
                    ((ImageView) this.mContainer[containerId].getChildAt(i)).setImageResource(R.drawable.cam_soundphoto_level_gauge_icn);
                }
                totalNum++;
            }
            containerId = getPreviousContainerId(containerId);
        }
    }

    public void onTakePictureDone() {
        this.mCurrentPositionAfter = 1;
    }

    private int getPreviousContainerId(int containerId) {
        switch (containerId) {
            case 0:
                return 2;
            case 1:
                return 0;
            case 2:
                return 1;
            default:
                CameraLogger.e(TAG, "getPreviousContainerId: This is invalid containerId. id=" + containerId);
                return containerId - 1;
        }
    }

    public void setIsOpenAutoReview(boolean bool) {
        if (bool) {
            setVisibility(4);
        } else {
            setVisibility(0);
        }
    }

    private class AnimationListener implements Animator.AnimatorListener {
        private AnimationListener() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            SoundRecordingIndicator.this.clearMark(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SoundRecordingIndicator.this.clearMark(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            SoundRecordingIndicator.this.clearMark(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMark(Animator animator) {
        if (animator == this.mAnimator[0]) {
            this.mContainer[0].removeAllViews();
        } else if (animator == this.mAnimator[1]) {
            this.mContainer[1].removeAllViews();
        } else if (animator == this.mAnimator[2]) {
            this.mContainer[2].removeAllViews();
        }
    }

    public void clearProgress() {
        if (this.mMainIcon != null) {
            this.mMainIcon.setImageResource(R.drawable.cam_soundphoto_mic_icn);
        }
        for (int i = 0; i < 3; i++) {
            this.mAnimator[i].end();
            if (this.mContainer[i] != null) {
                this.mContainer[i].removeAllViews();
            }
        }
        this.mCurrentPosition = 0;
        this.mCurrentPositionAfter = 0;
        this.mCurrentContainerId = 0;
    }

    public void release() {
        setVisibility(4);
        ((ViewGroup) getParent()).removeView(this);
    }

    public void setSensorOrientation(int orientation) {
        this.mOrientation = orientation;
        setRotation(RotationUtil.getAngle(orientation));
        setPosition();
    }

    private void setPosition() {
        float translationX = 0.0f;
        float translationY = 0.0f;
        if (this.mOrientation == 1) {
            translationX = this.mTranslationXPortrait;
            translationY = this.mTranslationYPortrait;
        }
        setTranslationX(translationX);
        setTranslationY(translationY);
    }
}