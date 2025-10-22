package com.sonyericsson.cameracommon.device;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.widget.ActivityChooserView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CameraSize {
    private static final double ASPECT_TOLERANCE = 0.05d;
    public static final int MIN_RECORDING_DURATION = 1;
    public static final String TAG = "CameraSize";
    public static final long VIDEO_MAX_SIZE = 4294967295L;

    public static int getAspectRatio(Rect rect) {
        return getAspectRatio(rect.width(), rect.height());
    }

    private static int getAspectRatio(double width, double height) {
        return (int) ((100.0d * width) / height);
    }

    public static long getAverageFileSize(int audioBitRate, int bitRate) {
        return computeSize(audioBitRate, bitRate, 60);
    }

    public static long getMinFileSize(int audioBitRate, int bitRate) {
        return computeSize(audioBitRate, bitRate, 1);
    }

    public static long computeSize(int audioBitRate, int bitRate, int second) {
        return (((audioBitRate + bitRate) * second) / 8) / 1024; // 1024 = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID
    }

    public static Rect getVideoPreviewRect(Rect videoRect, Rect defaultRect, List<Rect> supportedPreviewSizes) {
        return getOptimalPreviewRect(videoRect, defaultRect, supportedPreviewSizes);
    }

    public static Rect getOptimalPreviewRect(Rect baseRect, Rect maxRect, List<Rect> supportedPreviewSizes) {
        int lengthDiff;
        Rect optimalSize = maxRect;
        int minDiff = Integer.MAX_VALUE;
        double ratio = baseRect.width() / baseRect.height();
        for (Rect previewSize : supportedPreviewSizes) {
            if (previewSize.height() <= maxRect.height()) {
                if (previewSize.width() == baseRect.width() && previewSize.height() == baseRect.height()) {
                    return previewSize;
                }
                double previewRatio = previewSize.width() / previewSize.height();
                double ratioDiff = Math.abs(ratio - previewRatio);
                if (ratioDiff <= ASPECT_TOLERANCE && (lengthDiff = Math.abs(previewSize.height() - baseRect.height())) < minDiff) {
                    optimalSize = previewSize;
                    minDiff = lengthDiff;
                }
            }
        }
        return optimalSize;
    }

    public static int getDispayWidthWithoutNavigationBar(Context context) {
        return Math.max(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static int getDispayHeightWithoutNavigationBar(Context context) {
        return Math.min(context.getResources().getDisplayMetrics().widthPixels, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static boolean isAspectRatioDifferent(Rect currentRect, Rect newRect) {
        int currentRatio = getAspectRatio(currentRect);
        int newRatio = getAspectRatio(newRect);
        if (currentRatio == newRatio) {
            return false;
        }
        return true;
    }

    public static Rect getOptimalVideoSnapshotSizeFromCamerSizeList(Rect videoSize, List<Camera.Size> supportedSnapshotSizes) {
        List<Rect> list = new ArrayList<>();
        for (Camera.Size size : supportedSnapshotSizes) {
            list.add(new Rect(0, 0, size.width, size.height));
        }
        return getOptimalVideoSnapshotSize(videoSize, list);
    }

    public static Rect getOptimalVideoSnapshotSize(Rect videoSize, List<Rect> supportedSnapshotSizes) {
        Rect optimalSize = null;
        for (Rect size : supportedSnapshotSizes) {
            if (videoSize.width() <= size.width() && videoSize.height() <= size.height()) {
                if (optimalSize == null) {
                    optimalSize = size;
                } else if (size.width() < optimalSize.width() && size.height() < optimalSize.height()) {
                    optimalSize = size;
                }
            }
        }
        return optimalSize;
    }

    public static Rect convertCameraSize(Camera.Size size) {
        if (size == null) {
            return null;
        }
        return new Rect(0, 0, size.width, size.height);
    }

    public static List<Rect> convertCameraSizeList(List<Camera.Size> sizeList) {
        if (sizeList == null) {
            return new ArrayList();
        }
        List<Rect> rectList = new ArrayList<>();
        for (Camera.Size size : sizeList) {
            if (size != null) {
                rectList.add(convertCameraSize(size));
            }
        }
        return rectList;
    }
}
