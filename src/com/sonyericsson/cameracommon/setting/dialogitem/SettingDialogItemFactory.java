package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingDialogItemFactory {
    public static final int BUTTON = 1;
    public static final int CATEGORY_BUTTON = 3;
    public static final int CATEGORY_SWITCH = 4;
    public static final int CONTROL_SWITCH = 8;
    public static final int END_OF_TYPE_LIST = 9;
    public static final int ICON = 0;
    public static final int MENU = 6;
    public static final int SLIDER = 5;
    public static final int VALUE_BUTTON = 2;
    public static final int VERTICAL_ICON_LIST = 7;

    public int getDialogItemTypeCount() {
        return 9;
    }

    public SettingDialogItem create(SettingItem item, ViewGroup parent) {
        Context context = parent.getContext();
        if (item.getDialogItemType() == 1) {
            return new SettingButton(context, item);
        }
        if (item.getDialogItemType() == 0) {
            return new SettingIcon(context, item);
        }
        if (item.getDialogItemType() == 2) {
            return new SettingValueButton(context, item);
        }
        if (item.getDialogItemType() == 3) {
            return new SettingCategoryButton(context, item);
        }
        if (item.getDialogItemType() == 4) {
            return new SettingCategorySwitch(context, item);
        }
        if (item.getDialogItemType() == 5) {
            return new SettingEvSlider(context, item);
        }
        if (item.getDialogItemType() == 7) {
            return new SettingIconList(context, item);
        }
        if (item.getDialogItemType() == 6) {
            return new SettingIcon(context, item);
        }
        if (item.getDialogItemType() == 8) {
            return new SettingControlSwitch(context, item);
        }
        throw new IllegalArgumentException("The specified type is unknown. type:" + item.getDialogItemType());
    }
}