package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.graphics.Point;
import android.view.WindowManager;
import com.sonyericsson.cameracommon.R;

/* loaded from: classes.dex */
public class ProductConfig {
    public static final String TAG = "ProductConfig";

    private ProductConfig() {
    }

    public static boolean isTablet(Context context) {
        return context.getResources().getBoolean(R.bool.is_tablet);
    }

    public static boolean isPhone(Context context) {
        return !isTablet(context);
    }

    public static int getMountAngle(Context context) {
        WindowManager wm = (WindowManager) context.getSystemService("window");
        int rotation = wm.getDefaultDisplay().getRotation();
        int degrees = 0;
        switch (rotation) {
            case 0:
                degrees = 0;
                break;
            case 1:
                degrees = 270;
                break;
            case 2:
                degrees = 180;
                break;
            case 3:
                degrees = 90;
                break;
        }
        Point screenSize = new Point();
        wm.getDefaultDisplay().getSize(screenSize);
        boolean isLandscape = screenSize.x > screenSize.y;
        return isLandscape ? degrees : degrees + 270;
    }

    public static boolean shouldReverseZoomDirection(Context context, boolean landscape) {
        return !isTablet(context) && landscape;
    }
}