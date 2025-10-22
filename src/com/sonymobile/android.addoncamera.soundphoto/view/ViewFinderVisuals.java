package com.sonymobile.android.addoncamera.soundphoto.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationFactory;
import com.sonyericsson.cameracommon.capturefeedback.contextview.GLSurfaceContextView;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.values.SaveDestination;
import com.sonyericsson.cameracommon.commonsetting.values.TouchCapture;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.focusview.FocusActionListener;
import com.sonyericsson.cameracommon.focusview.FocusRectangles;
import com.sonyericsson.cameracommon.focusview.FocusRectanglesViewList;
import com.sonyericsson.cameracommon.focusview.TaggedRectangle;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.review.AutoReviewWindow;
import com.sonyericsson.cameracommon.review.ReviewWindowListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogListener;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.viewfinder.DefaultLayoutPattern;
import com.sonyericsson.cameracommon.viewfinder.DefaultLayoutPatternApplier;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.viewfinder.ViewFinder;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;
import com.sonyericsson.cameracommon.zoombar.Zoombar;
import com.sonymobile.android.addoncamera.soundphoto.CameraDeviceHandler;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoCameraActivity;
import com.sonymobile.android.addoncamera.soundphoto.contents.AudioData;
import com.sonymobile.android.addoncamera.soundphoto.contents.SoundPhotoContentsIntegrator;
import com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine;
import com.sonymobile.android.addoncamera.soundphoto.setting.CapturingMode;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;
import com.sonymobile.android.addoncamera.soundphoto.view.AudioPlayer;
import com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea;
import com.sonymobile.android.addoncamera.soundphoto.view.LayoutAsyncInflateItems;
import com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder;
import com.sonymobile.android.addoncamera.soundphoto.view.settingui.SoundPhotoSettingUi;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event;
import com.sonymobile.cameracommon.view.SelfTimerCountDownView;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
class ViewFinderVisuals extends ViewFinder implements SoundPhotoViewFinder, StateMachine.OnStateChangedListener, SurfaceHolder.Callback, ReviewWindowListener, ContentResolverUtilListener, ContentsViewController.OnClickThumbnailProgressListener {
    private static final String TAG = ViewFinderVisuals.class.getSimpleName();
    private SoundPhotoCameraActivity mActivity;
    private AudioPlayer mAudioPlayer;
    private AutoReviewWindow mAutoReview;
    private CameraDeviceHandler mCameraDevice;
    private CaptureFeedback mCaptureFeedback;
    private SoundPhotoViewFinder.UiComponentKind mCurrentDisplayingUiComponent;
    private final FocusActionListener mFocusActionListener;
    private FocusRectangles mFocusRectangles;
    private boolean mIsOpenInstantViewer;
    private boolean mIsSetupHeadupDisplayInvoked;
    private KeyEventTranslator mKeyTranslatorAutoReview;
    private final SettingChangerInterface<ParameterValue> mOnChangedModeSettingListener;
    private final AudioPlayer.OnPlayFinishedListener mOnPlayFinishedListener;
    private int mOrientation;
    private final PostUiInflatedTask mPostUiInflatedTask;
    private SelfTimerCountDownView mSelfTimerCountDownView;
    private SelfTimerCountDownView mSelfTimerCountDownViewNext;
    private Indicator mSelfTimerIndicator;
    private final SettingDialogListener mSettingDialogListener;
    private final SettingPreferenceManager mSettingPreference;
    private SoundPhotoSettingUi mSettingUi;
    private boolean mSoundCaptureOngoing;
    private SoundRecordingIndicator mSoundIndicator;
    private StateMachine mStateMachine;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceView mSurfaceView;
    private final UiComponentBackgroundTouchEventHandler mUiComponentBackgroundTouchEventHandler;
    private CaptureArea mViewFinderCaptureArea;

    private static void logPerformance(String event) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + TAG + "] [" + Thread.currentThread().getName() + " : " + event + "]");
    }

    ViewFinderVisuals(Context context, SettingPreferenceManager preferences) {
        super((SoundPhotoCameraActivity) context, new DefaultLayoutPatternApplier(), null);
        this.mCameraDevice = null;
        this.mSurfaceView = null;
        this.mSurfaceHolder = null;
        this.mSoundIndicator = null;
        this.mAudioPlayer = null;
        this.mCaptureFeedback = null;
        this.mSoundCaptureOngoing = true;
        this.mSelfTimerCountDownView = null;
        this.mSelfTimerCountDownViewNext = null;
        this.mOrientation = 2;
        this.mPostUiInflatedTask = new PostUiInflatedTask();
        this.mUiComponentBackgroundTouchEventHandler = new UiComponentBackgroundTouchEventHandler();
        this.mOnChangedModeSettingListener = new SettingChangerInterface<ParameterValue>() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.1
            @Override // com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface
            public void changeValue(TypedSettingItem<ParameterValue> item) throws Resources.NotFoundException {
                ViewFinderVisuals.this.mSettingPreference.getCurrentPreference().set(item.getData());
                ViewFinderVisuals.this.mSettingUi.updateMenuItems(false);
                ViewFinderVisuals.this.mSettingUi.updateShortcutItems();
                if (item.getData().key() == Parameters.SELF_TIMER) {
                    ViewFinderVisuals.this.updatePhotoCaptureButton();
                    ViewFinderVisuals.this.setupSelfTimerCountDownView();
                }
                ViewFinderVisuals.this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_SETTING_CHANGED, new Object[0]);
            }
        };
        this.mSettingDialogListener = new SettingDialogListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.2
            @Override // com.sonyericsson.cameracommon.setting.controller.SettingDialogListener
            public void onOpenSettingDialog(SettingDialogStack sender, boolean isAlreadyOpened, boolean isAnimation) {
                ViewFinderVisuals.this.closeCapturingModeSelector();
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
            }

            @Override // com.sonyericsson.cameracommon.setting.controller.SettingDialogListener
            public void onCloseSettingDialog(SettingDialogStack sender, boolean isAllClosed) {
                if (isAllClosed) {
                    ViewFinderVisuals.this.mSettingUi.clearShortcutSelected();
                    if (ViewFinderVisuals.this.isAllDialogClosed()) {
                        ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
                    }
                }
            }
        };
        this.mOnPlayFinishedListener = new AudioPlayer.OnPlayFinishedListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.4
            @Override // com.sonymobile.android.addoncamera.soundphoto.view.AudioPlayer.OnPlayFinishedListener
            public void onPlayFinished() {
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_RESET_CAPTURED_AUDIO_SAMPLE_DATA, new Object[0]);
            }
        };
        this.mFocusActionListener = new FocusActionListener() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.5
            @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
            public void onTouched() {
            }

            @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
            public void onCanceled() {
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_CANCEL, new Object[0]);
            }

            @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
            public void onReleased() {
                ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.FALSE);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, StateMachine.TouchEventSource.FACE);
            }

            @Override // com.sonyericsson.cameracommon.focusview.FocusActionListener
            public void onLongPressed() {
            }
        };
        this.mIsOpenInstantViewer = false;
        this.mKeyTranslatorAutoReview = new KeyEventTranslator(getActivity().getCommonSettings()) { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.6
            @Override // com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator
            public KeyEventTranslator.TranslatedKeyCode translateKeyCode(int keyCode) {
                KeyEventTranslator.TranslatedKeyCode translatedKeyCode = super.translateKeyCode(keyCode);
                switch (keyCode) {
                    case 24:
                    case 25:
                        KeyEventTranslator.TranslatedKeyCode translatedKeyCode2 = KeyEventTranslator.TranslatedKeyCode.VOLUME;
                        return translatedKeyCode2;
                    default:
                        return translatedKeyCode;
                }
            }
        };
        this.mActivity = (SoundPhotoCameraActivity) context;
        this.mSurfaceView = new SurfaceView(this.mActivity);
        this.mSurfaceView.getHolder().addCallback(this);
        disableAccessibilityTalkBack();
        this.mIsSetupHeadupDisplayInvoked = false;
        this.mSettingPreference = preferences;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void setContentView() {
        setup(this.mSurfaceView);
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void setStateMachine(StateMachine stateMachine) {
        if (stateMachine != null) {
            stateMachine.addOnStateChangedListener(this);
        } else if (this.mStateMachine != null) {
            this.mStateMachine.removeOnStateChangedListener(this);
        }
        this.mStateMachine = stateMachine;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void setCameraDevice(CameraDeviceHandler cameraDevice) {
        this.mCameraDevice = cameraDevice;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.controller.StateMachine.OnStateChangedListener
    public void onStateChanged(StateMachine.CaptureState currentState, Object... objects) throws Resources.NotFoundException {
        onViewFinderStateChanged(currentState, objects);
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder, com.sonyericsson.cameracommon.activity.BaseActivity.LayoutOrientationChangedListener
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation orient) throws Resources.NotFoundException {
        int orientation;
        super.onLayoutOrientationChanged(orient);
        if (orient == BaseActivity.LayoutOrientation.Portrait) {
            orientation = 1;
        } else {
            orientation = 2;
        }
        this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_ORIENTATION_CHANGED, Integer.valueOf(orientation));
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.setSensorOrientation(orientation);
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder
    protected void setOrientation(int orientation) throws Resources.NotFoundException {
        this.mOrientation = orientation;
        super.setOrientation(orientation);
        if (isHeadUpDisplayReady()) {
            if (this.mSettingUi != null) {
                this.mSettingUi.setSensorOrientation(orientation);
            }
            if (this.mSoundIndicator != null) {
                this.mSoundIndicator.setSensorOrientation(orientation);
            }
            if (this.mAutoReview != null) {
                this.mAutoReview.setOrientation(orientation);
                if (this.mAudioPlayer != null) {
                    this.mAudioPlayer.setSensorOrientation(orientation);
                }
            }
            if (this.mSelfTimerIndicator != null) {
                this.mSelfTimerIndicator.setSensorOrientation(orientation);
            }
            if (this.mSelfTimerCountDownView != null) {
                this.mSelfTimerCountDownView.setSensorOrientation(orientation);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surface) {
        onSurfaceAvailableInternal(surface, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSurfaceAvailableInternal(SurfaceHolder surface, int width, int height) {
        checkSurfaceIsPreparedOrNot(surface, width, height);
    }

    private void checkSurfaceIsPreparedOrNot(SurfaceHolder surface, int width, int height) {
        if (this.mCameraDevice != null) {
            Rect previewRect = this.mCameraDevice.getPreviewRect();
            if (previewRect == null) {
                Handler handler = getBaseLayout().getRootView().getHandler();
                if (handler != null) {
                    handler.postDelayed(new SurfaceAvailableRetryTask(surface, width, height), 100L);
                }
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_EVF_PREPARATION_FAILED, new Object[0]);
                return;
            }
            this.mSurfaceHolder = surface;
            Rect textureRect = new Rect(0, 0, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
            Rect finderRect = computePreviewRect(this.mActivity, previewRect.width(), previewRect.height());
            if (isNearSameSize(finderRect, textureRect)) {
                notifyOnEvfPrepared(previewRect);
            } else {
                resizeEvfScope(finderRect.width(), finderRect.height());
            }
        }
    }

    public static final boolean isNearSameSize(Rect rectA, Rect rectB) {
        float aspectA = rectA.width() / rectA.height();
        float aspectB = rectB.width() / rectB.height();
        return ((int) (aspectA * 100.0f)) == ((int) (aspectB * 100.0f));
    }

    private class SurfaceAvailableRetryTask implements Runnable {
        private final int mHeight;
        private final SurfaceHolder mSurface;
        private final int mWidth;

        SurfaceAvailableRetryTask(SurfaceHolder surface, int width, int height) {
            this.mSurface = surface;
            this.mWidth = width;
            this.mHeight = height;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewFinderVisuals.this.onSurfaceAvailableInternal(this.mSurface, this.mWidth, this.mHeight);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surface, int format, int width, int height) {
        checkSurfaceIsPreparedOrNot(surface, width, height);
    }

    private void notifyOnEvfPrepared(Rect previewRect) {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_EVF_PREPARED, this.mSurfaceHolder);
    }

    @SuppressLint({"NewApi"})
    private void resizeEvfScope(int width, int height) {
        if (this.mSurfaceView.getWidth() == width && this.mSurfaceView.getHeight() == height) {
            throw new IllegalArgumentException("resizeEvfScope():[Already resized]");
        }
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) this.mSurfaceView.getLayoutParams();
        params.width = width;
        params.height = height;
        params.gravity = 17;
        this.mSurfaceView.setLayoutParams(params);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surface) {
        if (this.mCameraDevice == null) {
            CameraLogger.w(TAG, "CameraDevice has aleady been released.");
        } else {
            this.mCameraDevice.stopLiveViewFinder();
        }
    }

    private void setupHeadUpDisplay() throws Resources.NotFoundException {
        if (!this.mActivity.isDeviceInSecurityLock() || !this.mIsSetupHeadupDisplayInvoked) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.RESUME_TO_LAUNCH, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH, true);
            joinInflateTask();
            if (!isHeadUpDisplayReady() && this.mSurfaceView.getWidth() < this.mSurfaceView.getHeight()) {
                this.mActivity.postDelayedEvent(new ReTrySetupHeadUpDisplayTask(), 100L);
                return;
            }
            boolean isHeadUpDisplayReady = isHeadUpDisplayReady();
            if (isInflated()) {
                setPreInflatedHeadUpDisplay((ViewGroup) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.HEAD_UP_DISPLAY).get(0));
            }
            requestSetupHeadUpDisplay();
            if (!isHeadUpDisplayReady) {
                RelativeLayout overlay = setupViewFinderLayout();
                getBaseLayout().getPreviewOverlayContainer().addView(overlay);
            }
            setupSoundIndicator();
            setupZoombar(true);
            setupSettingUi();
            setupContentsView();
            setupCaptureArea();
            setupFocusRectangles();
            setupOnScreenCameraButton();
            setupCapturingModeSelectorButton();
            setupAutoReview();
            setupAudioPlayer();
            setupSelfTimerIndicator();
            setupSelfTimerCountDownView();
            setOrientation(getBaseLayout().getCurrentOrientation());
            this.mIsSetupHeadupDisplayInvoked = true;
            changeToPhotoIdleView(true);
            Handler handler = getBaseLayout().getRootView().getHandler();
            if (handler != null) {
                handler.post(this.mPostUiInflatedTask);
            }
            this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED, new Object[0]);
            clearPreInflatedViews();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH_TO_DISPATCH_DRAW, true);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, false);
        }
    }

    private RelativeLayout setupViewFinderLayout() {
        RelativeLayout overlay = null;
        if (isInflated()) {
            overlay = (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.PREVIEW_OVERLAY).get(0);
        }
        if (overlay == null) {
            overlay = (RelativeLayout) LayoutInflater.from(this.mActivity).inflate(R.layout.preview_overlay, (ViewGroup) null);
        }
        GLSurfaceContextView captureFeedbackContextView = new GLSurfaceContextView(getActivity(), null);
        overlay.addView(captureFeedbackContextView);
        captureFeedbackContextView.getLayoutParams().width = -1;
        captureFeedbackContextView.getLayoutParams().height = -1;
        captureFeedbackContextView.setVisibility(4);
        this.mCaptureFeedback = captureFeedbackContextView;
        return overlay;
    }

    class PostUiInflatedTask implements Runnable {
        PostUiInflatedTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewFinderVisuals.this.setupAnimations();
        }
    }

    class ReTrySetupHeadUpDisplayTask implements Runnable {
        ReTrySetupHeadUpDisplayTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ViewFinderVisuals.this.mStateMachine != null) {
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY, (Object[]) null);
            }
        }
    }

    private class UiComponentBackgroundTouchEventHandler implements View.OnTouchListener {
        private UiComponentBackgroundTouchEventHandler() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motion) {
            if (motion.getAction() == 1) {
                ViewFinderVisuals.this.closeCurrentDisplayingUiComponent();
            }
            return true;
        }
    }

    private void setupFocusRectangles() {
        int devicePreviewWidth;
        int devicePreviewHeight;
        if (this.mCameraDevice == null || this.mCameraDevice.getPreviewRect() == null) {
            devicePreviewWidth = 0;
            devicePreviewHeight = 0;
        } else {
            devicePreviewWidth = this.mCameraDevice.getPreviewRect().width();
            devicePreviewHeight = this.mCameraDevice.getPreviewRect().height();
        }
        FocusRectanglesViewList focusRectanglesViewList = new FocusRectanglesViewList();
        if (isInflated()) {
            focusRectanglesViewList.rectanglesContainer = (RelativeLayout) this.mActivity.findViewById(R.id.focus_rectangles);
            focusRectanglesViewList.faceViewList = (View[]) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_FACE).toArray(new View[0]);
            focusRectanglesViewList.trackedObjectView = (TaggedRectangle) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_OBJECT_TRACKING).get(0);
            focusRectanglesViewList.singleAfView = (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_SINGLE).get(0);
            focusRectanglesViewList.touchAfView = (RelativeLayout) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.RECTANGLE_TOUCH).get(0);
        }
        if (this.mFocusRectangles == null) {
            this.mFocusRectangles = new FocusRectangles(this.mActivity, this.mFocusActionListener, devicePreviewWidth, devicePreviewHeight, focusRectanglesViewList, this.mViewFinderCaptureArea, null, this.mScreenAspect);
        }
        if (isTouchCaptureEnable()) {
            this.mFocusRectangles.enableFaceTouchCapture();
        } else {
            this.mFocusRectangles.disableFaceTouchCapture();
        }
        this.mFocusRectangles.setVisibility(0);
    }

    private void setupCaptureArea() {
        if (this.mViewFinderCaptureArea == null) {
            this.mViewFinderCaptureArea = (CaptureArea) this.mActivity.findViewById(R.id.viewfinder_capture);
        }
        if (isTouchCaptureEnable()) {
            if (this.mSettingPreference.getCurrentPreference().capturingMode == CapturingMode.FRONT) {
                this.mViewFinderCaptureArea.setCaptureAreaStateListener(new ViewFinderTouchCaptureListener());
                return;
            } else {
                this.mViewFinderCaptureArea.setCaptureAreaStateListener(new ViewFinderCaptureAreaNonObjectTrackingStateListener());
                return;
            }
        }
        if (this.mSettingPreference.getCurrentPreference().capturingMode == CapturingMode.FRONT) {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(new ViewFinderNonActionListener());
        } else {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(new ViewFinderTouchActionNonObjectTrackingStateListener());
        }
    }

    private void setupOnScreenCameraButton() throws Resources.NotFoundException {
        OnScreenButtonListener photo = new OnScreenCaptureButtonStateListener();
        getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.CAPTURE, photo);
        getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_LONG, photo);
        getBaseLayout().getOnScreenButtonGroup().setListener(OnScreenButtonGroup.ButtonType.SELFTIMER_SHORT, photo);
        updatePhotoCaptureButton();
        getBaseLayout().getOnScreenButtonGroup().setSub(OnScreenButtonGroup.ButtonType.NONE);
    }

    private void setupContentsView() {
        this.mStateMachine.sendStaticEvent(StateMachine.StaticEvent.EVENT_ON_PHOTO_STACK_INITIALIZED, getBaseLayout().getContentsViewController());
    }

    private void setupSettingUi() {
        if (this.mSettingUi == null) {
            SettingDialogStack dialogStack = new SettingDialogStack(this.mActivity, this.mSettingDialogListener, (ViewGroup) this.mActivity.findViewById(R.id.left_container), (FrameLayout) this.mActivity.findViewById(R.id.setting_container));
            this.mSettingUi = new SoundPhotoSettingUi(this.mActivity, dialogStack, this.mActivity.getCommonSettings(), this.mSettingPreference, this.mOnChangedModeSettingListener, this);
        }
        this.mSettingUi.setup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePhotoCaptureButton() throws Resources.NotFoundException {
        if (this.mStateMachine.getCurrentCaptureState() != StateMachine.CaptureState.STATE_PHOTO_SELFTIMER_COUNTDOWN) {
            OnScreenButtonGroup.ButtonType mainButton = ((SelfTimer) this.mSettingPreference.getCurrentPreference().selfTimer.get()).getButtonType();
            getBaseLayout().getOnScreenButtonGroup().setMain(mainButton);
        }
    }

    private void setupSelfTimerIndicator() {
        if (this.mSelfTimerIndicator == null) {
            ImageView image = new ImageView(this.mActivity);
            getBaseLayout().getCaptureMethodIndicatorContainer().addView(image);
            ((FrameLayout.LayoutParams) image.getLayoutParams()).gravity = 17;
            this.mSelfTimerIndicator = new Indicator(image);
            this.mSelfTimerIndicator.set(false);
            this.mSelfTimerIndicator.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupAnimations() {
        Rect dstRect = new Rect();
        getBaseLayout().getRootView().findViewById(R.id.contents_container).getGlobalVisibleRect(dstRect);
    }

    private void resumeView() {
        if (getBaseLayout() != null && getBaseLayout().getContentsViewController() != null) {
            getBaseLayout().getContentsViewController().remove();
        }
        if (isHeadUpDisplayReady()) {
            resume();
            this.mSettingUi.clearShortcutSelected();
            this.mCaptureFeedback.onResume();
        }
    }

    private void pauseView() {
        pause();
        if (this.mSettingUi != null) {
            this.mSettingUi.clearShortcutTray(this.mActivity);
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.onPause();
        }
        clearPreInflatedViews();
        this.mIsSetupHeadupDisplayInvoked = false;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder
    public void release() {
        super.release();
    }

    private void getDownHeadUpDisplay() {
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this);
            this.mSurfaceView = null;
        }
        if (this.mFocusRectangles != null) {
            this.mFocusRectangles.release();
            this.mFocusRectangles = null;
        }
        if (this.mViewFinderCaptureArea != null) {
            this.mViewFinderCaptureArea.setCaptureAreaStateListener(null);
            this.mViewFinderCaptureArea.release();
            this.mViewFinderCaptureArea = null;
        }
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.release();
            this.mCaptureFeedback = null;
        }
        this.mAutoReview = null;
    }

    private void onViewFinderStateChanged(StateMachine.CaptureState currentState, Object... objects) throws Resources.NotFoundException {
        switch (currentState) {
            case STATE_RESUME:
                resumeView();
                this.mSurfaceView.setVisibility(0);
                break;
            case STATE_STANDBY:
                this.mCurrentDisplayingUiComponent = null;
                changeToPhotoIdleView(false);
                if (objects == null || objects.length == 0) {
                    requestToDimSystemUi();
                    break;
                } else if (((SoundPhotoViewFinder.UiComponentKind) objects[0]) != SoundPhotoViewFinder.UiComponentKind.ZOOM_BAR) {
                    requestToDimSystemUi();
                    break;
                }
                break;
            case STATE_PHOTO_ZOOMING:
            case STATE_PHOTO_ZOOMING_IN_TOUCH:
                changeToPhotoZoomingView();
                break;
            case STATE_STANDBY_DIALOG:
                this.mCurrentDisplayingUiComponent = (SoundPhotoViewFinder.UiComponentKind) objects[0];
                changeToPhotoDialogView(this.mCurrentDisplayingUiComponent);
                requestToRecoverSystemUi();
                break;
            case STATE_PHOTO_AF_SEARCH:
            case STATE_PHOTO_AF_SEARCH_IN_TOUCH:
                requestToRemoveSystemUi();
                changeToPhotoFocusSearchView();
                break;
            case STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:
                changeToPhotoFocusSearchView();
                break;
            case STATE_PHOTO_AF_DONE:
            case STATE_PHOTO_AF_DONE_IN_TOUCH:
                changeToPhotoFocusDoneView((Boolean) objects[0]);
                break;
            case STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:
                changeToPhotoCaptureWaitForAfDoneView();
                break;
            case STATE_PHOTO_CAPTURE:
                changeToPhotoCaptureView();
                break;
            case STATE_PHOTO_SELFTIMER_COUNTDOWN:
                changeToPhotoSelftimerView();
                break;
            case STATE_PHOTO_STORE:
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearExceptTouchFocus();
                }
                getBaseLayout().showContentsViewController();
                break;
            case STATE_PAUSE:
                this.mSurfaceView.setVisibility(8);
                pauseView();
                changeToPauseView();
                break;
            case STATE_WARNING:
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.clearAllFocus();
                }
                changeToPhotoIdleView(false);
                requestToDimSystemUi();
                break;
            case STATE_FINALIZE:
                release();
                getDownHeadUpDisplay();
                break;
            case STATE_CAMERA_SWITCHING:
                if (this.mViewFinderCaptureArea != null) {
                    this.mViewFinderCaptureArea.setCaptureAreaStateListener(null);
                    break;
                }
                break;
        }
    }

    private void changeToPhotoIdleView(boolean isResetFocusPositionNeeded) throws Resources.NotFoundException {
        changeLayoutTo(DefaultLayoutPattern.PREVIEW);
        if (isHeadUpDisplayReady()) {
            if (isResetFocusPositionNeeded) {
                this.mFocusRectangles.clearExceptTouchFocus();
            } else {
                this.mFocusRectangles.onUiComponentRemoved();
            }
            this.mFocusRectangles.clearFaceDetection();
            this.mFocusRectangles.setAFLocking(false);
            updatePhotoCaptureButton();
            getBaseLayout().showLeftIconContainer();
            if (this.mSettingUi != null) {
                this.mSettingUi.showShortcutTray();
            }
            if (isOpenAutoReview()) {
                this.mAutoReview.hide();
            }
            if (this.mSoundIndicator != null) {
                this.mSoundIndicator.setVisibility(0);
            }
            if (!this.mIsSetupHeadupDisplayInvoked && getBaseLayout().getContentsViewController() != null) {
                getBaseLayout().getContentsViewController().hide();
            }
        }
    }

    private void changeToPauseView() {
        changeLayoutTo(DefaultLayoutPattern.CLEAR);
        this.mSoundCaptureOngoing = true;
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.clearAllFocus();
            closeReviewWindow();
            if (this.mSoundIndicator != null) {
                this.mSoundIndicator.release();
                this.mSoundIndicator = null;
            }
            if (this.mSettingUi != null) {
                this.mSettingUi.hideShortcutTray();
                this.mSettingUi.closeDialogs(false);
            }
            if (getBaseLayout() != null && getBaseLayout().getContentsViewController() != null) {
                getBaseLayout().getContentsViewController().remove();
            }
            if (getBaseLayout() != null && getBaseLayout().getGeoTagIndicator() != null) {
                getBaseLayout().getGeoTagIndicator().release();
            }
        }
    }

    private void changeToPhotoZoomingView() {
        changeLayoutTo(DefaultLayoutPattern.ZOOMING);
        if (isHeadUpDisplayReady() && this.mSettingUi != null) {
            this.mSettingUi.hideShortcutTray();
            this.mSettingUi.closeDialogs(false);
        }
    }

    private void changeToPhotoFocusView() {
        if (isHeadUpDisplayReady()) {
            getBaseLayout().hideLeftIconContainer();
        }
    }

    private void changeToPhotoFocusSearchView() {
        changeLayoutTo(DefaultLayoutPattern.FOCUS_SEARCHING);
        if (isHeadUpDisplayReady()) {
            changeToPhotoFocusView();
            this.mFocusRectangles.onAutoFocusStarted();
        }
    }

    private void changeToPhotoFocusDoneView(Boolean success) {
        changeLayoutTo(DefaultLayoutPattern.FOCUS_DONE);
        if (isHeadUpDisplayReady()) {
            changeToPhotoFocusView();
            this.mFocusRectangles.onAutoFocusDone(success.booleanValue());
        }
    }

    private void changeToPhotoCaptureWaitForAfDoneView() {
        changeLayoutTo(DefaultLayoutPattern.CAPTURE);
        if (!isHeadUpDisplayReady()) {
        }
    }

    private void changeToPhotoCaptureView() {
        changeLayoutTo(DefaultLayoutPattern.CAPTURE);
        this.mSoundCaptureOngoing = true;
        if (!isHeadUpDisplayReady()) {
        }
    }

    private void changeToPhotoSelftimerView() throws Resources.NotFoundException {
        changeLayoutTo(DefaultLayoutPattern.SELFTIMER);
        getBaseLayout().getOnScreenButtonGroup().setMain(OnScreenButtonGroup.ButtonType.CAPTURE);
        this.mSettingUi.hideShortcutTray();
        this.mSettingUi.closeDialogs(false);
        showSelfTimerCountDownView();
        startSelfTimerCountDownAnimation();
    }

    private void changeToPhotoDialogView(SoundPhotoViewFinder.UiComponentKind kind) {
        if (isHeadUpDisplayReady()) {
            this.mFocusRectangles.onUiComponentOverlaid();
            switch (kind) {
                case SETTING_DIALOG:
                    if (this.mSoundIndicator != null) {
                        this.mSoundIndicator.setVisibility(8);
                    }
                    if (isCapturingModeSelectorOpened()) {
                        changeLayoutTo(DefaultLayoutPattern.MODE_SELECTOR);
                        if (this.mSettingUi != null) {
                            this.mSettingUi.hideShortcutTray();
                            this.mSettingUi.closeDialogs(false);
                            break;
                        }
                    } else if (this.mSettingUi.isOpened()) {
                        changeLayoutTo(DefaultLayoutPattern.SETTING);
                        break;
                    }
                    break;
                case REVIEW_WINDOW:
                    changeLayoutTo(DefaultLayoutPattern.CLEAR);
                    getBaseLayout().hideLeftIconContainer();
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCurrentDisplayingUiComponent() {
        if (this.mCurrentDisplayingUiComponent != null) {
            closeCapturingModeSelector();
            closeEntireHierarchyOfSettingDialogs();
        }
    }

    private void closeCurrentDisplayingUiComponentByBackKey() {
        if (this.mCurrentDisplayingUiComponent != null) {
            closeCapturingModeSelector();
            closeCurrentSettingDialog();
        }
    }

    private void onCameraModeChangedTo(int cameraType) throws Resources.NotFoundException {
        if (isHeadUpDisplayReady()) {
            setupCapturingModeSelectorButton();
            this.mSettingUi.showShortcutTray();
            setupZoombar(true);
            setOrientation(getOrientation());
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent updateEvent, Object... objects) throws Resources.NotFoundException {
        switch (updateEvent) {
            case EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:
                setupHeadUpDisplay();
                break;
            case EVENT_REQUEST_RESIZE_EVF_SCOPE:
                if (this.mActivity != null && this.mCameraDevice != null && this.mCameraDevice.getPreviewRect() != null) {
                    Rect finderRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mCameraDevice.getPreviewRect().width() / this.mCameraDevice.getPreviewRect().height(), this.mScreenAspect);
                    int width = finderRect.width();
                    int height = finderRect.height();
                    Rect textureRect = new Rect(0, 0, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
                    if (!isNearSameSize(finderRect, textureRect)) {
                        resizeEvfScope(width, height);
                        break;
                    }
                }
                break;
            case EVENT_REQUEST_HIDE_REMAIN_INDICATOR:
                if (getBaseLayout().getLowMemoryIndicator() != null) {
                    getBaseLayout().getLowMemoryIndicator().set(false);
                    break;
                }
                break;
            case EVENT_REQUEST_SHOW_REMAIN_INDICATOR:
                if (getBaseLayout().getLowMemoryIndicator() != null) {
                    getBaseLayout().getLowMemoryIndicator().set(true);
                    break;
                }
                break;
            case EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:
                if (getBaseLayout().getRecordingIndicator() != null) {
                    getBaseLayout().getRecordingIndicator().setConstraint(((Boolean) objects[1]).booleanValue());
                    getBaseLayout().getRecordingIndicator().prepareBeforeRecording(((Integer) objects[0]).intValue(), ((Boolean) objects[2]).booleanValue());
                    break;
                }
                break;
            case EVENT_ON_CAMERA_MODE_CHANGED_TO:
                int cameraType = ((Integer) objects[0]).intValue();
                onCameraModeChangedTo(cameraType);
                break;
            case EVENT_ON_FACE_DETECTED:
                FaceDetectUtil.FaceDetectionResult faceResult = (FaceDetectUtil.FaceDetectionResult) objects[0];
                onFaceDetected(faceResult);
                break;
            case EVENT_ON_ZOOM_CHANGED:
                int currentZoom = ((Integer) objects[0]).intValue();
                Zoombar zoomBar = getBaseLayout().getZoomBar();
                if (zoomBar != null) {
                    setupZoombar(false);
                    onZoomChanged(currentZoom);
                    break;
                }
                break;
            case EVENT_ON_FOCUS_POSITION_SELECTED:
                Point touchOnScreen = (Point) objects[0];
                FocusRectangles.FocusSetType focusSetType = (FocusRectangles.FocusSetType) objects[1];
                this.mFocusRectangles.setFocusPosition(touchOnScreen, focusSetType);
                if (focusSetType == FocusRectangles.FocusSetType.FIRST) {
                    this.mFocusRectangles.onAutoFocusStarted();
                    break;
                }
                break;
            case EVENT_ON_FOCUS_POSITION_RELEASED:
                if (isHeadUpDisplayReady()) {
                    this.mFocusRectangles.clearAllFocus();
                    break;
                }
                break;
            case EVENT_ON_ORIENTATION_CHANGED:
                setOrientation(((Integer) objects[0]).intValue());
                break;
            case EVENT_ON_AF_CANCELED:
                if (this.mFocusRectangles != null) {
                    this.mFocusRectangles.onAutoFocusCanceled();
                    break;
                }
                break;
            case EVENT_UPDATE_DIALOGS:
                if (objects != null && objects.length != 0) {
                    SoundPhotoViewFinder.UiComponentKind kind = (SoundPhotoViewFinder.UiComponentKind) objects[0];
                    updateUiComponent(kind);
                    break;
                }
                break;
            case EVENT_CLOSE_ENTIRE_HIERARCHY_DIALOGS:
                closeCurrentDisplayingUiComponent();
                break;
            case EVENT_CLOSE_CURRENT_DIALOGS:
                closeCurrentDisplayingUiComponentByBackKey();
                break;
            case EVENT_REQUEST_SHOW_AUTO_REVIEW:
                openReviewWindow((SoundPhotoContentsIntegrator.SoundPhotoContent) objects[0]);
                break;
            case EVENT_REQUEST_SHOW_INSTANT_VIEWER:
                openInstantViewer((byte[]) objects[0], (String) objects[1], ((Integer) objects[2]).intValue(), ((Integer) objects[3]).intValue(), ((Integer) objects[4]).intValue(), ((Boolean) objects[5]).booleanValue());
                break;
            case EVENT_REQUEST_HIGHLIGHT_CAPTURED_SOUND_LEVEL:
                if (this.mSoundIndicator != null) {
                    this.mSoundIndicator.onCaptureStarted();
                    break;
                }
                break;
            case EVENT_ON_NOTIFY_CAPTURE_DONE_TO_SOUND_LEVEL_INDICATOR:
                if (this.mSoundIndicator != null) {
                    this.mSoundIndicator.onTakePictureDone();
                    break;
                }
                break;
            case EVENT_REQUEST_CAPTURE_FEEDBACK:
                startCaptureFeedbackAnimation();
                break;
            case EVENT_REQUEST_SET_EARLY_THUMBNAIL:
                setEarlyThumbnailView((View) objects[0]);
                break;
            case EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL:
                removeEarlyThumbnailView();
                break;
            case EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:
                int requestId = ((Integer) objects[0]).intValue();
                if (objects.length > 1) {
                    Animation.AnimationListener listener = (Animation.AnimationListener) objects[1];
                    startEarlyThumbnailInsertAnimation(requestId, listener);
                    break;
                } else {
                    startEarlyThumbnailInsertAnimation(requestId);
                    break;
                }
            case EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:
                onLazyInitializationTaskRun();
                break;
            case EVENT_ON_RECORD_PROGRESS_UPDATED:
                if (this.mSoundIndicator != null) {
                    this.mSoundIndicator.updateProgress(((Integer) objects[0]).intValue(), ((Integer) objects[1]).intValue());
                    break;
                }
                break;
            case EVENT_REQUEST_CLEAR_INDICATOR_PROGRESS:
                if (this.mSoundIndicator != null) {
                    this.mSoundIndicator.clearProgress();
                    break;
                }
                break;
            case EVENT_ON_SOUND_CAPTURE_COMPLETED:
                if (this.mSettingPreference.getCurrentPreference().autoReview.get() != AutoReview.EDIT && this.mAudioPlayer != null) {
                    this.mAudioPlayer.setAudioData((AudioData) objects[0], (ByteBuffer) objects[1], this.mOnPlayFinishedListener);
                    this.mSoundCaptureOngoing = false;
                    if (this.mAudioPlayer.isAudioPlayerEnabled()) {
                        this.mAudioPlayer.setupViews();
                        break;
                    }
                }
                break;
            case EVENT_ON_STORE_COMPLETED:
                Uri uri = (Uri) objects[0];
                String mime = (String) objects[1];
                if (this.mAutoReview != null && this.mAutoReview.getUri() == null) {
                    this.mAutoReview.setUri(uri, true);
                    if (this.mAutoReview.isOpened()) {
                        if (this.mSettingPreference.getCurrentPreference().autoReview.get() == AutoReview.EDIT) {
                            AutoReviewWindow.launchEditor(this.mActivity, uri, mime);
                            break;
                        } else if (this.mAudioPlayer != null && !this.mAudioPlayer.isPlaying()) {
                            this.mAutoReview.showRightIcons(true);
                            break;
                        }
                    }
                }
                break;
            case EVENT_ON_NOTIFY_THERMAL_NORMAL:
                onNotifyThermalStatus(false);
                break;
            case EVENT_ON_NOTIFY_THERMAL_WARNING:
                onNotifyThermalStatus(true);
                break;
            case EVENT_ON_SELFTIMER_FINISH:
                cancelSelfTimerCountDownView();
                removeSelfTimerCountDownView();
                break;
            case EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:
                requestToRestoreSystemUi();
                break;
            case EVENT_REQUEST_SHOW_CHANGE_INTERNAL_STORAGE_MESSAGE:
                getActivity().getMessagePopup().showDestinationChangedToInternalMessageOk(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ViewFinderVisuals.this.mActivity.getCommonSettings().set(SaveDestination.EMMC);
                        ViewFinderVisuals.this.mActivity.getStorageManager().setCurrentStorage(StorageUtil.CameraStorageType.INTERNAL);
                        ViewFinderVisuals.this.mActivity.getStorageManager().requestCheckAll();
                        ViewFinderVisuals.this.mActivity.getCommonSettings().setSelectability(CommonSettingKey.SAVE_DESTINATION, ViewFinderVisuals.this.mActivity.getStorageManager().isToggledStorageReady());
                    }
                });
                break;
        }
    }

    private void onLazyInitializationTaskRun() {
        setupCapturingModeSelector();
    }

    private void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
        boolean isMirrored;
        if (isHeadUpDisplayReady()) {
            switch (this.mCameraDevice.getCameraId()) {
                case 0:
                    isMirrored = false;
                    break;
                case 1:
                    isMirrored = true;
                    break;
                default:
                    isMirrored = false;
                    break;
            }
            this.mFocusRectangles.setMirrored(isMirrored);
            this.mFocusRectangles.onFaceDetected(result);
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder
    public void openCapturingModeSelector(String modeName) {
        if (this.mStateMachine.canModeSelectorBeOpened()) {
            super.openCapturingModeSelector(modeName);
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder
    protected void onOpenCapturingModeSelector() {
        closeEntireHierarchyOfSettingDialogs();
        getBaseLayout().setOnTouchListener(this.mUiComponentBackgroundTouchEventHandler);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder
    public void onCloseCapturingModeSelector() {
        getBaseLayout().setOnTouchListener(null);
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
        this.mSoundIndicator.setVisibility(0);
        if (isAllDialogClosed()) {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
        }
    }

    public void onModeSelect(String modeName) {
        closeCapturingModeSelector();
    }

    public void onModeFinish() {
        closeCapturingModeSelector();
        if (!getActivity().isInLockTaskMode()) {
            changeLayoutTo(DefaultLayoutPattern.CLEAR);
            if (this.mSettingUi != null) {
                this.mSettingUi.hideShortcutTray();
                this.mSettingUi.closeDialogs(false);
            }
        } else {
            changeLayoutTo(DefaultLayoutPattern.PREVIEW);
        }
        getActivity().terminateApplication();
    }

    private class OnScreenCaptureButtonStateListener implements OnScreenButtonListener {
        private OnScreenCaptureButtonStateListener() {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onDown(OnScreenButton sender, MotionEvent event) {
            ViewFinderVisuals.this.mSettingUi.closeDialogs(false);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onUp(OnScreenButton sender, MotionEvent event) {
            ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.CAPTURE_BUTTON);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, StateMachine.TouchEventSource.PHOTO_BUTTON);
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onMove(OnScreenButton sender, MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onCancel(OnScreenButton sender, MotionEvent event) {
            if (ViewFinderVisuals.this.mStateMachine != null) {
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_CANCEL, new Object[0]);
            }
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onDispatchDraw(OnScreenButton sender, Canvas canvas) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH_TO_DISPATCH_DRAW, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, false);
        }
    }

    private class ViewFinderNonActionListener implements CaptureArea.CaptureAreaStateListener {
        public ViewFinderNonActionListener() {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point point) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaSingleTapUp(Point point) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaLongPressed(Point point) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaMoved(Point point) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaStopped() {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaReleased(Point point) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaCanceled() {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SCREEN_CLEAR, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaIsReadyToScale() {
            ViewFinderVisuals.this.mActivity.getMessagePopup().showZoomHelpMessage(false);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaScaled(float scaleLength) {
        }
    }

    private class ViewFinderTouchCaptureListener extends ViewFinderNonActionListener {
        private ViewFinderTouchCaptureListener() {
            super();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderNonActionListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point touchPoint) {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderNonActionListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaLongPressed(Point holdPoint) {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderNonActionListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaReleased(Point point) {
            ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, StateMachine.TouchEventSource.CAPTURE_AREA);
        }
    }

    private class ViewFinderTouchActionStateListener implements CaptureArea.CaptureAreaStateListener {
        private ViewFinderTouchActionStateListener() {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point touchPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaSingleTapUp(Point tapUpPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaLongPressed(Point holdPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaMoved(Point movingPoint) {
            setFocusPositionToDeviceAndViewFinder(movingPoint, FocusRectangles.FocusSetType.MOVE);
        }

        protected void setFocusPositionToDeviceAndViewFinder(Point touchPoint, FocusRectangles.FocusSetType focusSetType) {
            PointF positionRatio = ViewFinderVisuals.this.convertTouchPointToDevicePreviewPositionRatio(touchPoint);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SET_FOCUS_POSITION, touchPoint, positionRatio, focusSetType);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaStopped() {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaReleased(Point point) {
            setFocusPositionToDeviceAndViewFinder(point, FocusRectangles.FocusSetType.RELEASE);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_TOUCH_ZOOM, new Object[0]);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaCanceled() {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_TOUCH_ZOOM, new Object[0]);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_SCREEN_CLEAR, new Object[0]);
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaIsReadyToScale() {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_PREPARE_TOUCH_ZOOM, new Object[0]);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaScaled(float scaleLength) {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_TOUCH_ZOOM, Float.valueOf(scaleLength));
        }
    }

    private class ViewFinderTouchActionNonObjectTrackingStateListener extends ViewFinderTouchActionStateListener {
        private ViewFinderTouchActionNonObjectTrackingStateListener() {
            super();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point touchPoint) {
            setFocusPositionToDeviceAndViewFinder(touchPoint, FocusRectangles.FocusSetType.FIRST);
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaSingleTapUp(Point tapUpPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaLongPressed(Point holdPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaMoved(Point movingPoint) {
            setFocusPositionToDeviceAndViewFinder(movingPoint, FocusRectangles.FocusSetType.MOVE);
        }
    }

    private class ViewFinderCaptureAreaStateListener extends ViewFinderTouchActionStateListener {
        private ViewFinderCaptureAreaStateListener() {
            super();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point touchPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaSingleTapUp(Point tapUpPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaLongPressed(Point holdPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaMoved(Point movingPoint) {
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaStopped() {
            if (ViewFinderVisuals.this.isTouchCaptureEnable()) {
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaReleased(Point point) {
            if (ViewFinderVisuals.this.mIsSetupHeadupDisplayInvoked) {
                ResearchUtil.getInstance().setCaptureTrigger(Event.CaptureTrigger.TOUCH_CAPTURE);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_RELEASE, StateMachine.TouchEventSource.CAPTURE_AREA);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STOP_TOUCH_ZOOM, new Object[0]);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CANCEL_TOUCH_ZOOM, new Object[0]);
            }
        }
    }

    private class ViewFinderCaptureAreaNonObjectTrackingStateListener extends ViewFinderCaptureAreaStateListener {
        private ViewFinderCaptureAreaNonObjectTrackingStateListener() {
            super();
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderCaptureAreaStateListener, com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaTouched(Point touchPoint) {
            if (ViewFinderVisuals.this.mIsSetupHeadupDisplayInvoked) {
                setFocusPositionToDeviceAndViewFinder(touchPoint, FocusRectangles.FocusSetType.FIRST);
                ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_CAPTURE_BUTTON_TOUCH, Boolean.TRUE);
            }
        }

        @Override // com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderCaptureAreaStateListener, com.sonymobile.android.addoncamera.soundphoto.view.ViewFinderVisuals.ViewFinderTouchActionStateListener, com.sonymobile.android.addoncamera.soundphoto.view.CaptureArea.CaptureAreaStateListener
        public void onCaptureAreaMoved(Point movingPoint) {
            ViewFinderVisuals.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_START_AF_SEARCH_IN_TOUCH, new Object[0]);
            setFocusPositionToDeviceAndViewFinder(movingPoint, FocusRectangles.FocusSetType.MOVE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PointF convertTouchPointToDevicePreviewPositionRatio(Point touchPointOnScreen) {
        int finderW = this.mSurfaceView.getWidth();
        int finderH = this.mSurfaceView.getHeight();
        int finderX = touchPointOnScreen.x - this.mSurfaceView.getLeft();
        int finderY = touchPointOnScreen.y - this.mSurfaceView.getTop();
        float ratioX = finderX / finderW;
        float ratioY = finderY / finderH;
        return new PointF(ratioX, ratioY);
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public int getOrientation() {
        return getBaseLayout().getCurrentOrientation();
    }

    private void setupCapturingModeSelectorButton() {
        if (getBaseLayout().isHeadUpDisplayReady()) {
            CapturingModeButtonAttributes attribute = new CapturingModeButtonAttributes(SoundPhotoCameraActivity.CAPTURING_MODE_NAME, R.drawable.close_app, R.string.cam_strings_accessibility_back_main_txt);
            getBaseLayout().getCapturingModeButton().setCurrentCapturingMode(attribute);
        }
    }

    private void setupAutoReview() {
        if (this.mAutoReview == null) {
            this.mAutoReview = (AutoReviewWindow) this.mActivity.findViewById(R.id.auto_review_base);
            this.mAutoReview.setup(getActivity().getMessagePopup(), this.mKeyTranslatorAutoReview);
        }
    }

    private void openReviewWindow(SoundPhotoContentsIntegrator.SoundPhotoContent content) {
        TakenStatusCommon status = content.picture.common;
        boolean isFront = content.picture.photo.isFront();
        if (this.mAutoReview != null) {
            if (!this.mAutoReview.open(getActivity(), content.picture.getImageData(), "", status.mimeType, new Rect(0, 0, status.width, status.height), 0, status.orientation, isFront, this, this)) {
                closeReviewWindow();
            } else {
                this.mAutoReview.setVisibleViewIcon(false);
            }
        }
    }

    public void openInstantViewer(byte[] pictureData, String mime, int height, int width, int orientation, boolean isFront) {
        this.mIsOpenInstantViewer = true;
        if (this.mAutoReview != null) {
            Uri uri = this.mAutoReview.getUri();
            if (!this.mAutoReview.open(getActivity(), pictureData, "", mime, new Rect(0, 0, width, height), 0, orientation, isFront, this, this)) {
                this.mIsOpenInstantViewer = false;
                closeReviewWindow();
                return;
            }
            this.mAutoReview.setVisibleViewIcon(true);
            if (uri != null && this.mAudioPlayer != null && !this.mAudioPlayer.isPlaying()) {
                this.mAutoReview.setUri(uri, true);
                this.mAutoReview.showRightIcons(true);
            }
        }
    }

    private void closeReviewWindow() {
        if (this.mAutoReview != null) {
            this.mAutoReview.hide();
        }
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewWindowListener
    public void onReviewWindowOpen() {
        if (this.mSettingUi != null && this.mSettingUi.isOpened()) {
            this.mSettingUi.closeCurrentDialog();
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, SoundPhotoViewFinder.UiComponentKind.REVIEW_WINDOW);
        if (this.mSoundIndicator != null) {
            this.mSoundIndicator.setIsOpenAutoReview(true);
        }
        if (this.mIsOpenInstantViewer && !this.mSoundCaptureOngoing) {
            this.mAudioPlayer.setupViews();
        } else {
            this.mAudioPlayer.enableAudioPlayer(true);
        }
        this.mAutoReview.setInterceptKeyListener(this.mAudioPlayer);
        requestToRecoverSystemUi();
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewWindowListener
    public void onReviewWindowClose() {
        this.mIsOpenInstantViewer = false;
        if (this.mAudioPlayer != null) {
            this.mAudioPlayer.destroy();
        }
        if (this.mAutoReview != null) {
            this.mAutoReview.setInterceptKeyListener(null);
        }
        if (this.mSoundIndicator != null) {
            this.mSoundIndicator.setIsOpenAutoReview(false);
        }
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, new Object[0]);
        requestToDimSystemUi();
    }

    private void setupSoundIndicator() {
        if (this.mSoundIndicator == null) {
            if (isInflated()) {
                this.mSoundIndicator = (SoundRecordingIndicator) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.SOUND_INDICATOR).get(0);
            } else {
                this.mSoundIndicator = (SoundRecordingIndicator) LayoutInflater.from(getActivity()).inflate(R.layout.sound_level_indicator, (ViewGroup) null);
            }
            getBaseLayout().getCenterContainer().addView(this.mSoundIndicator, 0);
        }
    }

    private void setupAudioPlayer() {
        if (isInflated()) {
            this.mAudioPlayer = (AudioPlayer) getPreInflatedView(LayoutAsyncInflateItems.CameraInflateItem.AUDIO_PLAYER).get(0);
        } else {
            this.mAudioPlayer = (AudioPlayer) LayoutInflater.from(getActivity()).inflate(R.layout.audio_player, (ViewGroup) null);
        }
        if (this.mAudioPlayer == null) {
            CameraLogger.e(TAG, "setupAudioPlayer: Failed to inflate AudioPlayer.");
            return;
        }
        if (this.mAutoReview != null) {
            this.mAutoReview.addView(this.mAudioPlayer);
        }
        this.mAudioPlayer.setKeyEventTranslator(this.mKeyTranslatorAutoReview);
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener
    public void onDeleted(boolean result, Uri uri) {
        getBaseLayout().getContentsViewController().removeInvalidLocalCache();
        getBaseLayout().reloadContentsViewController(getThumbnailClickListener());
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public int getRequestId(boolean isLoadingIconRequired) {
        if (getBaseLayout().getContentsViewController() == null) {
            return -1;
        }
        preparationForInstantViewer();
        if (isLoadingIconRequired) {
            int requestId = getBaseLayout().getContentsViewController().createContentFrame();
            return requestId;
        }
        int requestId2 = getBaseLayout().getContentsViewController().createClearContentFrame();
        return requestId2;
    }

    private void setEarlyThumbnailView(View view) {
        getBaseLayout().getContentsViewController().setEarlyThumbnailView(view);
    }

    private void startEarlyThumbnailInsertAnimation(int requestId) throws Resources.NotFoundException {
        getBaseLayout().getContentsViewController().startInsertAnimation(requestId);
    }

    private void startEarlyThumbnailInsertAnimation(int requestId, Animation.AnimationListener listener) throws Resources.NotFoundException {
        getBaseLayout().getContentsViewController().startInsertAnimation(requestId, listener);
    }

    private void removeEarlyThumbnailView() {
        getBaseLayout().getContentsViewController().removeEarlyThumbnailView();
    }

    private void closeEntireHierarchyOfSettingDialogs() {
        this.mSettingUi.closeDialogs(false);
    }

    private void closeCurrentSettingDialog() {
        this.mSettingUi.closeCurrentDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAllDialogClosed() {
        boolean isSettingDialogOpened = this.mSettingUi != null && this.mSettingUi.isOpened();
        boolean isAutoReviewOpened = this.mAutoReview != null && this.mAutoReview.isOpened();
        return (isSettingDialogOpened || isAutoReviewOpened || isCapturingModeSelectorOpened()) ? false : true;
    }

    private void updateUiComponent(SoundPhotoViewFinder.UiComponentKind kind) {
        changeToPhotoDialogView(kind);
        if (kind == SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG) {
            this.mSettingUi.updateMenuItems(false);
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void startInflateTask() {
        if (!isHeadUpDisplayReady()) {
            startInflateTask(this.mActivity.getLayoutInflater(), LayoutAsyncInflateItems.getInflateItems());
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageDialogStateListener
    public void onOpenStorageDialog() {
        if (this.mCurrentDisplayingUiComponent != null) {
            closeEntireHierarchyOfSettingDialogs();
            closeCapturingModeSelector();
            if (getActivity().getStorageManager().isReady()) {
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_OPENED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageDialogStateListener
    public void onCloseStorageDialog() {
        if (isAllDialogClosed()) {
            this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_DIALOG_CLOSED, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTouchCaptureEnable() {
        return this.mActivity.getCommonSettings().get(CommonSettingKey.TOUCH_CAPTURE) == TouchCapture.ON;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void setTouchCapture(TouchCapture touchCapture) {
        setupCaptureArea();
        setupFocusRectangles();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void onToggledCameraSwitch() {
        this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_SWITCH_CAMERA, new Object[0]);
        this.mFocusRectangles.clearAllFocus();
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void checkSurfaceSize() {
        onSurfaceAvailableInternal(this.mSurfaceHolder, this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight());
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public boolean isOpenAutoReview() {
        return this.mAutoReview != null && this.mAutoReview.isOpened();
    }

    private void preparationForInstantViewer() {
        getBaseLayout().getContentsViewController().setClickThumbnailProgressListener(this);
        if (this.mAutoReview != null) {
            this.mAutoReview.setUri(null);
        }
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentsViewController.OnClickThumbnailProgressListener
    public void onClickThumbnailProgress() {
        if (this.mAutoReview != null) {
            Uri uri = this.mAutoReview.getUri();
            if (uri == null) {
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_TOUCH_CONTENT_PROGRESS_BAR, new Object[0]);
            } else {
                this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_TOUCH_CONTENT_PROGRESS_BAR, 0, this.mAutoReview.getUri());
            }
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public boolean isSetupHeadupDisplayInvoked() {
        return this.mIsSetupHeadupDisplayInvoked;
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void reconstructLocalCache() {
        if (getBaseLayout() != null && getBaseLayout().getContentsViewController() != null) {
            getBaseLayout().getContentsViewController().reconstructLocalCache();
        }
    }

    @Override // com.sonymobile.android.addoncamera.soundphoto.view.SoundPhotoViewFinder
    public void saveLocalCache() {
        if (getBaseLayout() != null && getBaseLayout().getContentsViewController() != null) {
            getBaseLayout().getContentsViewController().saveLocalCache();
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinder, com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onDisabled() throws Resources.NotFoundException {
        if (isHeadUpDisplayReady()) {
            super.onDisabled();
            sendViewUpdateEvent(SoundPhotoViewFinder.ViewUpdateEvent.EVENT_UPDATE_DIALOGS, SoundPhotoViewFinder.UiComponentKind.SETTING_DIALOG);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupSelfTimerCountDownView() {
        SelfTimer selftimer = (SelfTimer) this.mSettingPreference.getCurrentPreference().selfTimer.get();
        switch (selftimer) {
            case LONG:
            case SHORT:
                createSelfTimerCountDownView(selftimer);
                return;
            case OFF:
                removeSelfTimerCountDownView();
                return;
            default:
                throw new IllegalArgumentException(TAG + ":setupSelfTimerCountDownView [Irregular value] : " + selftimer);
        }
    }

    private void createSelfTimerCountDownView(SelfTimer selfTimer) {
        this.mSelfTimerCountDownViewNext = (SelfTimerCountDownView) getActivity().getLayoutInflater().inflate(R.layout.selftimer_counter, (ViewGroup) null);
        this.mSelfTimerCountDownViewNext.setSelfTimer(selfTimer);
    }

    private void removeSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
            this.mSelfTimerCountDownView = null;
        }
    }

    private void cancelSelfTimerCountDownView() {
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.cancelSelfTimerCountDownAnimation();
            getBaseLayout().getLazyInflatedUiComponentContainerBack().removeView(this.mSelfTimerCountDownView);
        }
    }

    private void showSelfTimerCountDownView() {
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(getBaseLayout().getPreview().getWidth(), getBaseLayout().getPreview().getHeight());
        params.addRule(13);
        removeSelfTimerCountDownView();
        this.mSelfTimerCountDownView = this.mSelfTimerCountDownViewNext;
        if (this.mSelfTimerCountDownView != null) {
            this.mSelfTimerCountDownView.setLayoutParams(params);
            this.mSelfTimerCountDownView.setSensorOrientation(this.mOrientation);
            this.mSelfTimerCountDownView.setVisibility(0);
            getBaseLayout().getLazyInflatedUiComponentContainerBack().addView(this.mSelfTimerCountDownView);
            getBaseLayout().getLazyInflatedUiComponentContainerBack().bringChildToFront(this.mSelfTimerCountDownView);
            if (LayoutDependencyResolver.isTenInch(getActivity())) {
                FrameLayout.LayoutParams frameParams = (FrameLayout.LayoutParams) this.mSelfTimerCountDownView.getLayoutParams();
                frameParams.gravity = 17;
                this.mSelfTimerCountDownView.setLayoutParams(frameParams);
            }
        }
    }

    public void startSelfTimerCountDownAnimation() {
        this.mSelfTimerCountDownView.startSelfTimerCountDownAnimation(this.mCameraDevice.getCameraId() == 1);
    }

    public void startCaptureFeedbackAnimation() {
        if (this.mCaptureFeedback != null) {
            this.mCaptureFeedback.start(CaptureFeedbackAnimationFactory.createDefaultAnimation());
        }
    }

    private void setupZoombar(boolean doZoom) {
        Zoombar zoomBar = getBaseLayout().getZoomBar();
        zoomBar.setMaxZoom(Integer.valueOf(this.mCameraDevice.getMaxZoom()));
        zoomBar.setZoomRatios(this.mCameraDevice.getLatestCachedParameters().getZoomRatios());
        if (doZoom) {
            onZoomChanged(this.mCameraDevice.getLatestCachedParameters().getZoom());
        }
    }
}