package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
public class SettingIconList extends SettingDialogItem {
    public static final String TAG = "SettingIconList";
    private final ViewHolder mHolder;

    private static class ViewHolder {
        ViewGroup mContainer;
        LinearLayout mList;

        private ViewHolder() {
        }
    }

    public SettingIconList(Context context, SettingItem item) {
        super(item);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = (ViewGroup) inflater.inflate(R.layout.setting_item_icon_list, (ViewGroup) null);
        this.mHolder.mList = (LinearLayout) this.mHolder.mContainer.findViewById(R.id.list);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        int itemWidth = this.mHolder.mList.getLayoutParams().height / Math.max(1, getItem().getChildren().size());
        this.mHolder.mList.removeAllViews();
        for (SettingItem item : getItem().getChildren()) {
            ImageView view = createIcon(item);
            this.mHolder.mList.addView(view);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.width = itemWidth;
            layoutParams.height = 0;
            layoutParams.weight = 1.0f;
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void setUiOrientation(int orientation) {
        float angle = RotationUtil.getAngle(orientation);
        for (int i = 0; i < this.mHolder.mList.getChildCount(); i++) {
            this.mHolder.mList.getChildAt(i).setRotation(angle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSelected(SettingItem selectedItem) {
        for (SettingItem item : getItem().getChildren()) {
            if (item != selectedItem) {
                item.setSelected(false);
            }
        }
        selectedItem.select();
        for (int i = 0; i < this.mHolder.mList.getChildCount(); i++) {
            View v = this.mHolder.mList.getChildAt(i);
            if (v.getTag() == selectedItem) {
                v.setSelected(true);
            } else {
                v.setSelected(false);
            }
        }
    }

    private ImageView createIcon(final SettingItem item) {
        Context context = this.mHolder.mContainer.getContext();
        ImageView image = new ImageView(context);
        image.setTag(item);
        image.setSelected(item.isSelected());
        image.setImageResource(item.getIconId());
        image.setBackgroundResource(R.drawable.setting_item_icon_selector);
        image.setContentDescription(item.getContentDescription(context.getResources()));
        image.setClickable(true);
        image.setOnClickListener(new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingIconList.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SettingIconList.this.getView().isShown()) {
                    SettingIconList.this.updateSelected(item);
                }
            }
        });
        return image;
    }
}