package com.sonyericsson.cameracommon.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ControlSwitch extends Switch {
    public static final String TAG = "ControlSwitch";
    private boolean mIsUpsideDown;

    public ControlSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    /* Some code will duplicate */
    public synchronized void setUiOrientation(int orientation) {
        switch (orientation) {
            case 1:
                if (!this.mIsUpsideDown) {
                    reverseChildrenViews(this);
                    this.mText.setRotation(-90.0f);
                    synchronized (this.mSwitchBundle) {
                        this.mSwitchBundle.setRotation(-90.0f);
                    }
                    this.mIsUpsideDown = true;
                }
                break;
            case 2:
                if (this.mIsUpsideDown) {
                    reverseChildrenViews(this);
                    this.mText.setRotation(0.0f);
                    synchronized (this.mSwitchBundle) {
                        this.mSwitchBundle.setRotation(0.0f);
                    }
                    this.mIsUpsideDown = false;
                }
                break;
        }
    }

    private void reverseChildrenViews(ViewGroup viewGroup) {
        List<View> views = new ArrayList<>();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            views.add(viewGroup.getChildAt(i));
        }
        viewGroup.removeAllViews();
        for (int i2 = views.size() - 1; i2 >= 0; i2--) {
            viewGroup.addView(views.get(i2));
        }
    }
}