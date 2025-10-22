package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.os.Build;
import androidx.core.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonymobile.cameracommon.extendedview.RoundRectImageView;
import com.sonymobile.cameracommon.font.FontUtil;
import java.util.Locale;

/* loaded from: classes.dex */
public class RecordingIndicator extends RelativeLayout {
    public static final String TAG = "RecordingIndicator";
    private LinearLayout mConstraintIndicator;
    private TextView mConstraintRecordingTimeText;
    private RelativeLayout mContainer;
    private int mDisplayOrientation;
    private int mDuration;
    private boolean mIsConstraint;
    private boolean mIsRecording;
    private boolean mIsSequence;
    private boolean mIsThumbnailReady;
    private TextView mMaxDurationText;
    private DurationParameterSet mMaxTime;
    private int mPivotForRotationConstraint;
    private int mPivotForRotationSequence;
    private int mPivotForRotationUnConstraint;
    private RecordingProgressBar mProgressBar;
    private final float mRadius;
    private DurationParameterSet mRecordingTime;
    private LayoutDependencyResolver.ScreenAspect mScreenAspect;
    private LinearLayout mSequenceIndicator;
    private TextView mSequenceRec;
    private TextView mSequenceRecordingTimeText;
    private String mStringFormatRecordingTime;
    private String mStringFormatRemainConstraintTime;
    private int mThumbnailCnt;
    private LinearLayout mThumbnailContainer;
    private final int mThumbnailMaxNum;
    private final int mThumbnailPadding;
    private final RelativeLayout.LayoutParams mThumbnailParams;
    private final int mThumbnailSize;
    private final Bitmap[] mThumbnails;
    private LinearLayout mTimeContainer;
    private LinearLayout mUnConstraintIndicator;
    private TextView mUnConstraintRecordingTimeText;

    public RecordingIndicator(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mUnConstraintIndicator = null;
        this.mUnConstraintRecordingTimeText = null;
        this.mConstraintIndicator = null;
        this.mConstraintRecordingTimeText = null;
        this.mMaxDurationText = null;
        this.mSequenceIndicator = null;
        this.mSequenceRecordingTimeText = null;
        this.mThumbnailContainer = null;
        this.mTimeContainer = null;
        this.mSequenceRec = null;
        this.mProgressBar = null;
        this.mThumbnailMaxNum = getResources().getInteger(R.integer.rec_sequence_thumbnail_max_num);
        this.mThumbnailSize = getResources().getDimensionPixelSize(R.dimen.rec_sequence_thumbnail_width_height);
        this.mRadius = getResources().getDimension(R.dimen.rec_sequence_thumbnail_radius);
        this.mThumbnailParams = new RelativeLayout.LayoutParams(-2, this.mThumbnailSize);
        this.mThumbnailPadding = getResources().getDimensionPixelSize(R.dimen.rec_sequence_thumbnail_padding);
        this.mStringFormatRemainConstraintTime = null;
        this.mStringFormatRecordingTime = null;
        this.mIsConstraint = false;
        this.mIsSequence = false;
        this.mIsThumbnailReady = false;
        this.mIsRecording = false;
        this.mThumbnailCnt = 0;
        this.mThumbnails = new Bitmap[this.mThumbnailMaxNum];
        this.mDuration = 0;
        this.mMaxTime = null;
        this.mRecordingTime = null;
        this.mPivotForRotationUnConstraint = context.getResources().getDimensionPixelSize(R.dimen.rec_unconstraint_height) / 2;
        this.mPivotForRotationConstraint = context.getResources().getDimensionPixelSize(R.dimen.rec_constraint_height) / 2;
        this.mPivotForRotationSequence = context.getResources().getDimensionPixelSize(R.dimen.rec_sequence_height) / 2;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mUnConstraintIndicator = (LinearLayout) findViewById(R.id.unconstraint);
        this.mUnConstraintRecordingTimeText = (TextView) this.mUnConstraintIndicator.findViewById(R.id.recording_time);
        FontUtil.setBold(this.mUnConstraintRecordingTimeText);
        FontUtil.setBold((TextView) this.mUnConstraintIndicator.findViewById(R.id.recording_indicator_rec));
        this.mConstraintIndicator = (LinearLayout) findViewById(R.id.constraint);
        this.mConstraintRecordingTimeText = (TextView) this.mConstraintIndicator.findViewById(R.id.recording_time);
        FontUtil.setBold(this.mConstraintRecordingTimeText);
        FontUtil.setBold((TextView) this.mConstraintIndicator.findViewById(R.id.recording_indicator_rec));
        FontUtil.setBold((TextView) this.mConstraintIndicator.findViewById(R.id.recording_devider));
        this.mMaxDurationText = (TextView) this.mConstraintIndicator.findViewById(R.id.remain_time);
        FontUtil.setBold(this.mMaxDurationText);
        this.mProgressBar = (RecordingProgressBar) findViewById(R.id.progressbar);
        this.mSequenceIndicator = (LinearLayout) findViewById(R.id.sequence_video);
        this.mSequenceRecordingTimeText = (TextView) this.mSequenceIndicator.findViewById(R.id.recording_time);
        FontUtil.setBold(this.mSequenceRecordingTimeText);
        this.mSequenceRec = (TextView) this.mSequenceIndicator.findViewById(R.id.recording_indicator_rec);
        FontUtil.setBold(this.mSequenceRec);
        this.mThumbnailContainer = (LinearLayout) this.mSequenceIndicator.findViewById(R.id.thumbnail_container);
        if (Build.VERSION.SDK_INT >= 24) {
            this.mThumbnailContainer.setLayerType(1, null);
        }
        this.mTimeContainer = (LinearLayout) this.mSequenceIndicator.findViewById(R.id.time_container);
        this.mMaxTime = new DurationParameterSet();
        this.mRecordingTime = new DurationParameterSet();
        this.mContainer = (RelativeLayout) findViewById(R.id.recording);
    }

    public void setConstraint(boolean isConstraint) {
        this.mIsConstraint = isConstraint;
    }

    public void setSequenceMode(boolean isSequence) {
        this.mIsSequence = isSequence;
    }

    public void release() {
    }

    public void prepareBeforeRecording(int duration, boolean isVideoHdrUsed) throws Resources.NotFoundException {
        this.mRecordingTime.update(0);
        this.mContainer.setVisibility(4);
        int recordingTimeWidth = getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_time_width);
        if (this.mIsConstraint) {
            this.mDuration = duration;
            this.mMaxTime.update(this.mDuration);
            this.mProgressBar.setProgress(0, 0);
            this.mStringFormatRemainConstraintTime = getContext().getString(R.string.cam_status_recoding_time_format_txt);
            this.mMaxDurationText.setText(String.format(Locale.US, this.mStringFormatRemainConstraintTime, Integer.valueOf(this.mMaxTime.min), Integer.valueOf(this.mMaxTime.sec)));
            this.mStringFormatRecordingTime = getContext().getString(R.string.cam_status_recoding_time_format_txt);
            this.mConstraintRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
        } else {
            this.mStringFormatRecordingTime = getContext().getString(R.string.cam_status_recoding_time_format_txt);
            if (this.mIsSequence) {
                resetThumbnails();
                setIndicator(this.mIsRecording);
                this.mSequenceRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
                this.mSequenceRecordingTimeText.getLayoutParams().width = recordingTimeWidth;
            } else {
                this.mUnConstraintRecordingTimeText.setText(String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec)));
                this.mUnConstraintRecordingTimeText.getLayoutParams().width = recordingTimeWidth;
            }
        }
        if (this.mIsConstraint) {
            this.mConstraintIndicator.setVisibility(0);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(8);
        } else if (this.mIsSequence) {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(8);
            this.mSequenceIndicator.setVisibility(0);
        } else {
            this.mConstraintIndicator.setVisibility(8);
            this.mUnConstraintIndicator.setVisibility(0);
            this.mSequenceIndicator.setVisibility(8);
        }
        updateLayout();
    }

    private void updateProgressbar(int msec) {
        if (msec <= this.mDuration) {
            this.mProgressBar.setProgress(msec, this.mDuration);
        }
    }

    public void updateRecordingTime(int msec) throws Resources.NotFoundException {
        String recording;
        int recordingTimeWidth;
        this.mRecordingTime.update(msec);
        this.mContainer.setVisibility(0);
        if (this.mRecordingTime.hour < 1) {
            this.mStringFormatRecordingTime = getContext().getString(R.string.cam_status_recoding_time_format_txt);
            recording = String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
            recordingTimeWidth = getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_time_width);
        } else {
            this.mStringFormatRecordingTime = getContext().getString(R.string.cam_status_recoding_hours_time_format_txt);
            recording = String.format(Locale.US, this.mStringFormatRecordingTime, Integer.valueOf(this.mRecordingTime.hour), Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
            recordingTimeWidth = getContext().getResources().getDimensionPixelSize(R.dimen.rec_record_hours_time_width);
        }
        if (this.mIsConstraint) {
            this.mConstraintRecordingTimeText.setText(recording);
            updateProgressbar(msec);
        } else if (this.mIsSequence) {
            this.mSequenceRecordingTimeText.setText(recording);
            this.mSequenceRecordingTimeText.getLayoutParams().width = recordingTimeWidth;
        } else {
            this.mUnConstraintRecordingTimeText.setText(recording);
            this.mUnConstraintRecordingTimeText.getLayoutParams().width = recordingTimeWidth;
        }
    }

    public void addChapter(byte[] imageData, int orientation) {
        if (this.mIsSequence) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(imageData, 0, imageData.length, options);
            int height = options.outHeight;
            int width = options.outWidth;
            if (height < width) {
                options.inSampleSize = Math.round(height / this.mThumbnailSize);
            } else if (width < height) {
                options.inSampleSize = Math.round(width / this.mThumbnailSize);
            }
            options.inJustDecodeBounds = false;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            Bitmap bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.length, options);
            updateThumbnails(ThumbnailUtil.rotateThumbnail(ThumbnailUtils.extractThumbnail(bitmap, this.mThumbnailSize, this.mThumbnailSize), orientation));
        }
    }

    private void updateThumbnails(Bitmap thumbnailImg) {
        this.mIsThumbnailReady = true;
        setIndicator(this.mIsRecording);
        RoundRectImageView thumbnail = createRoundRectImageView(thumbnailImg);
        if (this.mThumbnailCnt == 0) {
            this.mThumbnailContainer.removeAllViews();
            thumbnail.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
            this.mThumbnails[0] = thumbnailImg;
        } else {
            thumbnail.setPadding(this.mThumbnailPadding, 0, 0, 0);
            if (this.mThumbnailCnt == 1) {
                this.mThumbnails[1] = thumbnailImg;
            } else if (this.mThumbnailCnt >= this.mThumbnailMaxNum) {
                this.mThumbnailContainer.removeViewAt(0);
                RoundRectImageView replaceView = createRoundRectImageView(this.mThumbnails[1]);
                replaceView.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
                this.mThumbnailContainer.removeViewAt(0);
                this.mThumbnailContainer.addView(replaceView, 0);
                for (int i = 0; i < this.mThumbnailMaxNum - 1; i++) {
                    this.mThumbnails[i] = this.mThumbnails[i + 1];
                }
            }
            this.mThumbnails[this.mThumbnailMaxNum - 1] = thumbnailImg;
        }
        this.mThumbnailContainer.addView(thumbnail);
        this.mThumbnailCnt++;
    }

    private RoundRectImageView createRoundRectImageView(Bitmap image) {
        RoundRectImageView thumbnail = new RoundRectImageView(getContext());
        thumbnail.setLayoutParams(this.mThumbnailParams);
        thumbnail.setImageBitmap(image);
        thumbnail.setClickable(false);
        thumbnail.setFocusable(false);
        thumbnail.setFocusableInTouchMode(false);
        return thumbnail;
    }

    public void setIndicator(boolean isOnRecording) {
        int backgroundResource;
        int visibility;
        this.mIsRecording = isOnRecording;
        if (this.mIsSequence) {
            if (isOnRecording) {
                if (!this.mIsThumbnailReady) {
                    return;
                }
            } else {
                this.mIsThumbnailReady = false;
            }
            if (isOnRecording) {
                backgroundResource = R.drawable.cam_sequential_video_rec_bg_rec_icn;
                visibility = 0;
            } else {
                backgroundResource = R.drawable.cam_sequential_video_rec_bg_pause_right_icn;
                visibility = 8;
            }
            this.mTimeContainer.setBackgroundResource(backgroundResource);
            this.mTimeContainer.setPadding(getResources().getDimensionPixelSize(R.dimen.rec_sequence_text_margin_width), 0, getResources().getDimensionPixelSize(R.dimen.rec_sequence_text_margin_width), 0);
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) this.mTimeContainer.getLayoutParams();
            params.width = -2;
            this.mTimeContainer.setLayoutParams(params);
            this.mSequenceRec.setVisibility(visibility);
        }
    }

    private void resetThumbnails() {
        this.mThumbnailCnt = 0;
        if (this.mThumbnailContainer != null) {
            this.mThumbnailContainer.removeAllViews();
        }
        addEmptyThumbnails();
    }

    private void addEmptyThumbnails() {
        Bitmap emptyThumbnail = Bitmap.createBitmap(this.mThumbnailSize, this.mThumbnailSize, Bitmap.Config.RGB_565);
        emptyThumbnail.eraseColor(ViewCompat.MEASURED_STATE_MASK);
        RoundRectImageView thumbnail = createRoundRectImageView(emptyThumbnail);
        thumbnail.setRadius(this.mRadius, 0.0f, 0.0f, this.mRadius);
        this.mThumbnailContainer.addView(thumbnail);
    }

    public void setOrientation(int orientation) {
        this.mDisplayOrientation = orientation;
        updateLayout();
    }

    private void updateLayoutParams(LinearLayout layout) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) layout.getLayoutParams();
        LayoutOrientationResolver.LayoutOrientationType layoutScreenOrientation = LayoutOrientationResolver.getInstance().getOrientation();
        if (layoutScreenOrientation == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            layoutParams.removeRule(12);
            layoutParams.addRule(10, -1);
        } else {
            layoutParams.removeRule(10);
            layoutParams.addRule(12, -1);
        }
        layout.requestLayout();
    }

    private void updateLayout() {
        float rotation = RotationUtil.getAngle(this.mDisplayOrientation);
        LayoutOrientationResolver.LayoutOrientationType layoutScreenOrientation = LayoutOrientationResolver.getInstance().getOrientation();
        if (layoutScreenOrientation == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
            rotation += 90.0f;
        }
        if (this.mScreenAspect != null && this.mScreenAspect == LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE) {
            if (layoutScreenOrientation == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                this.mContainer.setPadding(ResourceUtil.getDimensionPixelSize(getContext(), getContext().getPackageName(), R.dimen.recording_indicator_offset_18_9), 0, 0, 0);
            } else {
                this.mContainer.setPadding(0, 0, 0, ResourceUtil.getDimensionPixelSize(getContext(), getContext().getPackageName(), R.dimen.recording_indicator_offset_18_9));
            }
        }
        if (this.mUnConstraintIndicator != null) {
            updateLayoutParams(this.mUnConstraintIndicator);
            this.mUnConstraintIndicator.setRotation(rotation);
            this.mUnConstraintIndicator.setPivotX(this.mPivotForRotationUnConstraint);
            this.mUnConstraintIndicator.setPivotY(this.mPivotForRotationUnConstraint);
        }
        if (this.mConstraintIndicator != null) {
            updateLayoutParams(this.mConstraintIndicator);
            this.mConstraintIndicator.setRotation(rotation);
            this.mConstraintIndicator.setPivotX(this.mPivotForRotationConstraint);
            this.mConstraintIndicator.setPivotY(this.mPivotForRotationConstraint);
        }
        if (this.mSequenceIndicator != null) {
            updateLayoutParams(this.mSequenceIndicator);
            this.mSequenceIndicator.setRotation(rotation);
            this.mSequenceIndicator.setPivotX(this.mPivotForRotationSequence);
            this.mSequenceIndicator.setPivotY(this.mPivotForRotationSequence);
        }
    }

    public void setVisible(boolean visible) {
        if (visible) {
            if (this.mIsConstraint) {
                this.mConstraintIndicator.setVisibility(0);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(8);
                return;
            } else if (this.mIsSequence) {
                this.mConstraintIndicator.setVisibility(8);
                this.mUnConstraintIndicator.setVisibility(8);
                this.mSequenceIndicator.setVisibility(0);
                return;
            } else {
                this.mConstraintIndicator.setVisibility(8);
                this.mUnConstraintIndicator.setVisibility(0);
                this.mSequenceIndicator.setVisibility(8);
                return;
            }
        }
        this.mConstraintIndicator.setVisibility(8);
        this.mUnConstraintIndicator.setVisibility(8);
        this.mSequenceIndicator.setVisibility(8);
    }

    public void setScreenAspect(LayoutDependencyResolver.ScreenAspect screenAspect) {
        this.mScreenAspect = screenAspect;
    }
}