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
import com.sonyericsson.cameracommon.widget.ControlSwitch;

/* loaded from: classes.dex */
public class SettingControlSwitch extends SettingDialogItem {
    public static final String TAG = "SettingControlSwitch";
    private final ViewHolder mHolder;
    private final CompoundButton.OnCheckedChangeListener mOnCheckedChangeListener;
    private final Resources mResources;

    private final class SwitchOnCheckedChangeListener implements CompoundButton.OnCheckedChangeListener {
        private SwitchOnCheckedChangeListener() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (SettingControlSwitch.this.getView().isShown()) {
                if (isChecked) {
                    SettingControlSwitch.this.select(SettingControlSwitch.this.getOnItem());
                } else {
                    SettingControlSwitch.this.select(SettingControlSwitch.this.getOffItem());
                }
                SettingControlSwitch.this.updateContentDescription(isChecked);
            }
        }
    }

    private static class ViewHolder {
        View mContainer;
        ControlSwitch mSwitch;

        private ViewHolder() {
        }
    }

    public SettingControlSwitch(Context context, SettingItem item) {
        super(item);
        this.mOnCheckedChangeListener = new SwitchOnCheckedChangeListener();
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = inflater.inflate(R.layout.setting_item_control_switch, (ViewGroup) null);
        this.mHolder.mSwitch = (ControlSwitch) this.mHolder.mContainer.findViewById(R.id.switch_layout);
        this.mResources = this.mHolder.mContainer.getContext().getResources();
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        this.mHolder.mSwitch.setText(getItem().getText(this.mResources));
        this.mHolder.mContainer.setClickable(true);
        this.mHolder.mSwitch.setEnabled(getItem().isSelectable());
        updateContentDescription(getOnItem().isSelected());
        this.mHolder.mSwitch.setOnCheckedChangeListener(null);
        this.mHolder.mSwitch.setChecked(getOnItem().isSelected());
        this.mHolder.mSwitch.setOnCheckedChangeListener(this.mOnCheckedChangeListener);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void setUiOrientation(int orientation) {
        this.mHolder.mSwitch.setUiOrientation(orientation);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SettingItem getOnItem() {
        return getItem().getChildren().get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SettingItem getOffItem() {
        return getItem().getChildren().get(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentDescription(boolean isChecked) {
        String contentDescription;
        String contentDescription2 = getItem().getText(this.mResources);
        if (isChecked) {
            contentDescription = contentDescription2 + " " + getOnItem().getContentDescription(this.mResources);
        } else {
            contentDescription = contentDescription2 + " " + getOffItem().getContentDescription(this.mResources);
        }
        this.mHolder.mContainer.setContentDescription(contentDescription);
    }
}