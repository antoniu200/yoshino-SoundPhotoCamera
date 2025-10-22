package com.sonymobile.android.addoncamera.soundphoto;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.device.CameraExtensionValues;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class PlatformDependencyResolver extends CommonPlatformDependencyResolver {
    private static final int ASPECT_RATIO_CLEARANCE_PERCENTAGE = 10;
    public static final int PREFERED_MAX_PREVIEW_FPS_x1000 = 30000;
    public static final int PREFERED_MIN_PREVIEW_FPS_x1000 = 1000;
    public static final int PREFERED_PREVIEW_SIZE_RANK_FOR_FPS = 1;
    public static final int PREFERED_PREVIEW_SIZE_RANK_FOR_IQ = 0;
    private static final int PREFERRED_PICTURE_HEIGHT = 720;
    private static final int PREFERRED_PREVIEW_WIDTH = 1280;
    private static final String TAG = PlatformDependencyResolver.class.getSimpleName();
    private static final PreviewSizeComparator mPreviewSizeComparator = new PreviewSizeComparator();

    private static Rect getOptimalPreviewSizeAccordingTo(Camera.Parameters params, Rect capRect, int requiredRank) {
        List<Camera.Size> allSize = params.getSupportedPreviewSizes();
        int capAspect = (int) ((100.0f * capRect.width()) / capRect.height());
        List<Camera.Size> optimalSizeList = new ArrayList<>();
        for (Camera.Size size : allSize) {
            Camera.Size prefered = params.getPreferredPreviewSizeForVideo();
            if (prefered != null && (prefered.width >= size.width || prefered.height >= size.height)) {
                int previewAspect = (int) ((100.0f * size.width) / size.height);
                int aspectDiff = capAspect - previewAspect;
                if (Math.abs(aspectDiff) < 10) {
                    optimalSizeList.add(size);
                }
            }
        }
        if (!optimalSizeList.isEmpty()) {
            Collections.sort(optimalSizeList, mPreviewSizeComparator);
            int rank = requiredRank;
            if (optimalSizeList.size() < requiredRank + 1) {
                rank = optimalSizeList.size() - 1;
            }
            Camera.Size optimal = optimalSizeList.get(rank);
            return new Rect(0, 0, optimal.width, optimal.height);
        }
        Camera.Size defaultSize = params.getPreviewSize();
        if (defaultSize != null) {
            return new Rect(0, 0, defaultSize.width, defaultSize.height);
        }
        return new Rect();
    }

    private static class PreviewSizeComparator implements Comparator<Camera.Size>, Serializable {
        private PreviewSizeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Camera.Size object1, Camera.Size object2) {
            return -(object1.width - object2.width);
        }
    }

    public static Rect getDefaultResolution(Camera.Parameters params) {
        List<Camera.Size> sizes = params.getSupportedPictureSizes();
        if (sizes == null) {
            return null;
        }
        Camera.Size max = null;
        for (Camera.Size size : sizes) {
            if (pixels(size) > pixels(max) && isAspectRatio16_9(size)) {
                max = size;
            }
        }
        if (max != null) {
            return new Rect(0, 0, max.width, max.height);
        }
        return null;
    }

    private static int pixels(Camera.Size size) {
        if (size == null) {
            return 0;
        }
        return size.width * size.height;
    }

    private static boolean isAspectRatio16_9(Camera.Size size) {
        return size != null && size.width * 9 == size.height * 16;
    }

    public static Rect getOptimalStillPreviewSize(Camera.Parameters params, Rect targetRect) {
        Rect preferred = null;
        List<Camera.Size> supported = params.getSupportedPreviewSizes();
        for (Camera.Size size : supported) {
            if (size.width == PREFERRED_PREVIEW_WIDTH || size.height == PREFERRED_PICTURE_HEIGHT) {
                preferred = new Rect(0, 0, PREFERRED_PREVIEW_WIDTH, PREFERRED_PICTURE_HEIGHT);
                break;
            }
        }
        if (preferred == null) {
            preferred = getOptimalPreviewSizeAccordingTo(params, new Rect(0, 0, PREFERRED_PREVIEW_WIDTH, PREFERRED_PICTURE_HEIGHT), 1);
        }
        return getOptimalStillPreviewRect(targetRect, preferred, toRectList(supported));
    }

    public static int[] getOptimalPreviewFpsRangeAccordintTo(Camera.Parameters params) {
        List<int[]> supprotedFpsRanges = params.getSupportedPreviewFpsRange();
        if (supprotedFpsRanges != null) {
            for (int[] range : supprotedFpsRanges) {
                if (range[0] == 1000 && range[1] == 30000) {
                    return new int[]{1000, PREFERED_MAX_PREVIEW_FPS_x1000};
                }
            }
        }
        return new int[]{0, 0};
    }

    public static String getDefaultSceneMode(int cameraType, Camera.Parameters params) {
        List<String> allScenes = params.getSupportedSceneModes();
        if (allScenes == null) {
            return null;
        }
        if (cameraType == 1) {
            if (allScenes.contains(CameraExtensionValues.EX_SCENE_MODE_SOFT_SKIN)) {
                return CameraExtensionValues.EX_SCENE_MODE_SOFT_SKIN;
            }
        } else if (allScenes.contains("auto")) {
            return "auto";
        }
        return params.getSceneMode();
    }

    public static String getDefaultWhiteBalance(Camera.Parameters params) {
        List<String> allWhiteBalances = params.getSupportedWhiteBalance();
        if (allWhiteBalances == null) {
            return null;
        }
        if (allWhiteBalances.contains("auto")) {
            return "auto";
        }
        return params.getWhiteBalance();
    }

    public static String getDefaultFocusMode(int cameraType, Camera.Parameters params) {
        List<String> allSupported = params.getSupportedFocusModes();
        if (allSupported.contains("continuous-picture")) {
            return "continuous-picture";
        }
        if (allSupported.contains("auto")) {
            return "auto";
        }
        return params.getFocusMode();
    }

    public static boolean isFlashSupported(Camera.Parameters params, String value) {
        List<String> allSupported = params.getSupportedFlashModes();
        return allSupported != null && allSupported.contains(value);
    }

    public static boolean isFaceDetectionSupported(Camera.Parameters params) {
        return params.getMaxNumDetectedFaces() > 0;
    }
}