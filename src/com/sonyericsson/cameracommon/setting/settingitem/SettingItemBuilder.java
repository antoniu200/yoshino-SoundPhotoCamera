package com.sonyericsson.cameracommon.setting.settingitem;

import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SettingItemBuilder<T> {
    public static final String TAG = "SettingItemBuilder";
    private final T mData;
    private int mIconId = -1;
    private int mTextId = -1;
    private int mLongTextId = -1;
    private int mRestrictPopupId = -1;
    private String mAdditionalTextForAccessibility = "";
    private String mText = "";
    private String mSubText = null;
    private int mDialogItemType = -1;
    private SettingExecutorInterface<T> mExecutor = null;
    private List<SettingItem> mItems = null;
    private boolean mIsSelectable = true;
    private boolean mSelected = false;
    private boolean mIsSoundEnabled = true;

    private SettingItemBuilder(T data) {
        this.mData = data;
    }

    public static <T> SettingItemBuilder<T> build(T data) {
        return new SettingItemBuilder<>(data);
    }

    public SettingItem commit() {
        SettingItem item;
        if (this.mTextId == -1) {
            item = new TypedSettingItem(this.mData, this.mIconId, this.mText, this.mSubText, this.mLongTextId, this.mRestrictPopupId, this.mAdditionalTextForAccessibility, this.mDialogItemType, this.mExecutor, this.mIsSoundEnabled);
        } else {
            item = new TypedSettingItem(this.mData, this.mIconId, this.mTextId, this.mSubText, this.mLongTextId, this.mRestrictPopupId, this.mAdditionalTextForAccessibility, this.mDialogItemType, this.mExecutor, this.mIsSoundEnabled);
        }
        if (this.mItems != null) {
            for (SettingItem child : this.mItems) {
                item.getChildren().add(child);
            }
        }
        item.setSelectable(this.mIsSelectable);
        item.setSelected(this.mSelected);
        return item;
    }

    public SettingItemBuilder<T> iconId(int id) {
        this.mIconId = id;
        return this;
    }

    public SettingItemBuilder<T> textId(int id) {
        this.mTextId = id;
        return this;
    }

    public SettingItemBuilder<T> subText(String text) {
        this.mSubText = text;
        return this;
    }

    public SettingItemBuilder<T> longTextId(int id) {
        this.mLongTextId = id;
        return this;
    }

    public SettingItemBuilder<T> text(String text) {
        this.mText = text;
        return this;
    }

    public SettingItemBuilder<T> restrictPopupId(int id) {
        this.mRestrictPopupId = id;
        return this;
    }

    public SettingItemBuilder<T> additionalTextForAccessibility(String text) {
        this.mAdditionalTextForAccessibility = text;
        return this;
    }

    public SettingItemBuilder<T> dialogItemType(int type) {
        this.mDialogItemType = type;
        return this;
    }

    public SettingItemBuilder<T> executor(SettingExecutorInterface<T> executor) {
        this.mExecutor = executor;
        return this;
    }

    public SettingItemBuilder<T> item(SettingItem item) {
        if (this.mItems == null) {
            this.mItems = new ArrayList();
        }
        this.mItems.add(item);
        return this;
    }

    public SettingItemBuilder<T> selected(boolean value) {
        this.mSelected = value;
        return this;
    }

    public SettingItemBuilder<T> selectable(boolean value) {
        this.mIsSelectable = value;
        return this;
    }

    public SettingItemBuilder<T> enableSound(boolean value) {
        this.mIsSoundEnabled = value;
        return this;
    }
}