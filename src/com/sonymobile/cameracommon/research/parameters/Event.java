package com.sonymobile.cameracommon.research.parameters;

/* loaded from: classes.dex */
public class Event {
    public static final String TAG = "Event";

    public interface Action {
    }

    public enum AddonFW implements Action {
        ADD_BUTTON_PRESSED,
        APP_SELECTED_ON_MODE_SELECTOR
    }

    public enum CaptureTrigger implements Action {
        CAMERA_KEY,
        CAPTURE_BUTTON,
        TOUCH_CAPTURE,
        VOLUME_KEY,
        FAST_CAPTURING_LAUNCH,
        SMILE_CAPTURE,
        SELF_TIMER,
        WEARABLE,
        GESTURE,
        OTHER
    }

    public enum Category {
        ADDON_FW,
        THERMAL_MITIGATION,
        CAMERA_NOT_AVAILABLE,
        CAPTURE_OPERATION,
        PANORAMA,
        RECORDING,
        SETTINGS_PHOTO,
        SETTINGS_VIDEO,
        SETTINGS_COMMON,
        ALL_SETTINGS_PHOTO,
        ALL_SETTINGS_VIDEO,
        CHANGED_SETTING,
        SELFTIMER_CANCELLED,
        LOWBATTERY_MITIGATION,
        SLOW_MOTION
    }

    public enum CoolMode implements Action {
        HEATED_OVER_COOLING_LOW,
        HEATED_OVER_COOLING_ULTRA_LOW,
        HEATED_OVER_COOLING_LOW_ON_STARTUP,
        HEATED_OVER_COOLING_ULTRA_LOW_ON_STARTUP
    }

    public interface Label {
    }

    public enum SelfTimerTrigger implements Action {
        NORMAL,
        GESTURE
    }

    public interface UserOperation extends Action {
        Category getCategory();

        int getValue();

        UserOperation getViewer();

        boolean isShooting();

        UserOperation updateOperation(UserOperation userOperation);
    }

    public enum ThermalMitigation implements Action {
        FAIL_TO_START,
        FORCE_QUIT;

        public static ThermalMitigation getType(boolean isOnStartup) {
            return isOnStartup ? FAIL_TO_START : FORCE_QUIT;
        }
    }

    public enum LowBatteryMitigation implements Action {
        FAIL_TO_START,
        FORCE_QUIT;

        public static LowBatteryMitigation getType(boolean isOnStartup) {
            return isOnStartup ? FAIL_TO_START : FORCE_QUIT;
        }
    }

    public enum CameraNotAvailable implements Action {
        FAILED_TO_OPEN,
        OTHER;

        public static CameraNotAvailable getType(boolean isFailedToOpen) {
            return isFailedToOpen ? FAILED_TO_OPEN : OTHER;
        }
    }

    public enum StopOperation implements Action {
        USER_STOP,
        THERMAL_STOP,
        LOWBATTERY_STOP;

        public static StopOperation getType(boolean isThermalStop, boolean isLowBatteryStop) {
            if (isThermalStop) {
                return THERMAL_STOP;
            }
            if (isLowBatteryStop) {
                return LOWBATTERY_STOP;
            }
            return USER_STOP;
        }
    }

    public enum CaptureOperation implements UserOperation {
        EMPTY(0, false),
        SHOOTING(1, true),
        RECORDING(2, false),
        SHOOTING_RECORDING(SHOOTING.mValue | RECORDING.mValue, false),
        BURST(4, false),
        SHOOTING_BURST(SHOOTING.mValue | BURST.mValue, false),
        RECORDING_BURST(RECORDING.mValue | BURST.mValue, false),
        SHOOTING_RECORDING_BURST((SHOOTING.mValue | RECORDING.mValue) | BURST.mValue, false),
        VIEWER(8, false),
        SHOOTING_VIEWER(SHOOTING.mValue | VIEWER.mValue, false),
        RECORDING_VIEWER(RECORDING.mValue | VIEWER.mValue, false),
        SHOOTING_RECORDING_VIEWER((SHOOTING.mValue | RECORDING.mValue) | VIEWER.mValue, false),
        BURST_VIEWER(BURST.mValue | VIEWER.mValue, false),
        SHOOTING_BURST_VIEWER((SHOOTING.mValue | BURST.mValue) | VIEWER.mValue, false),
        RECORDING_BURST_VIEWER((RECORDING.mValue | BURST.mValue) | VIEWER.mValue, false),
        SHOOTING_RECORDING_BURST_VIEWER(((SHOOTING.mValue | RECORDING.mValue) | BURST.mValue) | VIEWER.mValue, false);

        private final boolean mIsShooting;
        private final int mValue;

        CaptureOperation(int value, boolean isShooting) {
            this.mValue = value;
            this.mIsShooting = isShooting;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.Event.UserOperation
        public int getValue() {
            return this.mValue;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.Event.UserOperation
        public boolean isShooting() {
            return this.mIsShooting;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.Event.UserOperation
        public UserOperation getViewer() {
            return VIEWER;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.Event.UserOperation
        public Category getCategory() {
            return Category.CAPTURE_OPERATION;
        }

        @Override // com.sonymobile.cameracommon.research.parameters.Event.UserOperation
        public UserOperation updateOperation(UserOperation currentOperation) {
            int updatedOperationValue = currentOperation.getValue();
            int updatedOperationValue2 = updatedOperationValue | this.mValue;
            for (CaptureOperation co : values()) {
                if (co.mValue == updatedOperationValue2) {
                    return co;
                }
            }
            return null;
        }
    }

    public enum ForceQuit implements Label {
        DURING_PREVIEW,
        DURING_RECORDING;

        public static ForceQuit getType(boolean isRecording) {
            return isRecording ? DURING_RECORDING : DURING_PREVIEW;
        }
    }

    public enum ViewerLaunched {
        NOT_LAUNCHED(0),
        LAUNCHED(1);

        public final int mValue;

        ViewerLaunched(int value) {
            this.mValue = value;
        }

        public static ViewerLaunched getType(CaptureOperation operation) {
            return operation == null ? NOT_LAUNCHED : LAUNCHED;
        }
    }

    public enum TimeFromAfDoneToCaptureStart {
        WITHIN_10_MS,
        WITHIN_50_MS,
        WITHIN_100_MS,
        WITHIN_200_MS,
        WITHIN_500_MS,
        WITHIN_1000_MS,
        WITHIN_1500_MS,
        WITHIN_2000_MS,
        OVER_2000_MS,
        CONTINUOUS_CAPTURE,
        NOT_TARGET;

        public static TimeFromAfDoneToCaptureStart getType(long time) {
            if (time >= 2000) {
                return OVER_2000_MS;
            }
            if (time >= 1500) {
                return WITHIN_2000_MS;
            }
            if (time >= 1000) {
                return WITHIN_1500_MS;
            }
            if (time >= 500) {
                return WITHIN_1000_MS;
            }
            if (time >= 200) {
                return WITHIN_500_MS;
            }
            if (time >= 100) {
                return WITHIN_200_MS;
            }
            if (time >= 50) {
                return WITHIN_100_MS;
            }
            if (time >= 10) {
                return WITHIN_50_MS;
            }
            return WITHIN_10_MS;
        }
    }
}