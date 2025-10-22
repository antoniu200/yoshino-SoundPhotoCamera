package com.sonyericsson.cameracommon.device;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class CommonPlatformDependencyResolver {
    private static final double ASPECT_TOLERANCE = 0.05d;
    public static final String TAG = "CommonPlatformDependencyResolver";

    public static boolean isVideoNrSupported(Camera.Parameters params) {
        List<String> supported = getSupportedValueList(params);
        return supported.contains("on");
    }

    public enum DcCategory {
        NORMAL(CameraExtensionValues.EX_LENS_DC_MODE_BALANCE, "auto", CameraExtensionValues.EX_LENS_DC_MODE_BALANCE),
        MAKE_IMAGE_FROM_PREVIEW(CameraExtensionValues.EX_LENS_DC_MODE_BALANCE, "auto", CameraExtensionValues.EX_LENS_DC_MODE_BALANCE),
        COMPOSE_IMAGE_FROM_PREVIEW("landscape", "auto", CameraExtensionValues.EX_LENS_DC_MODE_BALANCE),
        THIRD_PARTY("landscape", "landscape", "landscape");

        final String mDcForPicture;
        final String mDcForPreview;
        final String mDcForVideo;

        DcCategory(String modeForPreview, String modeForPicture, String modeForVideo) {
            this.mDcForPreview = modeForPreview;
            this.mDcForPicture = modeForPicture;
            this.mDcForVideo = modeForVideo;
        }

        public void writeTo(Camera.Parameters params) {
            CommonPlatformDependencyResolver.setDcModeIfSupported(params, CameraExtensionValues.EX_DC_MODE_FOR_PREVIEW, this.mDcForPreview);
            CommonPlatformDependencyResolver.setDcModeIfSupported(params, CameraExtensionValues.EX_DC_MODE_FOR_PICTURE, this.mDcForPicture);
            CommonPlatformDependencyResolver.setDcModeIfSupported(params, CameraExtensionValues.EX_DC_MODE_FOR_VIDEO, this.mDcForVideo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDcModeIfSupported(Camera.Parameters params, String key, String value) {
        List<String> supported = getDcModeSupportedValueList(params);
        if (supported.contains(value)) {
            params.set(key, value);
        }
    }

    private static List<String> getDcModeSupportedValueList(Camera.Parameters params) {
        String values = params.get(CameraExtensionValues.EX_DC_MODE_SUPPORTED);
        List<String> stringListValue = new ArrayList<>();
        if (values != null) {
            for (String token : values.split(",")) {
                stringListValue.add(token);
            }
        }
        return stringListValue;
    }

    public static Rect getOptimalStillPreviewRect(Rect captureSize, Rect preferedPreviewSize, List<Rect> supportedPreviewSizes) {
        return getOptimalPreviewRect(new OptimalPreviewSizeComparator(preferedPreviewSize), captureSize, preferedPreviewSize, supportedPreviewSizes);
    }

    public static Rect getOptimalVideoPreviewRect(Rect captureSize, Rect preferedPreviewSize, List<Rect> supportedPreviewSizes) {
        return getOptimalPreviewRect(new OptimalPreviewSizeComparator(captureSize), captureSize, preferedPreviewSize, supportedPreviewSizes);
    }

    private static Rect getOptimalPreviewRect(OptimalPreviewSizeComparator optimalPreviewSizeComparator, Rect captureSize, Rect preferedPreviewSize, List<Rect> supportedPreviewSizes) {
        Rect result = null;
        for (Rect previewSize : supportedPreviewSizes) {
            if (previewSize.height() <= preferedPreviewSize.height() && equalsRatio(previewSize, captureSize)) {
                if (result == null) {
                    result = previewSize;
                } else if (optimalPreviewSizeComparator.compare(previewSize, result) < 0) {
                    result = previewSize;
                }
            }
        }
        return result;
    }

    protected static String toString(Rect rect) {
        if (rect == null) {
            return "null";
        }
        return String.format(Locale.US, "(%d,%d,%d,%d)", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
    }

    protected static Rect toRect(Camera.Size size) {
        if (size == null) {
            return null;
        }
        return new Rect(0, 0, size.width, size.height);
    }

    protected static List<Rect> toRectList(List<Camera.Size> sizeList) {
        if (sizeList == null) {
            return new ArrayList();
        }
        List<Rect> rectList = new ArrayList<>();
        for (Camera.Size size : sizeList) {
            if (size != null) {
                rectList.add(toRect(size));
            }
        }
        return rectList;
    }

    private static List<String> getSupportedValueList(Camera.Parameters params) {
        String values = params.get(CameraExtensionValues.KEY_EX_VIDEO_NR_VALUES);
        List<String> stringListValue = new ArrayList<>();
        if (values != null) {
            for (String token : values.split(",")) {
                stringListValue.add(token);
            }
        }
        return stringListValue;
    }

    private static boolean equalsRatio(Rect r1, Rect r2) {
        double ratio1 = r1.width() / r1.height();
        double ratio2 = r2.width() / r2.height();
        return Math.abs(ratio1 - ratio2) <= ASPECT_TOLERANCE;
    }

    private static class OptimalPreviewSizeComparator implements Comparator<Rect> {
        private final Rect mTarget;

        public OptimalPreviewSizeComparator(Rect target) {
            this.mTarget = target;
        }

        @Override // java.util.Comparator
        public int compare(Rect r1, Rect r2) {
            int dist1 = Math.abs(r1.height() - this.mTarget.height());
            int dist2 = Math.abs(r2.height() - this.mTarget.height());
            return dist1 - dist2;
        }
    }

    public static final Rect getRect(Camera.Parameters params, String key) {
        String value = params.get(key);
        if (value == null) {
            return null;
        }
        String[] tokens = value.split("x");
        if (tokens.length != 2) {
            return null;
        }
        try {
            return new Rect(0, 0, Integer.parseInt(tokens[0]), Integer.parseInt(tokens[1]));
        } catch (NumberFormatException e) {
            CameraLogger.e(TAG, "Failed to parse parameter for " + key);
            return null;
        }
    }
}