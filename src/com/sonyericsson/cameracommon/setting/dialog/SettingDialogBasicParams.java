package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import com.sonymobile.android.addoncamera.soundphoto.R;
/* loaded from: classes.dex */
public enum SettingDialogBasicParams {
    SHORTCUT_DIALOG_PARAMS(R.dimen.shortcut_dialog_item_height, R.dimen.shortcut_dialog_padding, R.drawable.cam_shortcut_dialog_background_icn),
    SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS(R.dimen.second_layer_dialog_item_double_line_height, R.dimen.second_layer_dialog_padding, R.drawable.cam_setting_sub_dialog_background_icn),
    SECOND_LAYER_DIALOG_DOUBLE_ITEM_PARAMS(R.dimen.second_layer_dialog_item_double_line_height, R.dimen.second_layer_dialog_padding, R.drawable.cam_setting_sub_dialog_background_icn);

    public static final String TAG = "SettingDialogBasicParams";
    private final int mBackgroundId;
    private final int mItemHeightResId;
    private final int mPaddingResId;

    SettingDialogBasicParams(int itemHeight, int padding, int backgroundId) {
        this.mItemHeightResId = itemHeight;
        this.mPaddingResId = padding;
        this.mBackgroundId = backgroundId;
    }

    public int getItemHeight(Context context) {
        return context.getResources().getDimensionPixelSize(this.mItemHeightResId);
    }

    public int getPadding(Context context) {
        return context.getResources().getDimensionPixelSize(this.mPaddingResId);
    }

    public int getBackgroundId() {
        return this.mBackgroundId;
    }
}