package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class SettingCategoryButton extends SettingDialogItem {
    public static final String TAG = "SettingCategoryButton";
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    private static class ViewHolder {
        View mBackground;
        TextView mCategory;
        View mContainer;
        View mDivider;
        TextView mValue;

        private ViewHolder() {
        }
    }

    public SettingCategoryButton(Context context, SettingItem item) {
        super(item);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingCategoryButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SettingCategoryButton.this.getView().isShown() && SettingCategoryButton.this.getItem().isSelectable()) {
                    SettingCategoryButton.this.select(SettingCategoryButton.this.getItem());
                }
            }
        };
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = inflater.inflate(R.layout.setting_item_category_button, (ViewGroup) null);
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mDivider = this.mHolder.mContainer.findViewById(R.id.setting_divider);
        this.mHolder.mCategory = (TextView) this.mHolder.mContainer.findViewById(R.id.category);
        this.mHolder.mValue = (TextView) this.mHolder.mContainer.findViewById(R.id.value);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) throws Resources.NotFoundException {
        String value;
        int textColor;
        Resources res = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mCategory.setText(getItem().getText(res));
        SettingItem selected = getSelectedItem();
        if (selected != null) {
            if (selected.getLongText(res) != null && selected.getLongText(res).length() > 0) {
                this.mHolder.mValue.setText(selected.getLongText(res));
            } else {
                this.mHolder.mValue.setText(selected.getText(res));
            }
            this.mHolder.mValue.setVisibility(0);
        } else {
            SettingItem item = getItem();
            if (item instanceof TypedSettingItem) {
                if (item.getLongText(res) != null && item.getLongText(res).length() > 0) {
                    value = item.getLongText(res);
                } else {
                    value = ((TypedSettingItem) item).getValueText();
                }
                if (value != null && value.length() > 0) {
                    this.mHolder.mValue.setText(value);
                    this.mHolder.mValue.setVisibility(0);
                } else {
                    this.mHolder.mValue.setVisibility(8);
                }
            } else {
                this.mHolder.mValue.setVisibility(8);
            }
        }
        this.mHolder.mBackground.setClickable(true);
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        if (23 <= Build.VERSION.SDK_INT) {
            if (getItem().isSelectable()) {
                textColor = parent.getResources().getColor(R.color.default_text_col, null);
            } else {
                textColor = parent.getResources().getColor(R.color.grayout_text_col, null);
            }
        } else {
            textColor = getItem().isSelectable() ? parent.getResources().getColor(R.color.default_text_col) : parent.getResources().getColor(R.color.grayout_text_col);
        }
        this.mHolder.mCategory.setTextColor(textColor);
        this.mHolder.mValue.setTextColor(textColor);
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(res));
        changeDrawableState(params).background(this.mHolder.mBackground).dividerHorizontal(this.mHolder.mDivider).apply();
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    private SettingItem getSelectedItem() {
        for (SettingItem item : getItem().getChildren()) {
            if (item.isSelectable() && item.isSelected()) {
                return item;
            }
        }
        return null;
    }
}