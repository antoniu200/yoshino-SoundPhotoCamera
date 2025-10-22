package com.sonyericsson.cameracommon.keytranslator;

import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.VolumeKey;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class KeyEventTranslator {
    public static final String TAG = "KeyEventTranslator";
    private KeyType mCurrentKeyType = KeyType.NON;
    private final CommonSettings mSettings;

    private enum KeyType {
        NON,
        CAMERA_KEY,
        VOLUME_UP_KEY,
        VOLUME_DOWN_KEY
    }

    public enum TranslatedKeyCode {
        NON,
        ZOOM,
        VOLUME,
        FOCUS,
        SHUTTER,
        FOCUS_AND_SHUTTER_UP_KEY,
        FOCUS_AND_SHUTTER_DOWN_KEY,
        BACK,
        MENU,
        IGNORED,
        ENTER
    }

    public KeyEventTranslator(CommonSettings settings) {
        this.mSettings = settings;
    }

    public TranslatedKeyCode translateKeyCode(int keyCode) {
        switch (keyCode) {
            case 4:
                TranslatedKeyCode translatedKeyCode = TranslatedKeyCode.BACK;
                return translatedKeyCode;
            case 24:
            case 25:
                VolumeKey keyAssign = (VolumeKey) this.mSettings.get(CommonSettingKey.VOLUME_KEY);
                switch (keyAssign) {
                    case ZOOM:
                        TranslatedKeyCode translatedKeyCode2 = TranslatedKeyCode.ZOOM;
                        return translatedKeyCode2;
                    case VOLUME:
                        TranslatedKeyCode translatedKeyCode3 = TranslatedKeyCode.VOLUME;
                        return translatedKeyCode3;
                    case HW_CAMERA_KEY:
                        if (keyCode == 24) {
                            TranslatedKeyCode translatedKeyCode4 = TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY;
                            return translatedKeyCode4;
                        }
                        TranslatedKeyCode translatedKeyCode5 = TranslatedKeyCode.FOCUS_AND_SHUTTER_DOWN_KEY;
                        return translatedKeyCode5;
                    default:
                        CameraLogger.e(TAG, "Volume key parameter is invalid state.");
                        TranslatedKeyCode translatedKeyCode6 = TranslatedKeyCode.ZOOM;
                        return translatedKeyCode6;
                }
            case 27:
                TranslatedKeyCode translatedKeyCode7 = TranslatedKeyCode.SHUTTER;
                return translatedKeyCode7;
            case 66:
                TranslatedKeyCode translatedKeyCode8 = TranslatedKeyCode.FOCUS_AND_SHUTTER_UP_KEY;
                return translatedKeyCode8;
            case 80:
                TranslatedKeyCode translatedKeyCode9 = TranslatedKeyCode.FOCUS;
                return translatedKeyCode9;
            case 82:
                TranslatedKeyCode translatedKeyCode10 = TranslatedKeyCode.MENU;
                return translatedKeyCode10;
            default:
                TranslatedKeyCode translatedKeyCode11 = TranslatedKeyCode.NON;
                return translatedKeyCode11;
        }
    }

    public TranslatedKeyCode translateKeyCodeOnDown(int keyCode) {
        TranslatedKeyCode translatedKeyCode = translateKeyCode(keyCode);
        if (!isAvailableNow(translatedKeyCode, true)) {
            return TranslatedKeyCode.IGNORED;
        }
        return translatedKeyCode;
    }

    public TranslatedKeyCode translateKeyCodeOnUp(int keyCode) {
        TranslatedKeyCode translatedKeyCode = translateKeyCode(keyCode);
        if (!isAvailableNow(translatedKeyCode, false)) {
            return TranslatedKeyCode.IGNORED;
        }
        return translatedKeyCode;
    }

    private boolean isAvailableNow(TranslatedKeyCode code, boolean isDown) {
        switch (code) {
            case FOCUS:
                boolean isAvailable = isExpectedKeyType(isDown, KeyType.NON, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.NON);
                return isAvailable;
            case SHUTTER:
                boolean isAvailable2 = isExpectedKeyType(isDown, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY, KeyType.CAMERA_KEY);
                return isAvailable2;
            case FOCUS_AND_SHUTTER_UP_KEY:
                boolean isAvailable3 = isExpectedKeyType(isDown, KeyType.NON, KeyType.VOLUME_UP_KEY, KeyType.VOLUME_UP_KEY, KeyType.NON);
                return isAvailable3;
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                boolean isAvailable4 = isExpectedKeyType(isDown, KeyType.NON, KeyType.VOLUME_DOWN_KEY, KeyType.VOLUME_DOWN_KEY, KeyType.NON);
                return isAvailable4;
            default:
                return true;
        }
    }

    private boolean isExpectedKeyType(boolean isDown, KeyType expectedTypeOnDown, KeyType currentTypeOnDown, KeyType expectedTypeOnUp, KeyType currentTypeOnUp) {
        if (isDown) {
            if (this.mCurrentKeyType != expectedTypeOnDown) {
                return false;
            }
            this.mCurrentKeyType = currentTypeOnDown;
            return true;
        }
        if (this.mCurrentKeyType != expectedTypeOnUp) {
            return false;
        }
        this.mCurrentKeyType = currentTypeOnUp;
        return true;
    }
}