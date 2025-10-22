package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class ViewUtility {
    private static final float ASPECT_TOLERANCE = 0.001f;
    public static final String TAG = "ViewUtility";

    public static boolean hitTest(View targetView, MotionEvent motion) {
        int[] locationOfView = new int[2];
        targetView.getLocationOnScreen(locationOfView);
        Rect rect = new Rect(locationOfView[0], locationOfView[1], locationOfView[0] + targetView.getWidth(), locationOfView[1] + targetView.getHeight());
        boolean ret = rect.contains((int) motion.getRawX(), (int) motion.getRawY());
        return ret;
    }

    private enum ScreenSize {
        WUXGA(1920, 1200),
        FULL_HD(1920, 1080),
        HD(1280, 720),
        QHD(960, 540),
        FWVGA(854, 480),
        HVGA(640, 480);

        private final int mHeight;
        private final int mWidth;

        ScreenSize(int width, int height) {
            this.mWidth = width;
            this.mHeight = height;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public Rect getAsRect() {
            return new Rect(0, 0, this.mWidth, this.mHeight);
        }
    }

    public static Rect getEstimatedRealScreenRect(Context context) {
        int appWidth;
        int appHeight;
        WindowManager wm = (WindowManager) context.getSystemService("window");
        Display disp = wm.getDefaultDisplay();
        Point size = new Point();
        disp.getSize(size);
        if (size.y < size.x) {
            appWidth = size.x;
            appHeight = size.y;
        } else {
            appWidth = size.y;
            appHeight = size.x;
        }
        ScreenSize estimatedSize = null;
        int smallestDiff = appWidth + appHeight;
        for (ScreenSize screen : ScreenSize.values()) {
            int diff = Math.abs(appWidth - screen.getWidth()) + Math.abs(appHeight - screen.getHeight());
            if (diff < smallestDiff) {
                smallestDiff = diff;
                estimatedSize = screen;
            }
        }
        if (estimatedSize == null) {
            throw new RuntimeException("getEstimatedRealScreenRect():[Not supported screen size.]");
        }
        return estimatedSize.getAsRect();
    }

    public static int getPixel(Context context, int id) {
        return context.getResources().getDimensionPixelSize(id);
    }

    public static boolean isSimilarAspect(int width1, int height1, int width2, int height2) {
        if (width1 < 1 || height1 < 1 || width2 < 1 || height2 < 1) {
            return false;
        }
        float aspect1 = width1 / height1;
        float aspect2 = width2 / height2;
        return Math.abs(aspect1 - aspect2) <= ASPECT_TOLERANCE;
    }

    public static boolean isSimilarAspect(float aspect1, float aspect2) {
        return Math.abs(aspect1 - aspect2) <= ASPECT_TOLERANCE;
    }

    public static boolean isSimilarAspectRect(Rect rect1, Rect rect2) {
        return isSimilarAspect(rect1.width(), rect1.height(), rect2.width(), rect2.height());
    }

    public static Point getCenter(Point p1, Point p2) {
        return new Point((p1.x + p2.x) / 2, (p1.y + p2.y) / 2);
    }
}