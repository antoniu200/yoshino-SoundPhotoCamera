package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class AccessibilityHelper {
    public static final String TAG = "AccessibilityHelper";
    private static final Rect sRectForHit = new Rect();

    public static void requestAccessibilityFocus(ViewGroup rootView, MotionEvent event) {
        View newTalkingView = searchContentDescribedView(rootView, event);
        if (newTalkingView != null && newTalkingView.getContentDescription() != null) {
            newTalkingView.performAccessibilityAction(64, null);
        } else {
            rootView.performAccessibilityAction(64, null);
        }
    }

    private static View searchContentDescribedView(ViewGroup viewGroup, MotionEvent event) {
        View searchResult;
        if (viewGroup == null || event == null) {
            CameraLogger.e(TAG, "searchContentDescribedView : Arg is null.[viewGroup = " + viewGroup + ", event = " + event + "]");
            return null;
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        int childCount = viewGroup.getChildCount();
        for (int index = childCount - 1; index >= 0; index--) {
            View childView = viewGroup.getChildAt(index);
            if (checkToTouch(childView, x, y)) {
                if (childView.getContentDescription() != null) {
                    searchResult = childView;
                } else if (childView instanceof ViewGroup) {
                    searchResult = searchContentDescribedView((ViewGroup) childView, event);
                } else {
                    searchResult = null;
                }
                if (searchResult == null) {
                    if (childView.getVisibility() == View.VISIBLE && childView.getAlpha() > 0.0f && childView.isClickable()) {
                        return childView;
                    }
                } else {
                    return searchResult;
                }
            }
        }
        return null;
    }

    private static boolean checkToTouch(View view, int x, int y) {
        if (view == null || view.getVisibility() != View.VISIBLE) {
            return false;
        }
        boolean visible = view.getGlobalVisibleRect(sRectForHit);
        return visible && sRectForHit.contains(x, y);
    }

    public static class HoverEventInterceptView extends FrameLayout {
        public HoverEventInterceptView(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptHoverEvent(MotionEvent event) {
            super.onInterceptHoverEvent(event);
            AccessibilityHelper.requestAccessibilityFocus(this, event);
            return true;
        }
    }
}