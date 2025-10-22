package com.sonymobile.android.addoncamera.soundphoto.setting.parameters;

import com.sonyericsson.cameracommon.settings.SelfTimerInterface;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;

/* loaded from: classes.dex */
public enum SelfTimer implements ParameterValue, SelfTimerInterface {
    LONG(R.drawable.cam_selftimer_setting_10sec_icn, R.string.cam_strings_self_timer_10_txt, 1, OnScreenButtonGroup.ButtonType.SELFTIMER_LONG),
    SHORT(R.drawable.cam_selftimer_setting_3sec_icn, R.string.cam_strings_self_timer_3_txt, 3000, OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT),
    OFF(R.drawable.cam_selftimer_setting_off_icn, R.string.cam_strings_settings_off_txt, 0, OnScreenButtonGroup.ButtonType.CAPTURE);

    private final OnScreenButtonGroup.ButtonType mButtonType;
    private final int mDuration;
    private final int mIconId;
    private final int mTextId;

    SelfTimer(int iconId, int textId, int duration, OnScreenButtonGroup.ButtonType buttonType) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mDuration = duration;
        this.mButtonType = buttonType;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public Parameters key() {
        return Parameters.SELF_TIMER;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int iconId() {
        return this.mIconId;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int textId() {
        return this.mTextId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SelfTimerInterface
    public int getDurationInMillisecond() {
        return this.mDuration;
    }

    public static SelfTimer[] getOptions() {
        return values();
    }

    public OnScreenButtonGroup.ButtonType getButtonType() {
        return this.mButtonType;
    }

    @Override // com.sonyericsson.cameracommon.settings.SelfTimerInterface
    public int getCountDownIconId() {
        return -1;
    }
}
