package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingButton extends SettingDialogItem {
    public static final String TAG = "SettingButton";
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    private static class ViewHolder {
        View mBackground;
        View mCenterDividerLeft;
        View mCenterDividerRight;
        View mContainer;
        View mDivider;
        ImageView mImage;
        TextView mText;

        private ViewHolder() {
        }
    }

    public SettingButton(Context context, SettingItem item) {
        super(item);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SettingButton.this.getView().isShown()) {
                    SettingButton.this.select(SettingButton.this.getItem());
                }
            }
        };
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = inflater.inflate(R.layout.setting_item_button, (ViewGroup) null);
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mDivider = this.mHolder.mContainer.findViewById(R.id.setting_divider);
        this.mHolder.mCenterDividerRight = this.mHolder.mContainer.findViewById(R.id.setting_center_divider_right);
        this.mHolder.mCenterDividerLeft = this.mHolder.mContainer.findViewById(R.id.setting_center_divider_left);
        this.mHolder.mImage = (ImageView) this.mHolder.mContainer.findViewById(R.id.icon);
        this.mHolder.mText = (TextView) this.mHolder.mContainer.findViewById(R.id.text);
        this.mHolder.mBackground.setClickable(true);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        Resources res = this.mHolder.mContainer.getContext().getResources();
        this.mHolder.mText.setText(getItem().getText(res));
        this.mHolder.mImage.setImageResource(getItem().getIconId());
        this.mHolder.mBackground.setClickable(true);
        this.mHolder.mBackground.setOnClickListener(this.mOnClickListener);
        this.mHolder.mBackground.setSelected(getItem().isSelected());
        this.mHolder.mBackground.getLayoutParams().width = -1;
        this.mHolder.mBackground.getLayoutParams().height = params.height;
        this.mHolder.mBackground.setContentDescription(getItem().getContentDescription(res));
        changeDrawableState(params).background(this.mHolder.mBackground).dividerHorizontal(this.mHolder.mDivider).dividerVertical(this.mHolder.mCenterDividerLeft, this.mHolder.mCenterDividerRight).apply();
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }
}