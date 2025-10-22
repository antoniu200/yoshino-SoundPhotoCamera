package com.sonymobile.android.addoncamera.soundphoto.view;

import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;

/* loaded from: classes.dex */
public interface SoundPhotoViewFinder extends ViewFinderInterface, StorageController.StorageDialogStateListener, LocationAcquiredListener {

    public enum UiComponentKind {
        ZOOM_BAR,
        SETTING_DIALOG,
        OVERLAY_ALERT_DIALOG,
        REVIEW_WINDOW
    }

    public enum ViewUpdateEvent {
        EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY,
        EVENT_REQUEST_RESIZE_EVF_SCOPE,
        EVENT_REQUEST_CHECK_SURFACE_PREPARED,
        EVENT_REQUEST_HIDE_SURFACE,
        EVENT_REQUEST_SHOW_SURFACE,
        EVENT_REQUEST_HIDE_REMAIN_INDICATOR,
        EVENT_REQUEST_SHOW_REMAIN_INDICATOR,
        EVENT_REQUEST_PREPARE_RECORDING_INDICATOR,
        EVENT_ON_CAMERA_MODE_CHANGED_TO,
        EVENT_ON_DETECTED_SCENE_CHANGED,
        EVENT_ON_FACE_DETECTED,
        EVENT_ON_ZOOM_CHANGED,
        EVENT_ON_FOCUS_POSITION_SELECTED,
        EVENT_ON_FOCUS_POSITION_RELEASED,
        EVENT_ON_ORIENTATION_CHANGED,
        EVENT_ON_AF_CANCELED,
        EVENT_UPDATE_DIALOGS,
        EVENT_CLOSE_ENTIRE_HIERARCHY_DIALOGS,
        EVENT_CLOSE_CURRENT_DIALOGS,
        EVENT_REQUEST_SHOW_AUTO_REVIEW,
        EVENT_REQUEST_SHOW_INSTANT_VIEWER,
        EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL,
        EVENT_ON_NOTIFY_CAPTURE_DONE_TO_SOUND_LEVEL_INDICATOR,
        EVENT_REQUEST_SET_EARLY_THUMBNAIL,
        EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL,
        EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION,
        EVENT_ON_LAZY_INITIALIZATION_TASK_RUN,
        EVENT_ON_RECORD_PROGRESS_UPDATED,
        EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS,
        EVENT_ON_SOUND_CAPTURE_COMPLETED,
        EVENT_ON_STORE_COMPLETED,
        EVENT_ON_NOTIFY_THERMAL_NORMAL,
        EVENT_ON_NOTIFY_THERMAL_WARNING,
        EVENT_ON_SELFTIMER_FINISH,
        EVENT_REQUEST_CAPTURE_FEEDBACK,
        EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY,
        EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE
    }

    void checkSurfaceSize();

    void closeCapturingModeSelector();

    int getOrientation();

    int getRequestId(boolean z);

    boolean isCapturingModeSelectorOpened();

    boolean isOpenAutoReview();

    boolean isSetupHeadupDisplayInvoked();

    void onToggledCameraSwitch();

    void reconstructLocalCache();

    void saveLocalCache();

    void sendViewUpdateEvent(ViewUpdateEvent viewUpdateEvent, Object... objArr);

    void setCameraDevice(CameraDeviceHandler cameraDeviceHandler);

    void setContentView();

    void setStateMachine(StateMachine stateMachine);

    void setTouchCapture(TouchCapture touchCapture);

    void startInflateTask();

    public static class Factory {
        public static SoundPhotoViewFinder newInstance(SoundPhotoCameraActivity activity, SettingPreferenceManager preference) {
            return new ViewFinderVisuals(activity, preference);
        }
    }
}