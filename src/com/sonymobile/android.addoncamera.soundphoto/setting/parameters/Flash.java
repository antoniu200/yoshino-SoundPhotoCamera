package com.sonymobile.android.addoncamera.soundphoto.setting.parameters;

import android.hardware.Camera;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public enum Flash implements ParameterValue {
    AUTO(R.drawable.cam_flash_auto_icn, R.string.cam_strings_settings_auto_txt, "auto"),
    ON(R.drawable.cam_flash_fill_flash_icn, R.string.cam_strings_flash_fill_flash_txt, "on"),
    RED_EYE(R.drawable.cam_flash_red_eye_reduc_icn, R.string.cam_strings_flash_red_eye_reduc_txt, "red-eye"),
    OFF(R.drawable.cam_flash_off_icn, R.string.cam_strings_settings_off_txt, "off"),
    LED_ON(R.drawable.cam_flash_torch_icn, R.string.cam_strings_flash_torch_txt, "torch");

    private final String mCameraParameterValue;
    private final int mIconId;
    private final int mTextId;

    Flash(int iconId, int textId, String cameraParameterValue) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mCameraParameterValue = cameraParameterValue;
    }

    public static Flash[] getOptions(Camera.Parameters parameters) {
        ArrayList<Flash> options = new ArrayList<>();
        List<String> supportedValues = parameters.getSupportedFlashModes();
        Flash[] expectedOptions = values();
        if (supportedValues != null && !supportedValues.isEmpty()) {
            for (Flash value : expectedOptions) {
                Iterator<String> it = supportedValues.iterator();
                while (true) {
                    if (it.hasNext()) {
                        String supportedValue = it.next();
                        if (value.cameraParameterValue().equals(supportedValue)) {
                            options.add(value);
                            break;
                        }
                    }
                }
            }
        }
        return (Flash[]) options.toArray(new Flash[0]);
    }

    public static Flash getDefaultValue(Flash[] options) {
        if (options == null || options.length == 0) {
            return OFF;
        }
        if (Arrays.asList(options).contains(AUTO)) {
            return AUTO;
        }
        return OFF;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public Parameters key() {
        return Parameters.FLASH;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int iconId() {
        return this.mIconId;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue
    public int textId() {
        return this.mTextId;
    }

    public String cameraParameterValue() {
        return this.mCameraParameterValue;
    }
}