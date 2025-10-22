package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FaceInformationList {
    public static final String TAG = "FaceInformationList";
    private List<NamedFace> mNamedFaceList = new ArrayList();
    private boolean mUseSmileGuage = false;

    public void addNamedFace(NamedFace namedFace) {
        this.mNamedFaceList.add(namedFace);
    }

    public void addNamedFaceList(List<NamedFace> namedFaceList) {
        this.mNamedFaceList.addAll(namedFaceList);
    }

    public void setNamedFaceList(List<NamedFace> namedFaceList) {
        this.mNamedFaceList = namedFaceList;
    }

    public List<NamedFace> getNamedFaceList() {
        return this.mNamedFaceList;
    }

    public NamedFace getNamedFace(int index) {
        if (this.mNamedFaceList.size() > index) {
            return this.mNamedFaceList.get(index);
        }
        CameraLogger.e(TAG, "getNamedFace index overflow index = " + index);
        return null;
    }

    public void clearNamedFaceList() {
        this.mNamedFaceList.clear();
    }

    public void setUseSmileGuage(boolean useSmileGuage) {
        this.mUseSmileGuage = useSmileGuage;
    }

    public boolean isUseSmileGuage() {
        return this.mUseSmileGuage;
    }

    public NamedFace getNamedFaceByUuid(String uuid) {
        for (NamedFace face : this.mNamedFaceList) {
            if (face.mUuid.equals(uuid)) {
                return face;
            }
        }
        return null;
    }

    public static void dumpFaceInformationList(FaceInformationList list) {
        if (list == null) {
            CameraLogger.v(TAG, "dumpFaceInformationList() argument is null");
            return;
        }
        CameraLogger.v(TAG, "dumpFaceInformationList use smile guage = " + list.isUseSmileGuage());
        CameraLogger.v(TAG, "################");
        for (NamedFace face : list.getNamedFaceList()) {
            CameraLogger.v(TAG, " name = " + face.mName + " UUID = " + face.mUuid + " position = " + face.mFacePosition);
        }
        CameraLogger.v(TAG, "################");
    }
}