package com.sonyericsson.cameracommon.setting.settingitem;

import android.content.res.Resources;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TypedSettingItem<T> implements SettingItem {
    public static final String TAG = "TypedSettingItem";
    private final String mAdditionalTextForAccessibility;
    private final List<SettingItem> mChildren;
    private final T mData;
    private final int mDialogItemType;
    private final SettingExecutorInterface<T> mExecutor;
    private final int mIconId;
    private boolean mIsSelectable;
    private boolean mIsSelected;
    private final boolean mIsSoundEnabled;
    private final int mLongTextId;
    private OnItemSelectedListener mOnSettingItemSelectedListener;
    private final int mRestrictMessagePopupId;
    private final String mSubText;
    private final String mText;
    private final int mTextId;

    public TypedSettingItem(T data, int iconId, int labelId, String subText, int longTextId, int restrictMessagePopupId, String additionalTextForAccessibility, int dialogItemType, SettingExecutorInterface<T> executor, boolean isSoundEnable) {
        this.mData = data;
        this.mTextId = labelId;
        this.mText = "";
        this.mIconId = iconId;
        this.mDialogItemType = dialogItemType;
        this.mExecutor = executor;
        this.mIsSoundEnabled = isSoundEnable;
        this.mRestrictMessagePopupId = restrictMessagePopupId;
        this.mChildren = new ArrayList();
        this.mSubText = subText;
        this.mLongTextId = longTextId;
        this.mAdditionalTextForAccessibility = additionalTextForAccessibility;
        this.mIsSelected = false;
        this.mIsSelectable = false;
        this.mOnSettingItemSelectedListener = null;
    }

    public TypedSettingItem(T data, int iconId, String text, String subText, int longTextId, int restrictMessagePopupId, String additionalTextForAccessibility, int dialogItemType, SettingExecutorInterface<T> executor, boolean isSoundEnable) {
        this.mData = data;
        this.mTextId = -1;
        this.mText = text;
        this.mSubText = subText;
        this.mLongTextId = longTextId;
        this.mIconId = iconId;
        this.mRestrictMessagePopupId = restrictMessagePopupId;
        this.mDialogItemType = dialogItemType;
        this.mAdditionalTextForAccessibility = additionalTextForAccessibility;
        this.mExecutor = executor;
        this.mIsSoundEnabled = isSoundEnable;
        this.mChildren = new ArrayList();
        this.mIsSelected = false;
        this.mIsSelectable = false;
        this.mOnSettingItemSelectedListener = null;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public String getText(Resources resources) {
        return this.mTextId == -1 ? this.mText : resources.getString(this.mTextId);
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public String getSubText(Resources resources) {
        return this.mSubText;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public String getLongText(Resources resources) {
        if (this.mLongTextId == -1) {
            return null;
        }
        return resources.getString(this.mLongTextId);
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public String getContentDescription(Resources resources) {
        StringBuilder description = new StringBuilder();
        if (this.mTextId != -1) {
            description.append(resources.getString(this.mTextId));
        } else {
            description.append(this.mText);
        }
        if (this.mAdditionalTextForAccessibility != null && !this.mAdditionalTextForAccessibility.isEmpty()) {
            description.append(' ');
            description.append(this.mAdditionalTextForAccessibility);
        }
        if (!isSelectable()) {
            description.append(' ');
            description.append(resources.getString(R.string.cam_strings_accessibility_not_configurable_txt));
        }
        return description.toString();
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public int getIconId() {
        return this.mIconId;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public int getRestrictMessagePopupId() {
        return this.mRestrictMessagePopupId;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public boolean isSelected() {
        return this.mIsSelected;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public boolean isSelectable() {
        return this.mIsSelectable;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public void setSelected(boolean value) {
        this.mIsSelected = value;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public void setSelectable(boolean value) {
        this.mIsSelectable = value;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public int getDialogItemType() {
        return this.mDialogItemType;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public List<SettingItem> getChildren() {
        return this.mChildren;
    }

    public T getData() {
        return this.mData;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public void select() {
        this.mIsSelected = true;
        if (this.mOnSettingItemSelectedListener != null) {
            this.mOnSettingItemSelectedListener.onItemSelected(this);
        }
        if (this.mExecutor != null) {
            this.mExecutor.onExecute(this);
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public void setOnSelectedListener(OnItemSelectedListener listener) {
        this.mOnSettingItemSelectedListener = listener;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public boolean compareData(SettingItem item) {
        if (!(item instanceof TypedSettingItem)) {
            return false;
        }
        TypedSettingItem<?> other = (TypedSettingItem) item;
        return this.mData == other.mData;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public boolean compareData(Object data) {
        return this.mData == data;
    }

    public String getValueText() {
        return this.mAdditionalTextForAccessibility;
    }

    @Override // com.sonyericsson.cameracommon.setting.settingitem.SettingItem
    public boolean isSoundEnabled() {
        return this.mIsSoundEnabled;
    }
}