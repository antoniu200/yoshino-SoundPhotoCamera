package com.sonyericsson.cameracommon.setting.settingitem;

import android.content.res.Resources;
import java.util.List;

/* loaded from: classes.dex */
public interface SettingItem {
    boolean compareData(SettingItem settingItem);

    boolean compareData(Object obj);

    List<SettingItem> getChildren();

    String getContentDescription(Resources resources);

    int getDialogItemType();

    int getIconId();

    String getLongText(Resources resources);

    int getRestrictMessagePopupId();

    String getSubText(Resources resources);

    String getText(Resources resources);

    boolean isSelectable();

    boolean isSelected();

    boolean isSoundEnabled();

    void select();

    void setOnSelectedListener(OnItemSelectedListener onItemSelectedListener);

    void setSelectable(boolean z);

    void setSelected(boolean z);
}