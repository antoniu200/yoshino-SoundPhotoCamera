package com.sonyericsson.cameracommon.setting.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SettingTabs extends LinearLayout {
    public static final String TAG = "SettingTabs";
    private OnTabSelectedListener mListener;
    private TabView mTabLeft;
    private TabView mTabMiddle;
    private TabView mTabRight;

    public interface OnTabSelectedListener {
        void onTabSelected(Tab tab);
    }

    public enum Tab {
        Photo(R.drawable.setting_tab_photo, R.string.cam_strings_accessibility_photo_setting_txt),
        Video(R.drawable.setting_tab_video, R.string.cam_strings_accessibility_video_setting_txt),
        Common(R.drawable.setting_tab_common, R.string.cam_strings_accessibility_other_settings_txt);

        private final int descriptionId;
        private final int iconId;

        Tab(int iconId, int descriptionId) {
            this.iconId = iconId;
            this.descriptionId = descriptionId;
        }

        public int getIconId() {
            return (equals(Common) && BrandConfig.isVerizonBrand()) ? R.drawable.setting_tab_common_vzw : this.iconId;
        }
    }

    public SettingTabs(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTabLeft = new TabView(R.id.tab_left);
        this.mTabMiddle = new TabView(R.id.tab_middle);
        this.mTabRight = new TabView(R.id.tab_right);
        this.mListener = null;
        setVisibility(8);
    }

    public Tab getSelected() {
        for (TabView i : Arrays.asList(this.mTabLeft, this.mTabMiddle, this.mTabRight)) {
            if (i.mFrame.isSelected()) {
                return i.mTab;
            }
        }
        return null;
    }

    public void setSelected(Tab tab) {
        for (TabView i : Arrays.asList(this.mTabLeft, this.mTabMiddle, this.mTabRight)) {
            i.mFrame.setSelected(i.mTab == tab);
        }
    }

    private void clearSelected() {
        for (TabView i : Arrays.asList(this.mTabLeft, this.mTabMiddle, this.mTabRight)) {
            i.mFrame.setSelected(false);
        }
    }

    public void setOnSelectedListener(OnTabSelectedListener listener) {
        this.mListener = listener;
    }

    public void setTabs(Tab... tabs) {
        switch (tabs.length) {
            case 0:
                this.mTabLeft.clear();
                this.mTabMiddle.clear();
                this.mTabRight.clear();
                setVisibility(8);
                clearSelected();
                return;
            case 1:
                this.mTabLeft.clear();
                this.mTabMiddle.clear();
                this.mTabRight.clear();
                setVisibility(8);
                clearSelected();
                return;
            case 2:
                this.mTabLeft.set(tabs[0]);
                this.mTabMiddle.clear();
                this.mTabRight.set(tabs[1]);
                setVisibility(0);
                setSelected(tabs[0]);
                return;
            case 3:
                this.mTabLeft.set(tabs[0]);
                this.mTabMiddle.set(tabs[1]);
                this.mTabRight.set(tabs[2]);
                setVisibility(0);
                setSelected(tabs[0]);
                return;
            default:
                throw new IllegalArgumentException("this argument is not supported.");
        }
    }

    private class TabView implements View.OnClickListener {
        final FrameLayout mFrame;
        final ImageView mIcon;
        Tab mTab;

        TabView(int layoutId) {
            this.mFrame = (FrameLayout) SettingTabs.this.findViewById(layoutId);
            this.mIcon = (ImageView) this.mFrame.findViewById(R.id.icon);
            this.mFrame.setOnClickListener(this);
            clear();
        }

        public void set(Tab tab) {
            this.mTab = tab;
            this.mFrame.setVisibility(0);
            this.mFrame.setContentDescription(SettingTabs.this.getContext().getString(this.mTab.descriptionId));
            this.mIcon.setImageResource(this.mTab.getIconId());
        }

        public void clear() {
            this.mTab = null;
            this.mFrame.setVisibility(8);
            this.mIcon.setImageDrawable(null);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (this.mTab != null && !this.mFrame.isSelected()) {
                SettingTabs.this.setSelected(this.mTab);
                if (SettingTabs.this.mListener != null) {
                    SettingTabs.this.mListener.onTabSelected(this.mTab);
                }
            }
        }
    }
}