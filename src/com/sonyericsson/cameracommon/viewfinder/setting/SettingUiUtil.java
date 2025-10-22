package com.sonyericsson.cameracommon.viewfinder.setting;

import android.os.Handler;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingUiUtil {
    private final Object mMenuShortcutTag;
    private final SettingUi mUi;

    public SettingUiUtil(SettingUi ui, Object menuShortcutTag) {
        this.mUi = ui;
        this.mMenuShortcutTag = menuShortcutTag;
    }

    public void openMenuDialogAndSelectItem(SettingAdapter adapter, Object selectItemData, SettingTabs.Tab[] tabs, SettingTabs.Tab selectedTab, int menuDialogRowCount) {
        this.mUi.selectShortcut(this.mMenuShortcutTag);
        SettingItem selectItem = null;
        int i = 0;
        while (true) {
            if (i >= adapter.getCount()) {
                break;
            }
            if (!adapter.getItem(i).compareData(selectItemData)) {
                i++;
            } else {
                SettingItem selectItem2 = adapter.getItem(i);
                selectItem = selectItem2;
                selectItem.setSelected(true);
                break;
            }
        }
        this.mUi.openMenuDialog(adapter, tabs, selectedTab, this.mMenuShortcutTag, menuDialogRowCount);
        if (selectItem != null) {
            final SettingItem requestToSelect = selectItem;
            new Handler().post(new Runnable() { // from class: com.sonyericsson.cameracommon.viewfinder.setting.SettingUiUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SettingUiUtil.this.mUi.mDialogStack.isOpened(SettingUiUtil.this.mMenuShortcutTag)) {
                        requestToSelect.select();
                    }
                }
            });
        }
    }

    public void openMenuDialogAndSelectItem(SettingAdapter adapter, Object selectItemData, int titleTextResource, int menuDialogRowCount) {
        this.mUi.selectShortcut(this.mMenuShortcutTag);
        SettingItem selectItem = null;
        int i = 0;
        while (true) {
            if (i >= adapter.getCount()) {
                break;
            }
            if (!adapter.getItem(i).compareData(selectItemData)) {
                i++;
            } else {
                SettingItem selectItem2 = adapter.getItem(i);
                selectItem = selectItem2;
                selectItem.setSelected(true);
                break;
            }
        }
        this.mUi.openMenuDialog(adapter, titleTextResource, this.mMenuShortcutTag, menuDialogRowCount);
        if (selectItem != null) {
            final SettingItem requestToSelect = selectItem;
            new Handler().post(new Runnable() { // from class: com.sonyericsson.cameracommon.viewfinder.setting.SettingUiUtil.2
                @Override // java.lang.Runnable
                public void run() {
                    if (SettingUiUtil.this.mUi.mDialogStack.isOpened(SettingUiUtil.this.mMenuShortcutTag)) {
                        requestToSelect.select();
                    }
                }
            });
        }
    }
}