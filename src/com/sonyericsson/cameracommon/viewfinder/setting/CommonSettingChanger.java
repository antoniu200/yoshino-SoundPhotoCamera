package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

/* loaded from: classes.dex */
public class CommonSettingChanger implements SettingChangerInterface<CommonSettingValue> {
    private final BaseActivity mActivity;
    private final OnChangedCommonSettingListener mOnChangedListener;
    private final CommonSettings mSettings;

    public CommonSettingChanger(Context context, CommonSettings settings, OnChangedCommonSettingListener onChangedListener) {
        this.mActivity = (BaseActivity) context;
        this.mSettings = settings;
        this.mOnChangedListener = onChangedListener;
    }

    @Override // com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface
    public void changeValue(TypedSettingItem<CommonSettingValue> item) {
        if (this.mSettings.get(item.getData().getCommonSettingKey()) == SaveDestination.EMMC && item.getData() == SaveDestination.SDCARD && StorageController.StorageState.UNGRANTED == this.mActivity.getStorageController().getStorageState(StorageUtil.CameraStorageType.EXTERNAL_CARD)) {
            String uuid = StorageUtil.getVolumeUuid(StorageUtil.CameraStorageType.EXTERNAL_CARD, this.mActivity.getApplicationContext());
            PermissionsUtil.requestSdCardGranted(this.mActivity, 16, uuid);
        } else {
            this.mSettings.set(item.getData());
            this.mOnChangedListener.onSettingChanged(item.getData());
        }
    }
}
