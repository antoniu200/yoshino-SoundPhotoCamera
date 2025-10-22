package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.widget.CategorySwitch;

/* loaded from: classes.dex */
public class SettingCategorySwitch extends SettingDialogItem {
    public static final String TAG = "SettingCategorySwitch";
    private final ViewHolder mHolder;
    private final CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;

    private final class SwitchOnCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {
        private SwitchOnCheckedChangeListener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (SettingCategorySwitch.this.getView().isShown()) {
                if (isChecked) {
                    SettingCategorySwitch.this.select(SettingCategorySwitch.this.getOnItem());
                } else {
                    SettingCategorySwitch.this.select(SettingCategorySwitch.this.getOffItem());
                }
            }
        }
    }

    private static class ViewHolder {
        View mContainer;
        View mDivider;
        CategorySwitch mSwitch;

        private ViewHolder() {
        }
    }

    public SettingCategorySwitch(Context context, SettingItem item) {
        super(item);
        this.mOnCheckedChangeListener = new SwitchOnCheckedChangeListener();
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = inflater.inflate(R.layout.setting_item_category_switch, (ViewGroup) null);
        this.mHolder.mDivider = this.mHolder.mContainer.findViewById(R.id.setting_divider);
        this.mHolder.mSwitch = (CategorySwitch) this.mHolder.mContainer.findViewById(R.id.switch_layout);
        this.mHolder.mContainer.setOnClickListener(new SwitchOnClickListener());
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        Resources res = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mSwitch.setText(getItem().getText(res));
        this.mHolder.mContainer.setClickable(true);
        this.mHolder.mSwitch.setEnabled(getItem().isSelectable());
        this.mHolder.mContainer.setContentDescription(getItem().getContentDescription(res));
        this.mHolder.mSwitch.setOnCheckedChangeListener(null);
        this.mHolder.mSwitch.setChecked(getOnItem().isSelected());
        this.mHolder.mSwitch.setOnCheckedChangeListener(this.mOnCheckedChangeListener);
        changeDrawableState(params).dividerHorizontal(this.mHolder.mDivider).apply();
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    public SettingItem getOnItem() {
        return getItem().getChildren().get(0);
    }

    public SettingItem getOffItem() {
        return getItem().getChildren().get(1);
    }

    private final class SwitchOnClickListener implements View.OnClickListener {
        private SwitchOnClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingCategorySwitch.this.mHolder.mSwitch.changeState();
        }
    }
}