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
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* loaded from: classes.dex */
public class SettingValueButton extends SettingDialogItem {
    public static final String TAG = "SettingValueButton";
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    private static class ViewHolder {
        View mBackground;
        View mContainer;
        View mDivider;
        TextView mText;

        private ViewHolder() {
        }
    }

    public SettingValueButton(Context context, SettingItem item) {
        super(item);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingValueButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SettingValueButton.this.getView().isShown() && SettingValueButton.this.getItem().isSelectable()) {
                    SettingValueButton.this.select(SettingValueButton.this.getItem());
                }
            }
        };
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = inflater.inflate(R.layout.setting_item_value_button, (ViewGroup) null);
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mDivider = this.mHolder.mContainer.findViewById(R.id.setting_divider);
        this.mHolder.mText = (TextView) this.mHolder.mContainer.findViewById(R.id.title);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) throws Resources.NotFoundException {
        int textColor;
        Resources res = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mText.setText(getItem().getText(res));
        if (23 <= Build.VERSION.SDK_INT) {
            if (getItem().isSelectable()) {
                textColor = parent.getResources().getColor(R.color.default_text_col, null);
            } else {
                textColor = parent.getResources().getColor(R.color.grayout_text_col, null);
            }
        } else {
            textColor = getItem().isSelectable() ? parent.getResources().getColor(R.color.default_text_col) : parent.getResources().getColor(R.color.grayout_text_col);
        }
        this.mHolder.mText.setTextColor(textColor);
        this.mHolder.mBackground.setClickable(true);
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(getItem().isSelected());
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(res));
        this.mHolder.mBackground.getLayoutParams().width = -1;
        this.mHolder.mBackground.getLayoutParams().height = params.height;
        boolean isMirrored = CommonUtility.isMirroringRequired(this.mHolder.mContainer.getContext());
        if (isMirrored) {
            this.mHolder.mText.setGravity(21);
        } else {
            this.mHolder.mText.setGravity(19);
        }
        changeDrawableState(params).background(this.mHolder.mBackground).dividerHorizontal(this.mHolder.mDivider).apply();
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }
}