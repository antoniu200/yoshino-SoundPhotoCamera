package com.sonyericsson.cameracommon.viewfinder;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class AllEventListener extends View {
    public static final String TAG = "AllEventListener";
    private WeakReference<BaseActivity> mBaseActivity;
    boolean mTouchEventConsumed;

    public AllEventListener(Context context) {
        super(context);
        this.mTouchEventConsumed = true;
    }

    public AllEventListener(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTouchEventConsumed = true;
    }

    public AllEventListener(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mTouchEventConsumed = true;
    }

    public void setActivity(BaseActivity baseActivity) {
        if (baseActivity == null) {
            throw new IllegalArgumentException("BaseActivity can not be null.");
        }
        this.mBaseActivity = new WeakReference<>(baseActivity);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        super.onTouchEvent(ev);
        if (ev != null) {
            switch (ev.getAction()) {
                case 0:
                    BaseActivity activity = this.mBaseActivity.get();
                    if (activity != null) {
                        activity.restartAutoOffTimer();
                        break;
                    }
                    break;
            }
        }
        return this.mTouchEventConsumed;
    }

    public void enableTouchEvent() {
        this.mTouchEventConsumed = false;
    }

    public void disableTouchEvent() {
        this.mTouchEventConsumed = true;
    }
}