package com.sonyericsson.cameracommon.utility;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

/* loaded from: classes.dex */
public class AccessibilityEventFilter extends View.AccessibilityDelegate {
    public static final String TAG = "AccessibilityEventFilter";
    private String mAllowedClassName;

    public AccessibilityEventFilter() {
        this.mAllowedClassName = "";
    }

    public AccessibilityEventFilter(Class<?> allowedClass) {
        this.mAllowedClassName = "";
        this.mAllowedClassName = String.copyValueOf(allowedClass.getName().toCharArray());
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
        boolean isFocusEvent = false;
        int type = event.getEventType();
        if (type == 8 || type == 65536 || type == 32768) {
            isFocusEvent = true;
        }
        boolean hasMessage = false;
        if (event.getRecordCount() > 0 || !event.getText().isEmpty() || event.getContentDescription() != null) {
            hasMessage = true;
        }
        if ((isFocusEvent || hasMessage) && !this.mAllowedClassName.equals(event.getClassName())) {
            return false;
        }
        return super.onRequestSendAccessibilityEvent(host, child, event);
    }
}