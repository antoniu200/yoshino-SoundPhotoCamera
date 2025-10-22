package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

/* loaded from: classes.dex */
public class LayoutDependencyResolver {
    private static final int BASIC_SYSTEM_UI_FLAGS;
    private static final float SCREEN_ASPECT_EIGHTEEN_NINE = 2.0f;
    private static final float SCREEN_ASPECT_NOT_DEFINED = -1.0f;
    private static final float SCREEN_ASPECT_SIXTEEN_NINE = 1.7777778f;
    public static final String TAG = "LayoutDependencyResolver";

    public enum SystemBarStatus {
        ALWAYS_CANCELED,
        REGION_OVERLAID
    }

    static {
        if (Build.VERSION.SDK_INT > 25) {
            BASIC_SYSTEM_UI_FLAGS = 1792;
        } else {
            BASIC_SYSTEM_UI_FLAGS = 7936;
        }
    }

    public enum ScreenAspect {
        NOT_DEFINED(LayoutDependencyResolver.SCREEN_ASPECT_NOT_DEFINED),
        SIXTEEN_NINE(LayoutDependencyResolver.SCREEN_ASPECT_SIXTEEN_NINE),
        EIGHTEEN_NINE(2.0f);

        private final float mScreenAspectRatio;

        ScreenAspect(float screenAspectRatio) {
            this.mScreenAspectRatio = screenAspectRatio;
        }

        public float getScreenAspectRatio() {
            return this.mScreenAspectRatio;
        }
    }

    public static boolean isTablet(Context context) {
        return context.getResources().getBoolean(R.bool.is_tablet);
    }

    public static boolean isTenInch(Context context) {
        return context.getResources().getBoolean(R.bool.is_ten_inch);
    }

    public static SystemBarStatus getCurrentSystemBarStatus(Context context) {
        return isTablet(context) ? SystemBarStatus.ALWAYS_CANCELED : SystemBarStatus.REGION_OVERLAID;
    }

    public static int getSystemBarMargin(Context context) {
        switch (getCurrentSystemBarStatus(context)) {
            case ALWAYS_CANCELED:
                return 0;
            case REGION_OVERLAID:
                int resourceId = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                if (resourceId > 0) {
                    return context.getResources().getDimensionPixelSize(resourceId);
                }
                return context.getResources().getDimensionPixelSize(R.dimen.navigationbar_width);
            default:
                throw new IllegalStateException("getSystemBarMargin(): Unknown system bar status");
        }
    }

    public static Rect getViewFinderSize(Context context) {
        Point appDisplaySize = new Point(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
        Point realDisplaySize = new Point();
        WindowManager wm = (WindowManager) context.getSystemService("window");
        wm.getDefaultDisplay().getRealSize(realDisplaySize);
        float viewFinderAspectRatio = (Math.max(realDisplaySize.x, realDisplaySize.y) * 1.0f) / Math.min(realDisplaySize.x, realDisplaySize.y);
        switch (getCurrentSystemBarStatus(context)) {
            case ALWAYS_CANCELED:
                if (isTablet(context)) {
                    return cropWithAspectRatio(realDisplaySize, viewFinderAspectRatio);
                }
                return cropWithAspectRatio(appDisplaySize, viewFinderAspectRatio);
            case REGION_OVERLAID:
                return cropWithAspectRatio(realDisplaySize, viewFinderAspectRatio);
            default:
                throw new IllegalStateException("getViewFinderSize(): Unknown system bar status");
        }
    }

    private static Rect cropWithAspectRatio(Point size, float aspectWidthPerHeight) {
        float longSideLength = Math.max(size.x, size.y);
        float shortSideLength = Math.min(size.x, size.y);
        if (longSideLength / shortSideLength < aspectWidthPerHeight) {
            return new Rect(0, 0, (int) Math.ceil(longSideLength), (int) Math.ceil(longSideLength / aspectWidthPerHeight));
        }
        return new Rect(0, 0, (int) Math.ceil(shortSideLength * aspectWidthPerHeight), (int) Math.ceil(shortSideLength));
    }

    public static int getLeftItemCount(Context context) {
        return context.getResources().getInteger(R.integer.shortcut_icon_count);
    }

    public static Rect getSurfaceViewRect(Context context, float previewAspectRatio, ScreenAspect screenAspect) {
        Rect viewFinderSize = LayoutOrientationResolver.getInstance().getRectAccordingToLayoutOrientation(getViewFinderSize(context));
        float viewFinderAspectRatio = viewFinderSize.width() / viewFinderSize.height();
        if (previewAspectRatio > viewFinderAspectRatio) {
            if (screenAspect == ScreenAspect.EIGHTEEN_NINE && Math.abs(previewAspectRatio - 0.5625f) < 0.01f) {
                int previewHeight_18_9 = (viewFinderSize.height() - ResourceUtil.getDimensionPixelSize(context, context.getPackageName(), R.dimen.navigationbar_width)) - ResourceUtil.getDimensionPixelSize(context, context.getPackageName(), R.dimen.left_icon_area_height);
                return new Rect(0, 0, (int) (previewHeight_18_9 * previewAspectRatio), previewHeight_18_9);
            }
            return new Rect(0, 0, viewFinderSize.width(), (int) (viewFinderSize.width() / previewAspectRatio));
        }
        if (screenAspect == ScreenAspect.EIGHTEEN_NINE && Math.abs(previewAspectRatio - SCREEN_ASPECT_SIXTEEN_NINE) < 0.01f) {
            int previewWidth_18_9 = (viewFinderSize.width() - ResourceUtil.getDimensionPixelSize(context, context.getPackageName(), R.dimen.navigationbar_width)) - ResourceUtil.getDimensionPixelSize(context, context.getPackageName(), R.dimen.left_icon_area_height);
            return new Rect(0, 0, previewWidth_18_9, (int) (previewWidth_18_9 / previewAspectRatio));
        }
        return new Rect(0, 0, (int) (viewFinderSize.height() * previewAspectRatio), viewFinderSize.height());
    }

    public static void resolveLayoutDependencyOnDevice(Activity act, View root, ScreenAspect screenAspect) throws Resources.NotFoundException {
        Rect viewfinderRect = getViewFinderSize(act);
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) root.getLayoutParams();
        params.width = viewfinderRect.width();
        params.height = viewfinderRect.height();
        params.gravity = 80;
        setupRightContainer(act);
        setupCaptureMethodIndicatorContainer(act);
        setupSystemBarMargin(act);
        setupRotatableToast(act, screenAspect);
    }

    public static void requestToRemoveSystemUi(View view) {
        if (view != null) {
            int visibility = BASIC_SYSTEM_UI_FLAGS;
            switch (getCurrentSystemBarStatus(view.getContext())) {
                case REGION_OVERLAID:
                    if (Build.VERSION.SDK_INT <= 25) {
                        visibility |= 2;
                    }
                    view.setSystemUiVisibility(visibility);
                    break;
            }
            view.requestLayout();
        }
    }

    public static void requestToDimSystemUi(View view) {
        if (view != null) {
            int visibility = BASIC_SYSTEM_UI_FLAGS;
            switch (getCurrentSystemBarStatus(view.getContext())) {
                case REGION_OVERLAID:
                    view.setSystemUiVisibility(visibility | 1);
                    break;
            }
            view.requestLayout();
        }
    }

    public static void requestToRecoverSystemUi(View view) {
        if (view != null) {
            int visibility = BASIC_SYSTEM_UI_FLAGS;
            switch (getCurrentSystemBarStatus(view.getContext())) {
                case REGION_OVERLAID:
                    view.setSystemUiVisibility(visibility);
                    break;
            }
            view.requestLayout();
        }
    }

    private static void setupRightContainer(Activity act) throws Resources.NotFoundException {
        Rect viewfinderRect = getViewFinderSize(act);
        int shortcutIconHeight = act.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int shortcutIconHeightPadding = act.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_padding);
        int topMargin = (((viewfinderRect.height() / getLeftItemCount(act)) - shortcutIconHeight) + shortcutIconHeightPadding) / 2;
        act.findViewById(R.id.right_container).setPadding(0, topMargin, 0, topMargin);
        setupModeIndicatorContainer(act);
    }

    public static void setupRotatableToast(Activity act, ScreenAspect screenAspect) throws Resources.NotFoundException {
        DisplayMetrics metrix = act.getResources().getDisplayMetrics();
        int displayWidth = Math.max(metrix.widthPixels, metrix.heightPixels);
        int displayHeight = Math.min(metrix.widthPixels, metrix.heightPixels);
        int leftMargin = act.getResources().getDimensionPixelSize(R.dimen.left_container_width);
        int rightMargin = act.getResources().getDimensionPixelSize(R.dimen.right_container_width) + getSystemBarMargin(act);
        if (screenAspect == ScreenAspect.EIGHTEEN_NINE) {
            rightMargin += ResourceUtil.getDimensionPixelSize(act, act.getPackageName(), R.dimen.capture_button_offset_18_9);
        }
        Rect finderRect = getViewFinderSize(act);
        finderRect.offset(0, displayHeight - finderRect.height());
        int toastHeight = finderRect.height() / getLeftItemCount(act);
        Rect landscapeTop = new Rect(finderRect.left + leftMargin, finderRect.top, finderRect.right - rightMargin, finderRect.top + toastHeight);
        Rect landscapeBottom = new Rect(finderRect.left + leftMargin, finderRect.bottom - toastHeight, finderRect.right - rightMargin, finderRect.bottom);
        Rect portraitTop = new Rect(finderRect.left + leftMargin, finderRect.top, finderRect.left + leftMargin + toastHeight, finderRect.bottom);
        Rect portraitBottom = new Rect((finderRect.right - rightMargin) - toastHeight, finderRect.top, finderRect.right - rightMargin, finderRect.bottom);
        RotatableToast.setToastLayoutParams(new RotatableToast.ToastLayoutParams(displayWidth, displayHeight, landscapeTop, landscapeBottom), new RotatableToast.ToastLayoutParams(displayWidth, displayHeight, portraitTop, portraitBottom));
    }

    private static void setupSystemBarMargin(Activity act) {
        View iconContainer = act.findViewById(R.id.icons);
        View uiComponentsContainer = act.findViewById(R.id.lazy_inflated_ui_component_container);
        int navigationBarWidth = getSystemBarMargin(act);
        ((ViewGroup.MarginLayoutParams) iconContainer.getLayoutParams()).setMargins(0, 0, navigationBarWidth, 0);
        iconContainer.requestLayout();
        ((ViewGroup.MarginLayoutParams) uiComponentsContainer.getLayoutParams()).setMargins(0, 0, navigationBarWidth, 0);
        uiComponentsContainer.requestLayout();
    }

    private static void setupCaptureMethodIndicatorContainer(Activity act) {
        act.findViewById(R.id.capture_method_indicator_container).getLayoutParams().height = getViewFinderSize(act).height() / getLeftItemCount(act);
    }

    private static void setupModeIndicatorContainer(Activity act) throws Resources.NotFoundException {
        int modeIconSize = act.getResources().getDimensionPixelSize(R.dimen.capturing_mode_selector_button_item_width);
        int shortcutIconHeight = act.getResources().getDimensionPixelSize(R.dimen.shortcut_dialog_item_height);
        int containerWidth = act.getResources().getDimensionPixelSize(R.dimen.right_container_width);
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) act.findViewById(R.id.mode_indicator_container).getLayoutParams();
        params.height = modeIconSize;
        params.rightMargin = (containerWidth - ((containerWidth - modeIconSize) / 2)) + getSystemBarMargin(act);
        params.bottomMargin = ((getViewFinderSize(act).height() / getLeftItemCount(act)) - shortcutIconHeight) / 2;
    }
}