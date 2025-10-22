package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingEvSlider extends SettingDialogItem {
    public static final String TAG = "SettingEvSlider";
    private final int mBottomPadding;
    private final ViewHolder mHolder;
    private int mSelectedPosition;
    private final int mTopPadding;

    private static class ViewHolder {
        View mBackground;
        ViewGroup mContainer;
        ImageView mIndicator;
        ImageView mScaleNumber;

        private ViewHolder() {
        }
    }

    public SettingEvSlider(Context context, SettingItem item) {
        super(item);
        this.mTopPadding = context.getResources().getDimensionPixelSize(R.dimen.ev_slider_memory_top_padding);
        this.mBottomPadding = context.getResources().getDimensionPixelSize(R.dimen.ev_slider_memory_bottom_padding);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = new FrameLayout(context) { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingEvSlider.1
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean changed, int l, int t, int r, int b) {
                super.onLayout(changed, l, t, r, b);
                SettingEvSlider.this.updateIndicator(SettingEvSlider.this.getSelectedItemDisplyPosition());
            }
        };
        this.mHolder.mContainer.addView(inflater.inflate(R.layout.setting_item_ev_slider, (ViewGroup) null));
        this.mHolder.mBackground = this.mHolder.mContainer.findViewById(R.id.background);
        this.mHolder.mIndicator = (ImageView) this.mHolder.mContainer.findViewById(R.id.indicator);
        this.mHolder.mScaleNumber = (ImageView) this.mHolder.mContainer.findViewById(R.id.scale_number);
        this.mHolder.mBackground.setOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingEvSlider.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                        view.setPressed(true);
                        SettingEvSlider.this.updateIndicator(event.getY(), event.getAction());
                        return true;
                    case 1:
                        if (view.isPressed()) {
                            SettingEvSlider.this.updateIndicator(event.getY(), event.getAction());
                        }
                        view.setPressed(false);
                        break;
                    case 2:
                        if (view.isPressed()) {
                            SettingEvSlider.this.updateIndicator(event.getY(), event.getAction());
                            break;
                        }
                        break;
                }
                return false;
            }
        });
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        updateIndicator(getSelectedItemDisplyPosition());
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSelectedItemDisplyPosition() {
        for (int position = 0; position < getValueItemCount(); position++) {
            SettingItem item = getValueItem(position);
            if (item.isSelected()) {
                this.mSelectedPosition = position;
                return this.mSelectedPosition;
            }
        }
        return 0;
    }

    private SettingItem getValueItem(int position) {
        return getItem().getChildren().get((getValueItemCount() - position) - 1);
    }

    private int getValueItemCount() {
        return getItem().getChildren().size();
    }

    private float getMemoryStepSize() {
        return ((this.mHolder.mBackground.getMeasuredHeight() - this.mTopPadding) - this.mBottomPadding) / (getItem().getChildren().size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIndicator(float y, int action) {
        int position = (int) ((y - this.mTopPadding) / getMemoryStepSize());
        updateIndicator(Math.min(Math.max(position, 0), getValueItemCount() - 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIndicator(int position) {
        float currentposition = (getMemoryStepSize() * position) + this.mTopPadding;
        float indicatorY = currentposition - (this.mHolder.mIndicator.getMeasuredHeight() / 2.0f);
        this.mHolder.mIndicator.setY(indicatorY);
        if (position != this.mSelectedPosition) {
            for (SettingItem item : getItem().getChildren()) {
                item.setSelected(false);
            }
            getValueItem(position).select();
        }
        this.mSelectedPosition = position;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void setUiOrientation(int orientation) {
        if (orientation == 2) {
            this.mHolder.mBackground.setBackgroundResource(R.drawable.cam_ev_level_dialog_scale_land_icn);
            this.mHolder.mScaleNumber.setImageResource(R.drawable.cam_ev_level_dialog_scale_number_land_icn);
            this.mHolder.mIndicator.setImageResource(R.drawable.setting_ev_indicator_selector_land);
        } else {
            this.mHolder.mBackground.setBackgroundResource(R.drawable.cam_ev_level_dialog_scale_port_icn);
            this.mHolder.mScaleNumber.setImageResource(R.drawable.cam_ev_level_dialog_scale_number_port_icn);
            this.mHolder.mIndicator.setImageResource(R.drawable.setting_ev_indicator_selector_port);
        }
    }
}