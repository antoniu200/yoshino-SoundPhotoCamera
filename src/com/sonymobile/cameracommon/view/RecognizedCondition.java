package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameraextension.CameraExtension;

/* loaded from: classes.dex */
public class RecognizedCondition {
    private final CameraExtension.DeviceStabilityCondition mCondition;
    private final int mIconId;
    private final int mTextId;

    private RecognizedCondition(CameraExtension.DeviceStabilityCondition condition, int iconId, int textId) {
        this.mCondition = condition;
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    public static RecognizedCondition create(CameraExtension.DeviceStabilityCondition condition) {
        if (condition == null) {
            return new RecognizedCondition(null, -1, -1);
        }
        switch (AnonymousClass1.$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[condition.ordinal()]) {
            case 1:
                return new RecognizedCondition(condition, -1, -1);
            case 2:
                return new RecognizedCondition(condition, R.drawable.cam_condition_motion_icn, -1);
            case 3:
                return new RecognizedCondition(condition, R.drawable.cam_condition_stable_icn, -1);
            case 4:
                return new RecognizedCondition(condition, R.drawable.cam_condition_walk_icn, -1);
            default:
                return new RecognizedCondition(condition, -1, -1);
        }
    }

    /* renamed from: com.sonymobile.cameracommon.view.RecognizedCondition$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition = new int[CameraExtension.DeviceStabilityCondition.values().length];

        static {
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[CameraExtension.DeviceStabilityCondition.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[CameraExtension.DeviceStabilityCondition.MOTION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[CameraExtension.DeviceStabilityCondition.STABLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$DeviceStabilityCondition[CameraExtension.DeviceStabilityCondition.WALK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public CameraExtension.DeviceStabilityCondition getCondition() {
        return this.mCondition;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }
}