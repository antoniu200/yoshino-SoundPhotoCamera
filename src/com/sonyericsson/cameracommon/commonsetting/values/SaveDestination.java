package com.sonyericsson.cameracommon.commonsetting.values;

import android.content.Context;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingConstants;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public enum SaveDestination implements CommonSettingValue {
    EMMC(-1, R.string.cam_strings_save_destination_ims_txt, null, CommonSettingConstants.StorageValue.EMMC, StorageUtil.CameraStorageType.INTERNAL),
    SDCARD(-1, R.string.cam_strings_save_destination_sd_txt, null, CommonSettingConstants.StorageValue.SDCARD, StorageUtil.CameraStorageType.EXTERNAL_CARD);

    public static final String TAG = "SaveDestination";
    private final SaveDestination mCompatibleValue;
    private int mIconId;
    private final String mProviderValue;
    private int mTextId;
    private final StorageUtil.CameraStorageType mType;
    private static int sParameterTextId = R.string.cam_strings_save_destination_txt;
    private static SaveDestination sPrimaryStorage = EMMC;

    SaveDestination(int iconId, int textId, SaveDestination compatibleValue, String providerValue, StorageUtil.CameraStorageType type) {
        this.mIconId = iconId;
        this.mTextId = textId;
        this.mCompatibleValue = compatibleValue;
        this.mProviderValue = providerValue;
        this.mType = type;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public CommonSettingKey getCommonSettingKey() {
        return CommonSettingKey.SAVE_DESTINATION;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.settings.SettingItemData
    public int getTextId() {
        return this.mTextId;
    }

    public SaveDestination isCompatibleValue() {
        return this.mCompatibleValue;
    }

    @Override // com.sonyericsson.cameracommon.commonsetting.CommonSettingValue
    public String getProviderValue() {
        return this.mProviderValue;
    }

    public String getParameterName() {
        return getClass().getName();
    }

    public int getParameterKeyTextId() {
        return sParameterTextId;
    }

    public static SaveDestination getPrimaryStorage() {
        return sPrimaryStorage;
    }

    public static List<SaveDestination> getOptions(Context context) {
        List<SaveDestination> options = new ArrayList<>();
        for (StorageUtil.CameraStorageType type : StorageUtil.getMountableStorageTypes(context)) {
            SaveDestination[] saveDestinationArrValues = values();
            int length = saveDestinationArrValues.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    SaveDestination value = saveDestinationArrValues[i];
                    if (type != value.mType) {
                        i++;
                    } else {
                        options.add(value);
                        break;
                    }
                }
            }
        }
        return options;
    }

    public static SaveDestination getDefaultValue() {
        return EMMC;
    }

    public StorageUtil.CameraStorageType getStorageType() {
        return this.mType;
    }
}