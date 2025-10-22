package com.sonyericsson.cameracommon.utility;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;

/* loaded from: classes.dex */
public class LayoutOrientationResolver {
    public static final String TAG = "LayoutOrientationResolver";
    private static final LayoutOrientationResolver sInstance = new LayoutOrientationResolver();
    private LayoutOrientationType mLayoutOrientation = LayoutOrientationType.LANDSCAPE;

    public enum LayoutOrientationType {
        PORTRAIT,
        LANDSCAPE,
        BEHIND
    }

    private LayoutOrientationResolver() {
    }

    public static LayoutOrientationResolver getInstance() {
        return sInstance;
    }

    public void onResume(Activity activity) {
        if (activity.getResources().getConfiguration().orientation == 2) {
            activity.setRequestedOrientation(0);
            this.mLayoutOrientation = LayoutOrientationType.LANDSCAPE;
        } else {
            activity.setRequestedOrientation(1);
            this.mLayoutOrientation = LayoutOrientationType.PORTRAIT;
        }
    }

    public void onStop(Activity activity) {
        activity.setRequestedOrientation(3);
    }

    public LayoutOrientationType getOrientation() {
        return this.mLayoutOrientation;
    }

    public Rect getRectAccordingToLayoutOrientation(Rect rect) {
        if (rect == null) {
            return null;
        }
        if (this.mLayoutOrientation == LayoutOrientationType.PORTRAIT) {
            return new Rect(0, 0, rect.height(), rect.width());
        }
        return new Rect(rect);
    }

    public Size getSizeAccordingToLayoutOrientation(Size size) {
        int sizeW;
        int sizeH;
        if (this.mLayoutOrientation == LayoutOrientationType.PORTRAIT) {
            sizeW = size.getHeight();
            sizeH = size.getWidth();
        } else {
            sizeW = size.getWidth();
            sizeH = size.getHeight();
        }
        return new Size(sizeW, sizeH);
    }

    public Point getPointAccordingToLayoutOrientation(Point point) {
        Point retPoint;
        if (point != null) {
            if (this.mLayoutOrientation == LayoutOrientationType.PORTRAIT) {
                retPoint = new Point(point.y, point.x);
            } else {
                retPoint = new Point(point);
            }
            return retPoint;
        }
        return point;
    }
}