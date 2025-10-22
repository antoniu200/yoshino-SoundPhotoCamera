package com.sonyericsson.cameracommon.setting.shortcut;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class SettingShortcut {
    public static final String TAG = "SettingShortcut";
    private final ViewGroup mContainer;
    private final int mIconSize;
    private final ListView mItems;
    private float mRotation;
    private final DataSetObserver mAdapterObserver = new DataSetObserver() { // from class: com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut.2
        @Override // android.database.DataSetObserver
        public void onChanged() {
            SettingShortcut.this.registerOnItemSelectedListener();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            SettingShortcut.this.registerOnItemSelectedListener();
        }
    };
    private OnItemSelectedListener mItemSelectedListener = new OnItemSelectedListener() { // from class: com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut.3
        @Override // com.sonyericsson.cameracommon.setting.settingitem.OnItemSelectedListener
        public void onItemSelected(SettingItem item) {
            SettingShortcut.this.setSelected(item);
        }
    };
    private ViewGroup.OnHierarchyChangeListener mHierarchyChangeListener = new ViewGroup.OnHierarchyChangeListener() { // from class: com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut.4
        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View parent, View child) {
            child.setRotation(SettingShortcut.this.mRotation);
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View arg0, View arg1) {
        }
    };

    public SettingShortcut(Context context, ViewGroup parent, ListView items) {
        Resources res = context.getResources();
        this.mIconSize = res.getDimensionPixelSize(R.dimen.shortcut_icon_background_width);
        this.mContainer = new FrameLayout(context) { // from class: com.sonyericsson.cameracommon.setting.shortcut.SettingShortcut.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                int height = View.MeasureSpec.getSize(heightMeasureSpec);
                SettingShortcut.this.updateItemHeight(height);
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
        };
        parent.addView(this.mContainer);
        this.mContainer.getLayoutParams().width = -2;
        this.mContainer.getLayoutParams().height = -1;
        if (items != null) {
            this.mItems = items;
        } else {
            this.mItems = new ListView(context);
        }
        this.mItems.setEnabled(false);
        this.mItems.setClickable(false);
        this.mItems.setLongClickable(false);
        this.mItems.setFocusable(false);
        this.mItems.setFocusableInTouchMode(false);
        this.mItems.setScrollBarSize(0);
        this.mItems.setDividerHeight(0);
        this.mContainer.addView(this.mItems);
        this.mItems.getLayoutParams().width = this.mIconSize;
        this.mItems.getLayoutParams().height = -1;
        ((FrameLayout.LayoutParams) this.mItems.getLayoutParams()).gravity = 1;
        this.mItems.setOnHierarchyChangeListener(this.mHierarchyChangeListener);
    }

    public Adapter getAdapter() {
        return this.mItems.getAdapter();
    }

    public void setAdapter(SettingAdapter adapter) {
        updateItemHeight(this.mContainer.getMeasuredHeight());
        SettingItem selectedItem = getSelected();
        this.mItems.setAdapter((ListAdapter) adapter);
        if (selectedItem != null) {
            setSelected(selectedItem);
        }
        adapter.registerDataSetObserver(this.mAdapterObserver);
        registerOnItemSelectedListener();
    }

    public void updateAdapter(SettingAdapter adapter) {
        if (getAdapter() == null) {
            setAdapter(adapter);
            return;
        }
        SettingItem selectedItem = getSelected();
        SettingAdapter currentAdapter = (SettingAdapter) getAdapter();
        currentAdapter.clear();
        for (int i = 0; i < adapter.getCount(); i++) {
            currentAdapter.add(adapter.getItem(i));
        }
        if (selectedItem != null) {
            setSelected(selectedItem);
        }
        updateItemHeight(this.mContainer.getMeasuredHeight());
        registerOnItemSelectedListener();
    }

    public void show() {
        this.mItems.setVisibility(0);
    }

    public void hide() {
        this.mItems.setVisibility(4);
    }

    public boolean isShown() {
        return this.mItems.isShown();
    }

    public void setSensorOrientation(int orientation) {
        this.mRotation = RotationUtil.getAngle(orientation);
        for (int i = 0; i < this.mItems.getChildCount(); i++) {
            this.mItems.getChildAt(i).setRotation(RotationUtil.getAngle(orientation));
        }
    }

    public void clearSelected() {
        setSelected((SettingItem) null);
    }

    public <T> void setSelected(T itemData) {
        setSelected(SettingItemBuilder.build(itemData).commit());
    }

    public boolean getSelectedItemIconVisibleRect(Rect rect) {
        SettingAdapter adapter = (SettingAdapter) getAdapter();
        if (adapter == null) {
            return false;
        }
        for (int i = 0; i < adapter.getCount(); i++) {
            SettingItem item = adapter.getItem(i);
            if (item.isSelected()) {
                return computeShortcutIconRect(i, adapter.getCount(), rect);
            }
        }
        return false;
    }

    private boolean computeShortcutIconRect(int iconIndex, int iconCount, Rect iconRect) {
        Rect shortcutTray = new Rect();
        if (!this.mItems.getGlobalVisibleRect(shortcutTray)) {
            return false;
        }
        Rect container = new Rect(0, 0, shortcutTray.width(), shortcutTray.height() / iconCount);
        container.offset(shortcutTray.left, (shortcutTray.height() * iconIndex) / iconCount);
        iconRect.set(container.centerX() - (this.mIconSize / 2), container.centerY() - (this.mIconSize / 2), container.centerX() + (this.mIconSize / 2), container.centerY() + (this.mIconSize / 2));
        return true;
    }

    private SettingItem getSelected() {
        SettingAdapter adapter = (SettingAdapter) getAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                SettingItem item = adapter.getItem(i);
                if (item.isSelected()) {
                    return item;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateItemHeight(int containerHeight) {
        SettingAdapter adapter;
        if (containerHeight > 0 && (adapter = (SettingAdapter) getAdapter()) != null && adapter.getCount() > 0) {
            adapter.setItemHeight(containerHeight / adapter.getCount());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSelected(SettingItem selectedItem) {
        SettingAdapter adapter = (SettingAdapter) getAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                SettingItem item = adapter.getItem(i);
                if (item.compareData(selectedItem)) {
                    item.setSelected(true);
                } else {
                    item.setSelected(false);
                }
            }
            adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerOnItemSelectedListener() {
        SettingAdapter adapter = (SettingAdapter) getAdapter();
        if (adapter != null) {
            for (int i = 0; i < adapter.getCount(); i++) {
                adapter.getItem(i).setOnSelectedListener(this.mItemSelectedListener);
            }
        }
    }
}