package com.sonyericsson.cameracommon.utility;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.focusview.FaceInformationList;
import com.sonyericsson.cameracommon.focusview.NamedFace;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class FaceDetectUtil {
    public static final String TAG = "FaceDetectUtil";

    private static class DistanceMapItem {
        private final int mArrayIndex;
        private final int mDistance;

        public DistanceMapItem(int arrayIndex, int distance) {
            this.mArrayIndex = arrayIndex;
            this.mDistance = distance;
        }

        public int getArrayIndex() {
            return this.mArrayIndex;
        }

        public int getDistance() {
            return this.mDistance;
        }
    }

    public static void dumpDistanceMapList(List<DistanceMapItem> list) {
    }

    private static class DistanceComparator implements Comparator<DistanceMapItem> {
        private DistanceComparator() {
        }

        @Override // java.util.Comparator
        public int compare(DistanceMapItem item1, DistanceMapItem item2) {
            return item1.getDistance() - item2.getDistance();
        }
    }

    private static List<DistanceMapItem> createSortedDistanceList(FaceDetectionResult result, Rect centerPosition) {
        if (result != null && result.faceList != null) {
            List<DistanceMapItem> tempList = new ArrayList<>();
            int i = 0;
            for (Camera.Face face : result.faceList) {
                int tempDistance = computeClosesDistance(face.rect, centerPosition);
                DistanceMapItem tempItem = new DistanceMapItem(i, tempDistance);
                tempList.add(tempItem);
                i++;
            }
            Collections.sort(tempList, new DistanceComparator());
            return tempList;
        }
        return null;
    }

    private static int computeClosesDistance(Rect faceRect, Rect centerPosition) {
        Rect faceRectPreview = PositionConverter.getInstance().convertFaceFromDeviceToPreview(faceRect);
        int xDistance = centerPosition.centerX() - faceRectPreview.centerX();
        int yDistance = centerPosition.centerY() - faceRectPreview.centerY();
        if (xDistance < 0) {
            xDistance *= -1;
        }
        if (yDistance < 0) {
            yDistance *= -1;
        }
        return xDistance + yDistance;
    }

    public static void logFaceDetectionResult(FaceDetectionResult result) {
        if (result == null) {
            CameraLogger.v(TAG, "onFaceDetection: result is null");
            return;
        }
        CameraLogger.v(TAG, "onFaceDetection: Number of faces: " + result.faceList.size());
        if (!result.faceList.isEmpty()) {
            int i = 0;
            for (Camera.Face face : result.faceList) {
                String logRecord = "FACE[" + i + "]";
                CameraLogger.v(TAG, ((((((logRecord + " face = " + face + " ") + " face.id = " + face.id + " ") + " face.score = " + face.score + " ") + " face.leftEye = " + face.leftEye + " ") + " face.mouth = " + face.mouth + " ") + " face.rect = " + face.rect + " ") + " face.rightEye = " + face.rightEye + " ");
                i++;
            }
        }
    }

    public static FaceInformationList getFaceInformationList(FaceDetectionResult faceDetectResultList, Rect centerPosition) {
        List<DistanceMapItem> sortedDistanceList;
        FaceInformationList resultList = null;
        if (faceDetectResultList != null && (sortedDistanceList = createSortedDistanceList(faceDetectResultList, centerPosition)) != null) {
            resultList = new FaceInformationList();
            for (DistanceMapItem distanceItem : sortedDistanceList) {
                int tempIndex = distanceItem.getArrayIndex();
                Camera.Face face = faceDetectResultList.faceList.get(tempIndex);
                String uuid = String.valueOf(face.id);
                NamedFace tempData = new NamedFace(null, uuid, face.rect);
                resultList.addNamedFace(tempData);
            }
            logFaceDetectionResult(faceDetectResultList);
        }
        return resultList;
    }

    public static Boolean hasValidFaceId(FaceDetectionResult result) {
        Boolean isSupport = Boolean.TRUE;
        for (Camera.Face face : result.faceList) {
            if (face.id == -1) {
                Boolean isSupport2 = Boolean.FALSE;
                return isSupport2;
            }
        }
        return isSupport;
    }

    public static FaceDetectionResult setUuidFaceDetectionResult(FaceDetectionResult result) {
        int index = 0;
        for (Camera.Face face : result.faceList) {
            face.id = index;
            index++;
        }
        return result;
    }

    public static class FaceDetectionResult {
        public List<Camera.Face> faceList = new ArrayList();

        public void addFaceResult(Camera.Face face) {
            this.faceList.add(face);
        }
    }
}