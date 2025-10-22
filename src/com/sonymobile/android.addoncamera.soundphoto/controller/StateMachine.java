package com.sonymobile.android.addoncamera.soundphoto.controller;

import android.hardware.Camera;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder;

/* loaded from: classes.dex */
public interface StateMachine extends StorageController.StorageListener {

    public enum ErrorCode {
        ERROR_ON_START_PREVIEW
    }

    public interface OnStateChangedListener {
        void onStateChanged(CaptureState captureState, Object... objArr);
    }

    public enum StaticEvent {
        EVENT_ON_PHOTO_STACK_INITIALIZED,
        EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED,
        EVENT_ON_FACE_DETECTED,
        EVENT_ON_ZOOM_CHANGED,
        EVENT_ON_ORIENTATION_CHANGED,
        EVENT_ON_RECORD_PROGRESS_UPDATED,
        EVENT_ON_STOP_BUFFERING,
        EVENT_ON_SETTING_CHANGED,
        EVENT_ON_LAZY_INITIALIZATION_TASK_RUN,
        EVENT_ON_DEVICE_ERROR
    }

    public enum TouchEventSource {
        UNKNOWN,
        CAPTURE_AREA,
        FACE,
        PHOTO_BUTTON
    }

    public enum TransitterEvent {
        EVENT_ON_SOUND_CAPTURE_COMPLETED,
        EVENT_REQUEST_RESET_CAPTURED_AUDIO_SAMPLE_DATA,
        EVENT_INITIALIZE,
        EVENT_RESUME,
        EVENT_RESUME_TIMEOUT,
        EVENT_PAUSE,
        EVENT_FINALIZE,
        EVENT_ON_EVF_PREPARED,
        EVENT_ON_EVF_PREPARATION_FAILED,
        EVENT_ON_AUTO_FOCUS_DONE,
        EVENT_ON_SHUTTER_DONE,
        EVENT_ON_TAKE_PICTURE_DONE,
        EVENT_ON_DEVICE_ERROR,
        EVENT_ON_PREVIEW_FRAME_UPDATED,
        EVENT_ON_PREVIEW_FRAME,
        EVENT_ON_SWITCH_CAMERA,
        EVENT_ON_STORE_REQUESTED,
        EVENT_ON_STORE_COMPLETED,
        EVENT_STORAGE_ERROR,
        EVENT_STORAGE_MOUNTED,
        EVENT_STORAGE_SHOULD_CHANGE,
        EVENT_KEY_FOCUS_DOWN,
        EVENT_KEY_FOCUS_UP,
        EVENT_KEY_CAPTURE_DOWN,
        EVENT_KEY_CAPTURE_UP,
        EVENT_KEY_ZOOM_IN_DOWN,
        EVENT_KEY_ZOOM_OUT_DOWN,
        EVENT_KEY_ZOOM_UP,
        EVENT_KEY_MENU,
        EVENT_KEY_BACK,
        EVENT_PREPARE_TOUCH_ZOOM,
        EVENT_ON_PREPARE_TOUCH_ZOOM_TIMEOUTED,
        EVENT_START_TOUCH_ZOOM,
        EVENT_STOP_TOUCH_ZOOM,
        EVENT_CANCEL_TOUCH_ZOOM,
        EVENT_CAPTURE_BUTTON_TOUCH,
        EVENT_CAPTURE_BUTTON_RELEASE,
        EVENT_CAPTURE_BUTTON_CANCEL,
        EVENT_START_AF_SEARCH_IN_TOUCH,
        EVENT_START_AF_SEARCH_IN_TOUCH_STOP,
        EVENT_SET_FOCUS_POSITION,
        EVENT_SCREEN_CLEAR,
        EVENT_TOUCH_CONTENT_PROGRESS_BAR,
        EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY,
        EVENT_DIALOG_OPENED,
        EVENT_DIALOG_CLOSED
    }

    void addOnStateChangedListener(OnStateChangedListener onStateChangedListener);

    boolean canApplicationBeFinished();

    boolean canCurrentStateHandleAsynchronizedTask();

    boolean canModeSelectorBeOpened();

    boolean canSelfTimerBeOpened();

    boolean canSettingUiBeOpened();

    CaptureState getCurrentCaptureState();

    boolean isDialogOpened();

    void onDeviceOpened(Camera.Parameters parameters, CapturingMode capturingMode);

    void removeOnStateChangedListener(OnStateChangedListener onStateChangedListener);

    void sendEvent(TransitterEvent transitterEvent, Object... objArr);

    void sendStaticEvent(StaticEvent staticEvent, Object... objArr);

    void setCameraDevice(CameraDeviceHandler cameraDeviceHandler);

    void setViewFinder(SoundPhotoViewFinder soundPhotoViewFinder);

    public static class Factory {
        public static StateMachineController newInstance(SoundPhotoCameraActivity activity, SettingPreferenceManager preference) {
            return new StateMachineController(activity, preference);
        }
    }

    public enum CaptureState {
        STATE_NONE(false, false),
        STATE_INITIALIZE(false, false),
        STATE_RESUME(false, false),
        STATE_PHOTO_BASE(false, false),
        STATE_PHOTO_ZOOMING_BASE(false, false),
        STATE_STANDBY(true, true),
        STATE_PHOTO_ZOOMING(false, true),
        STATE_PHOTO_ZOOMING_IN_TOUCH(false, true),
        STATE_STANDBY_DIALOG(true, true),
        STATE_PHOTO_AF_SEARCH(false, false),
        STATE_PHOTO_AF_SEARCH_IN_TOUCH(false, false),
        STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION(false, false),
        STATE_PHOTO_AF_DONE(false, false),
        STATE_PHOTO_AF_DONE_IN_TOUCH(false, false),
        STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE(false, false),
        STATE_PHOTO_CAPTURE(false, false),
        STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE(false, false),
        STATE_PHOTO_STORE(false, false),
        STATE_PHOTO_SELFTIMER_COUNTDOWN(true, false),
        STATE_PAUSE(false, true),
        STATE_WARNING(true, true),
        STATE_FINALIZE(false, false),
        STATE_CAMERA_SWITCHING(false, false);

        final boolean mCanApplicationBeFinished;
        final boolean mCanHandleAsynchronizedTask;

        CaptureState(boolean canHandleLazyInitializationTask, boolean canBeFinished) {
            this.mCanHandleAsynchronizedTask = canHandleLazyInitializationTask;
            this.mCanApplicationBeFinished = canBeFinished;
        }

        public boolean canHandleAsynchronizedTask() {
            return this.mCanHandleAsynchronizedTask;
        }

        public boolean canApplicationBeFinished() {
            return this.mCanApplicationBeFinished;
        }
    }
}