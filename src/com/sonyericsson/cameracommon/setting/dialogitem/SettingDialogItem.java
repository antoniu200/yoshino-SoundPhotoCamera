package com.sonyericsson.cameracommon.setting.dialogitem;

import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public abstract class SettingDialogItem {
    private SettingItem mItem;

    public abstract View getView();

    public abstract void update(ViewGroup viewGroup, SettingAdapter.ItemLayoutParams itemLayoutParams);

    public SettingDialogItem(SettingItem item) {
        this.mItem = item;
    }

    public void setItem(SettingItem item) {
        this.mItem = item;
    }

    public SettingItem getItem() {
        return this.mItem;
    }

    public void select(SettingItem item) {
        item.select();
    }

    public void setUiOrientation(int orientation) {
    }

    public void setClickable(boolean isClickable) {
    }

    protected DrawableStateChanger changeDrawableState(SettingAdapter.ItemLayoutParams params) {
        return new DrawableStateChanger(params);
    }
}