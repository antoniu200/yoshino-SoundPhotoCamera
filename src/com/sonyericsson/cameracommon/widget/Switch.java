package com.sonyericsson.cameracommon.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public class Switch extends LinearLayout {
    private static final int DISABLED_FILTER = R.color.disabled_filter;
    private static final int OFF_POSITION = 0;
    public static final String TAG = "Switch";
    private boolean mIsChecked;
    private CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;
    private int mOnPosition;
    protected View mSwitchBundle;
    private ImageView mSwitchKnob;
    private ImageView mSwitchTrack;
    protected TextView mText;

    public Switch(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mOnPosition = 0;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSwitchTrack = (ImageView) findViewById(R.id.switch_track);
        this.mSwitchKnob = (ImageView) findViewById(R.id.switch_knob);
        this.mText = (TextView) findViewById(R.id.switch_category);
        this.mSwitchBundle = findViewById(R.id.switch_bundle);
    }

    public void setText(CharSequence text) {
        this.mText.setText(text);
    }

    public void setChecked(boolean isChecked) {
        this.mIsChecked = isChecked;
        updateIcon();
        updatePosition();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (isEnabled()) {
            if (23 <= Build.VERSION.SDK_INT) {
                this.mText.setTextColor(getResources().getColor(R.color.default_text_col, null));
            } else {
                this.mText.setTextColor(getResources().getColor(R.color.default_text_col));
            }
            this.mSwitchTrack.clearColorFilter();
            return;
        }
        this.mText.setTextColor(getResources().getColor(R.color.grayout_text_col, null));
        if (23 <= Build.VERSION.SDK_INT) {
            this.mText.setTextColor(getResources().getColor(R.color.grayout_text_col, null));
        } else {
            this.mText.setTextColor(getResources().getColor(R.color.grayout_text_col));
        }
        this.mSwitchTrack.setColorFilter(DISABLED_FILTER);
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener listener) {
        this.mOnCheckedChangeListener = listener;
    }

    public void changeState() {
        this.mIsChecked = !this.mIsChecked;
        setChecked(this.mIsChecked);
        if (this.mOnCheckedChangeListener != null) {
            this.mOnCheckedChangeListener.onCheckedChanged(null, this.mIsChecked);
        }
    }

    private void updatePosition() {
        float x = this.mIsChecked ? this.mOnPosition : 0;
        this.mSwitchKnob.setTranslationX(x);
    }

    private void updateIcon() {
        if (this.mIsChecked) {
            this.mSwitchTrack.setImageResource(R.drawable.cam_setting_switch_on_bg_icn);
            this.mSwitchKnob.setImageResource(R.drawable.cam_setting_switch_on_icn);
        } else {
            this.mSwitchTrack.setImageResource(R.drawable.cam_setting_switch_off_bg_icn);
            this.mSwitchKnob.setImageResource(R.drawable.cam_setting_switch_off_icn);
        }
        this.mOnPosition = this.mSwitchTrack.getDrawable().getIntrinsicWidth() - this.mSwitchKnob.getDrawable().getIntrinsicWidth();
    }
}