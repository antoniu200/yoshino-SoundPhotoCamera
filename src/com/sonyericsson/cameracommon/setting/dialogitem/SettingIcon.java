package com.sonyericsson.cameracommon.setting.dialogitem;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;

/* loaded from: classes.dex */
public class SettingIcon extends SettingDialogItem {
    private static final int DISABLED_FILTER = R.color.disabled_filter;
    private static final int ICON_FADE_SWITCH_ANIMATION_DURATION = 250;
    private static final int ICON_FADE_SWITCH_ANIMATION_OFFSET = 50;
    public static final String TAG = "SettingIcon";
    private final ViewHolder mHolder;
    private final View.OnClickListener mOnClickListener;

    static class ViewHolder {
        FrameLayout mBackground;
        FrameLayout mContainer;
        ImageView mIcon;
        int mIconRes;

        ViewHolder() {
        }
    }

    public SettingIcon(Context context, SettingItem item) {
        super(item);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.setting.dialogitem.SettingIcon.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SettingIcon.this.getView().isShown() && SettingIcon.this.getItem().isSelectable()) {
                    SettingIcon.this.select(SettingIcon.this.getItem());
                }
            }
        };
        this.mHolder = new ViewHolder();
        this.mHolder.mContainer = new FrameLayout(context);
        this.mHolder.mBackground = new FrameLayout(context);
        this.mHolder.mContainer.addView(this.mHolder.mBackground);
        this.mHolder.mBackground.getLayoutParams().width = -2;
        this.mHolder.mBackground.getLayoutParams().height = -2;
        this.mHolder.mIcon = new ImageView(context);
        this.mHolder.mBackground.addView(this.mHolder.mIcon);
        this.mHolder.mIcon.getLayoutParams().width = context.getResources().getDimensionPixelSize(R.dimen.shortcut_icon_background_width);
        this.mHolder.mIcon.getLayoutParams().height = context.getResources().getDimensionPixelSize(R.dimen.shortcut_icon_background_height);
        this.mHolder.mIcon.setScaleType(ImageView.ScaleType.CENTER);
        ((FrameLayout.LayoutParams) this.mHolder.mIcon.getLayoutParams()).gravity = 17;
        this.mHolder.mIconRes = -1;
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public void update(ViewGroup parent, SettingAdapter.ItemLayoutParams params) {
        Context context = this.mHolder.mContainer.getContext();
        this.mHolder.mBackground.getLayoutParams().width = -1;
        this.mHolder.mBackground.getLayoutParams().height = params.height;
        if (getItem().getIconId() != -1) {
            this.mHolder.mContainer.setVisibility(0);
            this.mHolder.mIcon.setClickable(true);
            this.mHolder.mIcon.setOnClickListener(this.mOnClickListener);
            this.mHolder.mIcon.setSoundEffectsEnabled(getItem().isSoundEnabled());
            this.mHolder.mIcon.setContentDescription(getItem().getContentDescription(context.getResources()));
            if (this.mHolder.mIconRes != getItem().getIconId() && this.mHolder.mIconRes != -1 && !getItem().isSelected()) {
                this.mHolder.mIcon.startAnimation(createIconAnimation(this.mHolder.mContainer.getContext()));
            }
            this.mHolder.mIconRes = getItem().getIconId();
            this.mHolder.mIcon.setImageResource(getItem().getIconId());
            this.mHolder.mIcon.setBackgroundResource(R.drawable.setting_shortcut_selector);
            this.mHolder.mIcon.setSelected(getItem().isSelected());
            if (getItem().isSelectable()) {
                this.mHolder.mIcon.clearColorFilter();
                return;
            } else {
                this.mHolder.mIcon.setColorFilter(DISABLED_FILTER);
                return;
            }
        }
        this.mHolder.mContainer.setVisibility(4);
        this.mHolder.mIcon.setClickable(false);
        this.mHolder.mIcon.setOnClickListener(null);
        this.mHolder.mIcon.setContentDescription(getItem().getContentDescription(context.getResources()));
        this.mHolder.mIconRes = -1;
        this.mHolder.mIcon.setImageDrawable(null);
        this.mHolder.mIcon.setBackground(null);
        this.mHolder.mIcon.setSelected(false);
    }

    @Override // com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItem
    public View getView() {
        return this.mHolder.mContainer;
    }

    private Animation createIconAnimation(Context context) {
        ScaleAnimation scale = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 0, this.mHolder.mIcon.getLayoutParams().width / 2.0f, 0, this.mHolder.mIcon.getLayoutParams().height / 2.0f);
        scale.setInterpolator(new OvershootInterpolator());
        scale.setDuration(250L);
        scale.setStartOffset(50L);
        return scale;
    }

    public ImageView getIcon() {
        return this.mHolder.mIcon;
    }
}