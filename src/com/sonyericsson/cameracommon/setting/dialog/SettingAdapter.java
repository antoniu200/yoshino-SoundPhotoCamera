package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.GridView;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SettingAdapter extends ArrayAdapter<SettingItem> {
    public static final int INVALID_VALUE = -1;
    public static final String TAG = "SettingAdapter";
    private final SettingDialogItemFactory mDialogItemFactory;
    private int mItemHeight;
    private boolean mSetRoundBackgroundTop;

    public SettingAdapter(Context context, List<SettingItem> objects, SettingDialogItemFactory dialogItemFactory) {
        super(context, 0, objects);
        this.mDialogItemFactory = dialogItemFactory;
        this.mSetRoundBackgroundTop = false;
        this.mItemHeight = -1;
    }

    public SettingAdapter(Context context, SettingDialogItemFactory dialogItemFactory) {
        this(context, new ArrayList(), dialogItemFactory);
    }

    public SettingAdapter(Context context) {
        this(context, new ArrayList(), new SettingDialogItemFactory());
    }

    public void setItemHeight(int height) {
        if (this.mItemHeight != height) {
            this.mItemHeight = height;
            notifyDataSetChanged();
        }
    }

    public void setRoundTopItemBackground(boolean value) {
        if (this.mSetRoundBackgroundTop != value) {
            this.mSetRoundBackgroundTop = value;
            notifyDataSetChanged();
        }
    }

    public <T> void selectByData(T itemData) {
        SettingItem target = SettingItemBuilder.build(itemData).commit();
        for (int i = 0; i < getCount(); i++) {
            SettingItem item = getItem(i);
            if (item.isSelectable()) {
                if (target.compareData(item)) {
                    item.setSelected(true);
                } else {
                    item.setSelected(false);
                }
            }
        }
    }

    public void selectByItem(SettingItem target) {
        if (target != null) {
            for (int i = 0; i < getCount(); i++) {
                SettingItem item = getItem(i);
                if (target.compareData(item)) {
                    item.setSelected(true);
                } else {
                    item.setSelected(false);
                }
            }
        }
    }

    public SettingItem getSelected() {
        for (int i = 0; i < getCount(); i++) {
            SettingItem item = getItem(i);
            if (item.isSelected()) {
                return item;
            }
        }
        return null;
    }

    public int getSelectedPosition() {
        for (int i = 0; i < getCount(); i++) {
            SettingItem item = getItem(i);
            if (item.isSelected()) {
                return i;
            }
        }
        return 0;
    }

    public static class ItemLayoutParams {
        public final boolean bottom;
        public final int height;
        public final boolean left;
        public final boolean right;
        public final boolean top;

        public ItemLayoutParams(int height, boolean top, boolean bottom, boolean left, boolean right) {
            this.height = height;
            this.top = top;
            this.bottom = bottom;
            this.left = left;
            this.right = right;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        SettingItem item = getItem(position);
        ItemLayoutParams params = generateItemLayoutParams(parent, position);
        if (convertView != null && (convertView.getTag() instanceof SettingDialogItem)) {
            SettingDialogItem itemView = (SettingDialogItem) convertView.getTag();
            if (itemView.getItem() != item) {
                itemView.setItem(item);
            }
            itemView.update(parent, params);
            return itemView.getView();
        }
        SettingDialogItem itemView2 = this.mDialogItemFactory.create(item, parent);
        itemView2.update(parent, params);
        itemView2.getView().setTag(itemView2);
        return itemView2.getView();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        Object obj = getItem(position);
        return obj instanceof SettingItem ? ((SettingItem) obj).getDialogItemType() : super.getItemViewType(position);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mDialogItemFactory.getDialogItemTypeCount();
    }

    private ItemLayoutParams generateItemLayoutParams(ViewGroup parent, int itemPosition) {
        int columnCount = 1;
        if (parent instanceof GridView) {
            columnCount = ((GridView) parent).getNumColumns();
        }
        int lastRow = (getCount() / columnCount) - 1;
        int thisRow = itemPosition / columnCount;
        int lastColumn = columnCount - 1;
        int thisColumn = itemPosition % columnCount;
        return new ItemLayoutParams(this.mItemHeight, this.mSetRoundBackgroundTop && thisRow == 0, thisRow == lastRow, thisColumn == 0, thisColumn == lastColumn);
    }
}