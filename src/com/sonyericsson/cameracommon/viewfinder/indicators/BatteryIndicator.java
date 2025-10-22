package com.sonyericsson.cameracommon.viewfinder.indicators;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.systemmonitor.BatteryChangedReceiver;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.font.FontUtil;

/* loaded from: classes.dex */
public class BatteryIndicator extends Indicator {
    private static final String PERCENT = "%";
    private static final String TAG = "BatteryIndicator";
    private final int IMAGE_SIZE;
    private final int TEXT_MAX_WIDTH;
    private LinearLayout mContainer;
    private TextView mText;

    public BatteryIndicator(Activity activity) {
        super((ImageView) activity.findViewById(R.id.battery_indicator_image));
        this.mText = null;
        this.mContainer = null;
        this.mContainer = (LinearLayout) activity.findViewById(R.id.battery_indicator);
        this.mText = (TextView) activity.findViewById(R.id.battery_indicator_text);
        this.IMAGE_SIZE = activity.getResources().getDimensionPixelSize(R.dimen.battery_indicator_image_size);
        this.TEXT_MAX_WIDTH = activity.getResources().getDimensionPixelSize(R.dimen.battery_indicator_text_max_width);
        FontUtil.setRobotoFont(this.mText, FontUtil.RobotoFontType.MEDIUM);
        update();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.indicators.Indicator
    public void setSensorOrientation(int orientation) {
        this.mContainer.setRotation(RotationUtil.getAngle(orientation));
        this.mContainer.setPivotX(this.TEXT_MAX_WIDTH + (this.IMAGE_SIZE / 2.0f));
        this.mContainer.setPivotY(this.IMAGE_SIZE / 2.0f);
        update();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.indicators.Indicator
    protected void update() {
        super.update();
        if (this.mText != null) {
            if (this.mOn && this.mVisible) {
                this.mText.setVisibility(View.VISIBLE);
            } else {
                this.mText.setVisibility(android.view.View.GONE);
            }
        }
    }

    public void updateValue(int level) {
        this.mText.setText(level + PERCENT);
        if (BatteryChangedReceiver.isCheckEnabled() && level <= BatteryChangedReceiver.THRESHOLD_LOW_BATTERY_LEVEL) {
            set(true);
        } else {
            set(false);
        }
        update();
    }
}