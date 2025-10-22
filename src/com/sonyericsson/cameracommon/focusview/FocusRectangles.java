package com.sonyericsson.cameracommon.focusview;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.animation.FocusRectanglesAnimation;
import com.sonyericsson.cameracommon.focusview.CommonResources;
import com.sonyericsson.cameracommon.focusview.Rectangle;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.FaceDetectUtil;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FocusRectangles {
    private static final String ANIMATION_SCALE_X = "scaleX";
    private static final String ANIMATION_SCALE_Y = "scaleY";
    private static final int FACE_RECT_REFRESH_TIMEOUT = 200;
    private static final int FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME = 100;
    private static final float INTERPOLATOR_CONTROL_X1 = 0.23f;
    private static final float INTERPOLATOR_CONTROL_X2 = 0.32f;
    private static final float INTERPOLATOR_CONTROL_Y1 = 1.0f;
    private static final float INTERPOLATOR_CONTROL_Y2 = 1.0f;
    public static final String TAG = "FocusRectangles";
    private static final int TRACKED_OBJECT_RECT_REFRESH_TIMEOUT = 1000;
    private Activity mActivity;
    private FocusRectanglesAnimation mAnimation;
    private View mCaptureArea;
    private int mDevicePreviewHeight;
    private int mDevicePreviewWidth;
    private List<TaggedRectangle> mFaceRectangles;
    private FocusActionListener mFocusEventListener;
    private boolean mIsAFLocking;
    private boolean mIsZooming;
    private FaceDetectUtil.FaceDetectionResult mLastFaceDetectionResult;
    private View.OnTouchListener mOnTouchListener;
    private RelativeLayout mRectangles;
    private LayoutDependencyResolver.ScreenAspect mScreenAspect;
    private RelativeLayout mSingleAfRect;
    private int mSmileScore;
    private RelativeLayout mTouchAfRect;
    private TaggedRectangle mTrackedObjectRectangle;
    private Handler mHandler = new Handler();
    private final RefreshTrackedObjectRectangleTask mRefreshTrackedObjectRectangleTask = new RefreshTrackedObjectRectangleTask();
    private final OnFaceRectTouchListener mOnFaceRectTouchListener = new OnFaceRectTouchListener();
    private boolean mIsFaceTouchCaptureEnabled = false;
    private boolean mIsFocusAnimationEnabled = false;
    private State mCurrentState = new DefaultFocusState();
    private boolean mIsRecording = false;
    private boolean mIsLockedBySelfTimer = false;
    private int mCurrentOrientation = 2;
    private boolean mIsRectPositionMirrored = false;
    private RectangleTouchEventDispatcher mTouchEventDispatcher = null;
    private Runnable mFocusAnimationTask = null;
    private boolean mIsManualFocus = false;
    private boolean mObjectTrackingRectSupported = false;
    private ObJectTrackingFocusIconState mObJectTrackingFocusIconState = ObJectTrackingFocusIconState.NOT_DISPLAY;

    public enum FocusRectEvent {
        ON_AUTO_FOCUS_STARTED,
        ON_AUTO_FOCUS_DONE,
        SET_FOCUS_POSITION,
        START_FACE_DETECTION,
        ON_FACE_DETECTED,
        ON_FACE_LOST,
        START_OBJECT_TRACKING,
        ON_OBJECT_TRACKED,
        ON_OBJECT_LOST,
        CLEAR_ALL,
        ON_UI_COMPONENT_OVERLAID,
        ON_UI_COMPONENT_REMOVED
    }

    enum FocusRectangleType {
        FACE,
        FAST_SINGLE,
        FAST_OBJECT_TRACKING,
        FAST_TOUCH
    }

    public enum FocusSetType {
        FIRST,
        MOVE,
        RELEASE
    }

    private enum ObJectTrackingFocusIconState {
        NOT_DISPLAY,
        TOUCH_ICON,
        TRACKING_ICON
    }

    private interface State {
        void clearExceptTouchFocus();

        void onAutoFocusCanceled();

        void onAutoFocusDone(boolean z);

        void onAutoFocusStarted();

        void onFaceDetected(FaceDetectUtil.FaceDetectionResult faceDetectionResult);

        void onFaceLost();

        void onObjectRemoved();

        void onUiComponentOverlaid();

        void onUiComponentRemoved();

        void setFocusPosition(Point point, FocusSetType focusSetType);

        void startFaceDetection();

        void startObjectTracking();
    }

    public FocusRectangles(Activity activity, FocusActionListener focusEventListener, int previewWidth, int previewHeight, FocusRectanglesViewList focusRectanglesViewList, View captureArea, View.OnTouchListener onTouchListener, LayoutDependencyResolver.ScreenAspect screenAspect) throws Resources.NotFoundException {
        this.mActivity = activity;
        this.mFocusEventListener = focusEventListener;
        this.mDevicePreviewWidth = previewWidth;
        this.mDevicePreviewHeight = previewHeight;
        this.mAnimation = new FocusRectanglesAnimation(this.mActivity);
        this.mCaptureArea = captureArea;
        this.mOnTouchListener = onTouchListener;
        this.mScreenAspect = screenAspect;
        initialize(focusRectanglesViewList);
    }

    public void enableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = true;
    }

    public void disableFaceTouchCapture() {
        this.mIsFaceTouchCaptureEnabled = false;
    }

    public void updateDevicePreviewSize(int devicePrevWidth, int devicePrevHeight) {
        this.mDevicePreviewWidth = devicePrevWidth;
        this.mDevicePreviewHeight = devicePrevHeight;
        updateRectanglesCoordinates();
    }

    private void initialize(FocusRectanglesViewList focusRectanglesViewList) throws Resources.NotFoundException {
        this.mRectangles = focusRectanglesViewList.rectanglesContainer;
        LayoutInflater inflater = this.mActivity.getLayoutInflater();
        this.mFaceRectangles = new ArrayList();
        this.mTouchEventDispatcher = new RectangleTouchEventDispatcher(this.mFaceRectangles);
        this.mRectangles.setOnTouchListener(this.mTouchEventDispatcher);
        View[] faceViewList = null;
        if (focusRectanglesViewList.faceViewList != null) {
            View[] faceViewList2 = focusRectanglesViewList.faceViewList;
            faceViewList = faceViewList2;
        }
        for (int i = 0; i < 5; i++) {
            TaggedRectangle faceRect = null;
            if (faceViewList != null) {
                faceRect = (TaggedRectangle) faceViewList[i];
            }
            addTaggedRectangle(inflater, faceRect);
        }
        this.mTrackedObjectRectangle = focusRectanglesViewList.trackedObjectView;
        if (this.mTrackedObjectRectangle == null) {
            this.mTrackedObjectRectangle = (TaggedRectangle) inflater.inflate(R.layout.face_rectangle, (ViewGroup) null);
        }
        this.mTrackedObjectRectangle.setVisibility(4);
        ViewGroup.LayoutParams objParam = new ViewGroup.LayoutParams(-1, -1);
        this.mRectangles.addView(this.mTrackedObjectRectangle, objParam);
        this.mTrackedObjectRectangle.prepare(3);
        int objIconWidth = this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_object_width);
        int objIconHeight = this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_object_height);
        this.mTrackedObjectRectangle.setRectImageSize(objIconWidth, objIconHeight);
        ImageView objectRect = (ImageView) this.mTrackedObjectRectangle.findViewById(R.id.rect_image);
        objectRect.setOnTouchListener(this.mOnTouchListener);
        this.mSingleAfRect = focusRectanglesViewList.singleAfView;
        if (this.mSingleAfRect == null) {
            this.mSingleAfRect = (RelativeLayout) inflater.inflate(R.layout.fast_capturing_auto_focus_rectangles, (ViewGroup) null);
        }
        this.mSingleAfRect.setVisibility(4);
        RelativeLayout.LayoutParams singleParams = new RelativeLayout.LayoutParams(-1, -1);
        this.mRectangles.addView(this.mSingleAfRect, singleParams);
        this.mTouchAfRect = focusRectanglesViewList.touchAfView;
        if (this.mTouchAfRect == null) {
            this.mTouchAfRect = (RelativeLayout) inflater.inflate(R.layout.fast_capturing_auto_focus_rectangles, (ViewGroup) null);
        }
        this.mTouchAfRect.setVisibility(4);
        RelativeLayout.LayoutParams touchParams = new RelativeLayout.LayoutParams(-1, -1);
        this.mRectangles.addView(this.mTouchAfRect, touchParams);
        ImageView rect = (ImageView) this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        rect.setOnTouchListener(this.mOnTouchListener);
        updateRectanglesCoordinates();
    }

    private TaggedRectangle addTaggedRectangle(LayoutInflater inflater, TaggedRectangle preInflatedRect) {
        TaggedRectangle rect;
        if (this.mFaceRectangles.size() >= 5) {
            return null;
        }
        Rect defaultFaceRect = new Rect();
        ViewGroup.LayoutParams faceParam = new ViewGroup.LayoutParams(-1, -1);
        if (preInflatedRect != null) {
            rect = preInflatedRect;
        } else {
            rect = (TaggedRectangle) inflater.inflate(R.layout.face_rectangle, (ViewGroup) null);
        }
        this.mRectangles.addView(rect, faceParam);
        rect.prepare(0);
        rect.setRectSize(defaultFaceRect.width(), defaultFaceRect.height());
        rect.setRectCenter(defaultFaceRect.centerX(), defaultFaceRect.centerY());
        rect.setRectangleOnTouchListener(this.mOnFaceRectTouchListener);
        this.mFaceRectangles.add(rect);
        return rect;
    }

    private void updateRectanglesCoordinates() {
        Rect finderRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect);
        setRectSizeAndPosition(this.mRectangles, finderRect.left, finderRect.top, finderRect.width(), finderRect.height());
        for (TaggedRectangle rectangle : this.mFaceRectangles) {
            rectangle.setSize(finderRect.width(), finderRect.height());
        }
        changeState(new DefaultFocusState());
    }

    public void release() {
        this.mActivity = null;
        this.mFocusEventListener = null;
    }

    public void onAutoFocusStarted() {
        this.mCurrentState.onAutoFocusStarted();
    }

    public void onAutoFocusDone(boolean isSuccess) {
        this.mCurrentState.onAutoFocusDone(isSuccess);
    }

    public void onAutoFocusCanceled() {
        this.mCurrentState.onAutoFocusCanceled();
    }

    public void setFocusPosition(Point touchedPointOnScreen, FocusSetType setType) {
        int[] locationOfView = new int[2];
        this.mRectangles.getLocationOnScreen(locationOfView);
        Point pointOfView = new Point(touchedPointOnScreen.x - locationOfView[0], touchedPointOnScreen.y - locationOfView[1]);
        this.mCurrentState.setFocusPosition(pointOfView, setType);
    }

    public void startFaceDetection() {
        this.mCurrentState.startFaceDetection();
    }

    public void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
        this.mCurrentState.onFaceDetected(result);
    }

    public void onFaceLost() {
        this.mCurrentState.onFaceLost();
    }

    public void startObjectTracking() {
        this.mObJectTrackingFocusIconState = ObJectTrackingFocusIconState.NOT_DISPLAY;
        this.mCurrentState.startObjectTracking();
    }

    public void onObjectRemoved() {
        this.mCurrentState.onObjectRemoved();
    }

    public void onObjectLost() {
        if (this.mObjectTrackingRectSupported) {
            this.mTrackedObjectRectangle.changeRectangleResource(CommonResources.ObjectIndicator.LOST);
        }
    }

    public void onObjectFocused() {
        this.mTrackedObjectRectangle.changeRectangleResource(CommonResources.ObjectIndicator.SUCCESS);
    }

    public void clearExceptTouchFocus() {
        this.mCurrentState.clearExceptTouchFocus();
    }

    public void clearAllFocus() {
        clearAllFocusExceptFace();
        clearFaceDetection();
    }

    public void clearAllFocusExceptFace() {
        changeState(new DefaultFocusState());
        clearSingleAutoFocus();
        clearTouchFocus();
        clearObjectTracking();
    }

    public void clearTouchFocus() {
        changeState(new DefaultFocusState());
        setFocusPositionInternal(null, null);
        this.mTouchAfRect.setVisibility(4);
        removeTouchFocusRectAnimation();
        resetTouchFocusRectangleColor();
    }

    public void clearSingleAutoFocus() {
        this.mSingleAfRect.setVisibility(4);
        removeSingleFocusRectAnimation();
        resetSingleFocusRectangleColor();
    }

    public void clearFaceDetection() {
        hideFaceRectangles(false);
        resetFaceRectangleColor();
        this.mTouchEventDispatcher.updateFaceList(null);
    }

    public void clearObjectTracking() {
        hideTrackedObjectRecgantle();
        removeObjectFocusRectAnimation();
        resetObjectTrackingRectangleColor();
    }

    public void onUiComponentOverlaid() {
        this.mCurrentState.onUiComponentOverlaid();
    }

    public void onUiComponentRemoved() {
        this.mCurrentState.onUiComponentRemoved();
    }

    public void onRecordingStart() {
        this.mIsRecording = true;
    }

    public void onRecordingStop() {
        this.mIsRecording = false;
    }

    public boolean isZooming() {
        return this.mIsZooming;
    }

    public void setZooming(boolean isRunning) {
        this.mIsZooming = isRunning;
    }

    public void setAFLocking(boolean isAFLocking) {
        this.mIsAFLocking = isAFLocking;
    }

    public void setLockedBySelfTimer(boolean isLocked) {
        this.mIsLockedBySelfTimer = isLocked;
    }

    private class TouchFocusState extends DefaultFocusState {
        private TouchFocusState() {
            super();
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusStarted() {
            View view = FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            FocusRectangles.this.mAnimation.startFocusAnimation(view, FocusRectangles.this.getTouchAfFocusingIcon());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusDone(boolean success) {
            FocusRectangles.this.setAFLocking(true);
            ImageView rectTouch = (ImageView) FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            rectTouch.setVisibility(0);
            if (!success) {
                if (!FocusRectangles.this.mIsManualFocus) {
                    FocusRectangles.this.mAnimation.playAfFadeOutAnimationTouch(rectTouch);
                }
            } else {
                rectTouch.setBackgroundResource(FocusRectangles.this.getTouchAfSuccessIcon());
                FocusRectangles.this.mAnimation.playAfFocusInAnimationTouch(rectTouch, FocusRectangles.this.getTouchAfSuccessIcon());
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusCanceled() {
            ImageView rectTouch = (ImageView) FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            rectTouch.setVisibility(0);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void setFocusPosition(Point touchPoint, FocusSetType setType) {
            FocusRectangles.this.setFocusPositionInternal(touchPoint, setType);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startFaceDetection() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
            FocusRectangles.this.updateFaceRectanglesData(result, true);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceLost() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startObjectTracking() {
            super.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onObjectRemoved() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void clearExceptTouchFocus() {
            ImageView rect = (ImageView) FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            FocusRectangles.this.mAnimation.stopFocusAnimation(rect);
            super.clearExceptTouchFocus();
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onUiComponentRemoved() {
            FocusRectangles.this.mTouchAfRect.setVisibility(0);
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.resetRectanglesColor();
        }
    }

    private class ObjectTrackingState extends DefaultFocusState {
        private ObjectTrackingState() {
            super();
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusStarted() {
            View view = FocusRectangles.this.mTrackedObjectRectangle.findViewById(R.id.rect_image);
            FocusRectangles.this.mAnimation.startFocusAnimation(view, FocusRectangles.this.getAfFocusingIcon());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusDone(boolean success) {
            FocusRectangles.this.setAFLocking(true);
            FocusRectangles.this.mTrackedObjectRectangle.setVisibility(0);
            if (success) {
                FocusRectangles.this.mTrackedObjectRectangle.changeRectangleResource(FocusRectangles.this.getSuccessIcon());
            } else {
                FocusRectangles.this.mAnimation.playAfFadeOutAnimationObject(FocusRectangles.this.mTrackedObjectRectangle);
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void setFocusPosition(Point touchPoint, FocusSetType setType) {
            FocusRectangles.this.setFocusPositionInternal(touchPoint, setType);
            FocusRectangles.this.changeState(new TouchFocusState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startFaceDetection() {
            super.clearExceptTouchFocus();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
            FocusRectangles.this.updateFaceRectanglesData(result, true);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceLost() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startObjectTracking() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onObjectRemoved() {
            FocusRectangles.this.changeState(FocusRectangles.this.new DefaultFocusState());
        }
    }

    private class FaceDetectionState extends DefaultFocusState {
        private FaceDetectionState() {
            super();
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusStarted() {
            if (!isFaceRectAvailable()) {
                super.onAutoFocusStarted();
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusDone(boolean success) {
            int resId;
            if (!isFaceRectAvailable()) {
                super.onAutoFocusDone(success);
                return;
            }
            FocusRectangles.this.setAFLocking(true);
            for (TaggedRectangle rectangle : FocusRectangles.this.mFaceRectangles) {
                if (success) {
                    resId = CommonResources.FaceIndicator.SUCCESS;
                } else {
                    resId = 0;
                }
                rectangle.changeRectangleResource(resId);
            }
        }

        private boolean isFaceRectAvailable() {
            for (TaggedRectangle rectangle : FocusRectangles.this.mFaceRectangles) {
                if (rectangle.getVisibility() == 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void setFocusPosition(Point touchPoint, FocusSetType setType) {
            if (setType == FocusSetType.FIRST) {
                FocusRectangles.this.setFocusPositionInternal(touchPoint, setType);
                FocusRectangles.this.changeState(new TouchFocusState());
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startFaceDetection() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
            if (result.faceList.size() != 0) {
                FocusRectangles.this.updateFaceRectanglesData(result, false);
            } else {
                onFaceLost();
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceLost() {
            FocusRectangles.this.clearFaceDetection();
            FocusRectangles.this.changeState(FocusRectangles.this.new DefaultFocusState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startObjectTracking() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearTouchFocus();
            FocusRectangles.this.clearFaceDetection();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.DefaultFocusState, com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onObjectRemoved() {
        }
    }

    class DefaultFocusState implements State {
        DefaultFocusState() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusStarted() {
            FocusRectangles.this.mSingleAfRect.setVisibility(0);
            View view = FocusRectangles.this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
            if (view.getVisibility() != 0) {
                view.setVisibility(0);
            }
            FocusRectangles.this.mAnimation.startFocusAnimation(view, CommonResources.SingleIndicator.FOCUSING);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusDone(boolean success) {
            ImageView rectSingle = (ImageView) FocusRectangles.this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
            if (success) {
                if (rectSingle.getVisibility() != 0) {
                    rectSingle.setVisibility(0);
                }
                rectSingle.setBackgroundResource(CommonResources.SingleIndicator.SUCCESS);
                FocusRectangles.this.mAnimation.playAfFocusInAnimationSingle(rectSingle);
                return;
            }
            if (rectSingle.getVisibility() == 0) {
                rectSingle.setVisibility(4);
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onAutoFocusCanceled() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void setFocusPosition(Point touchPoint, FocusSetType setType) {
            FocusRectangles.this.setFocusPositionInternal(touchPoint, setType);
            FocusRectangles.this.changeState(new TouchFocusState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startFaceDetection() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.changeState(new FaceDetectionState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceDetected(FaceDetectUtil.FaceDetectionResult result) {
            if (result.faceList.size() != 0) {
                FocusRectangles.this.updateFaceRectanglesData(result, false);
                FocusRectangles.this.changeState(new FaceDetectionState());
            } else {
                FocusRectangles.this.mCurrentState = FocusRectangles.this.new DefaultFocusState();
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onFaceLost() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void startObjectTracking() {
            clearExceptTouchFocus();
            FocusRectangles.this.changeState(new ObjectTrackingState());
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onObjectRemoved() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void clearExceptTouchFocus() {
            FocusRectangles.this.clearSingleAutoFocus();
            FocusRectangles.this.clearObjectTracking();
            FocusRectangles.this.clearFaceDetection();
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onUiComponentOverlaid() {
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.hideFaceRectangles(false);
            FocusRectangles.this.hideTrackedObjectRecgantle();
            FocusRectangles.this.mTouchAfRect.setVisibility(4);
        }

        @Override // com.sonyericsson.cameracommon.focusview.FocusRectangles.State
        public void onUiComponentRemoved() {
            FocusRectangles.this.mTouchAfRect.setVisibility(4);
            FocusRectangles.this.mSingleAfRect.setVisibility(4);
            FocusRectangles.this.resetRectanglesColor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFaceRectanglesData(FaceDetectUtil.FaceDetectionResult detectionResult, boolean setRectTranslucent) {
        this.mLastFaceDetectionResult = detectionResult;
        faceResultToRectangles(detectionResult, setRectTranslucent);
    }

    private void updateFaceRectangles(FaceInformationList resultList, int orientation, boolean isRectTranslucent) {
        NamedFace namedFace;
        TaggedRectangle targetRect;
        if (resultList.getNamedFaceList().size() > 0) {
            Iterator<TaggedRectangle> it = this.mFaceRectangles.iterator();
            while (it.hasNext()) {
                it.next().clearUpdated();
            }
            for (int i = 0; i < 5; i++) {
                if (i < resultList.getNamedFaceList().size() && (namedFace = resultList.getNamedFace(i)) != null && (targetRect = this.mFaceRectangles.get(i)) != null) {
                    updateRectangle(targetRect, namedFace, orientation, isRectTranslucent);
                    targetRect.setSmileGaugeVisibility(4);
                }
            }
            for (TaggedRectangle rectangle : this.mFaceRectangles) {
                if (!rectangle.isUpdate()) {
                    rectangle.hide();
                }
            }
            if (isZooming()) {
                for (TaggedRectangle rect : this.mFaceRectangles) {
                    rect.setSmileGaugeVisibility(4);
                }
            }
        }
    }

    public int getSelectedFaceSmileScore() {
        int score = this.mSmileScore;
        this.mSmileScore = 0;
        return score;
    }

    private void updateSmileGauge(TaggedRectangle topRect, FaceInformationList resultList, int level, int orientation) {
        NamedFace targetFace = resultList.getNamedFaceByUuid(topRect.getUuid());
        if (targetFace != null) {
            Rect rect = PositionConverter.getInstance().convertToView(targetFace.mFacePosition);
            if (this.mIsRectPositionMirrored) {
                int displayWidth = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect).width();
                topRect.setSmileGaugesPosition(displayWidth - rect.right, rect.top, displayWidth - rect.left, rect.bottom, orientation);
            } else {
                topRect.setSmileGaugesPosition(rect.left, rect.top, rect.right, rect.bottom, orientation);
            }
            topRect.setSmileLevel(level);
        }
    }

    private void updateRectangle(TaggedRectangle targetRect, NamedFace namedFace, int orientation, boolean isRectTranslucent) {
        Rect viewRect = PositionConverter.getInstance().convertToView(namedFace.mFacePosition);
        if (this.mIsRectPositionMirrored) {
            if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                int displayHeight = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect).height();
                targetRect.setRectCenter(viewRect.centerX(), displayHeight - viewRect.centerY());
            } else {
                int displayWidth = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect).width();
                targetRect.setRectCenter(displayWidth - viewRect.centerX(), viewRect.centerY());
            }
        } else {
            targetRect.setRectCenter(viewRect.centerX(), viewRect.centerY());
        }
        targetRect.setRectSize(viewRect.width(), viewRect.height());
        if (isRectTranslucent) {
            targetRect.changeRectangleResource(0);
            targetRect.hide();
        } else {
            targetRect.changeRectangleResource(CommonResources.FaceIndicator.NORMAL);
        }
        boolean isAlreadyDisplayed = targetRect.getVisibility() == 0;
        if (!isAlreadyDisplayed) {
            targetRect.startRectangleAnimation(orientation);
        }
        targetRect.update(namedFace.mUuid, orientation);
        targetRect.setUpdated();
        if (targetRect.getVisibility() != 0) {
            targetRect.requestLayout();
            targetRect.setVisibility(0);
        }
    }

    private void setRectSizeAndPosition(RelativeLayout rect, int left, int top, int width, int height) {
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) rect.getLayoutParams();
        if (params != null) {
            params.leftMargin = left;
            params.topMargin = top;
            params.width = width;
            params.height = height;
            rect.setLayoutParams(params);
        }
    }

    class OnFaceRectTouchListener implements Rectangle.RectangleOnTouchListener {
        OnFaceRectTouchListener() {
        }

        @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
        public void onRectTouchDown(View view, MotionEvent event) {
            if (!FocusRectangles.this.mIsAFLocking && !FocusRectangles.this.mIsLockedBySelfTimer) {
                Rectangle rectangle = (Rectangle) view.findViewById(R.id.rect);
                if (rectangle.getVisibility() == 0) {
                    for (TaggedRectangle taggedRectangle : FocusRectangles.this.mFaceRectangles) {
                        if (taggedRectangle.equals(view)) {
                            FocusRectangles.this.faceResultToRectangles(FocusRectangles.this.mLastFaceDetectionResult, false);
                            FocusRectangles.this.clearAllFocusExceptFace();
                            FocusRectangles.this.startFaceDetection();
                            if (isTouchAreaOnTouchCapture(event)) {
                                FocusRectangles.this.mFocusEventListener.onTouched();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
        public void onRectTouchUp(View view, MotionEvent event) {
            if (!FocusRectangles.this.mIsAFLocking && !FocusRectangles.this.mIsLockedBySelfTimer) {
                Rectangle rectangle = (Rectangle) view.findViewById(R.id.rect);
                if (rectangle.getVisibility() == 0) {
                    for (TaggedRectangle taggedRectangle : FocusRectangles.this.mFaceRectangles) {
                        if (taggedRectangle.equals(view)) {
                            if (isTouchAreaOnTouchCapture(event)) {
                                FocusRectangles.this.mFocusEventListener.onReleased();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        }

        @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
        public void onRectTouchCancel(View v, MotionEvent event) {
            if (!FocusRectangles.this.mIsLockedBySelfTimer) {
                FocusRectangles.this.mFocusEventListener.onCanceled();
            }
        }

        private boolean isTouchAreaOnTouchCapture(MotionEvent event) {
            if (!FocusRectangles.this.mIsFaceTouchCaptureEnabled || FocusRectangles.this.mCaptureArea == null) {
                return false;
            }
            return CommonUtility.isEventContainedInView(FocusRectangles.this.mCaptureArea, event);
        }

        @Override // com.sonyericsson.cameracommon.focusview.Rectangle.RectangleOnTouchListener
        public void onRectTouchLongPress(MotionEvent event) {
            if (!FocusRectangles.this.mIsLockedBySelfTimer) {
                FocusRectangles.this.mFocusEventListener.onLongPressed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFaceRectangles(boolean translucentOnly) {
        for (TaggedRectangle taggedRectangle : this.mFaceRectangles) {
            if (translucentOnly) {
                taggedRectangle.changeRectangleResource(0);
            }
            taggedRectangle.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTrackedObjectRecgantle() {
        this.mTrackedObjectRectangle.setVisibility(4);
    }

    private void removeTouchFocusRectAnimation() {
        ImageView rect = (ImageView) this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        this.mIsFocusAnimationEnabled = false;
        if (rect.getAnimation() != null) {
            this.mAnimation.cancelAfFocusAnimationTouch(rect);
            rect.clearAnimation();
            rect.setAnimation(null);
        }
    }

    private void removeSingleFocusRectAnimation() {
        ImageView rect = (ImageView) this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
        if (rect.getAnimation() != null) {
            this.mAnimation.cancelAfFocusAnimationSingle(rect);
            rect.clearAnimation();
            rect.setAnimation(null);
        }
    }

    private void removeObjectFocusRectAnimation() {
        if (this.mTrackedObjectRectangle.getAnimation() != null) {
            this.mAnimation.cancelAfFocusAnimationObject(this.mTrackedObjectRectangle);
            this.mTrackedObjectRectangle.clearAnimation();
            this.mTrackedObjectRectangle.setAnimation(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetRectanglesColor() {
        resetFaceRectangleColor();
        resetObjectTrackingRectangleColor();
        resetTouchFocusRectangleColor();
        resetSingleFocusRectangleColor();
    }

    private void resetFaceRectangleColor() {
        for (TaggedRectangle taggedRectangle : this.mFaceRectangles) {
            taggedRectangle.changeRectangleResource(0);
            taggedRectangle.setSmileGaugeVisibility(4);
        }
    }

    private void resetObjectTrackingRectangleColor() {
        int resId = this.mIsAFLocking ? getSuccessIcon() : getNormalIcon();
        this.mTrackedObjectRectangle.changeRectangleResource(resId);
    }

    private void resetTouchFocusRectangleColor() {
        ImageView touchRect = (ImageView) this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
        touchRect.setVisibility(0);
        this.mAnimation.startFocusAnimation(touchRect, CommonResources.TouchIndicator.NORMAL);
    }

    private void resetSingleFocusRectangleColor() {
        ImageView singleRect = (ImageView) this.mSingleAfRect.findViewById(R.id.center_auto_focus_rect);
        singleRect.setBackgroundResource(CommonResources.SingleIndicator.NORMAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFocusPositionInternal(Point touchPoint, FocusSetType focusType) {
        int finderPosX;
        int finderPosY;
        if (touchPoint == null) {
            this.mTouchAfRect.scrollTo(0, 0);
            return;
        }
        if (focusType == FocusSetType.FIRST) {
            hideFaceRectangles(true);
        }
        int screenPosX = touchPoint.x;
        int screenPosY = touchPoint.y;
        Rect finderRect = LayoutDependencyResolver.getSurfaceViewRect(this.mActivity, this.mDevicePreviewWidth / this.mDevicePreviewHeight, this.mScreenAspect);
        FocusRectanglesAnimation.AnimationConfig touchConfig = this.mAnimation.getTouchAnimationConfig();
        if (screenPosX < finderRect.left + (touchConfig.mToWidth / 2)) {
            finderPosX = touchConfig.mToWidth / 2;
        } else if (finderRect.right - (touchConfig.mToWidth / 2) < screenPosX) {
            finderPosX = finderRect.width() - (touchConfig.mToWidth / 2);
        } else {
            finderPosX = screenPosX - finderRect.left;
        }
        if (screenPosY < finderRect.top + (touchConfig.mToHeight / 2)) {
            finderPosY = touchConfig.mToHeight / 2;
        } else if (finderRect.bottom - (touchConfig.mToHeight / 2) < screenPosY) {
            finderPosY = finderRect.height() - (touchConfig.mToHeight / 2);
        } else {
            finderPosY = screenPosY - finderRect.top;
        }
        this.mTouchAfRect.scrollTo((finderRect.width() / 2) - finderPosX, (finderRect.height() / 2) - finderPosY);
        this.mTouchAfRect.setVisibility(0);
        playTouchFocusStartAnimation(focusType);
    }

    private void playTouchFocusStartAnimation(FocusSetType focusType) {
        if (!this.mIsFaceTouchCaptureEnabled) {
            switch (focusType) {
                case FIRST:
                    playOnTouchDownAnimationForTouchFocusRect();
                    break;
                case RELEASE:
                    playOnTouchUpAnimationForTouchFocusRect();
                    break;
            }
        }
    }

    private void playOnTouchDownAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            ImageView rect = (ImageView) this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
            rect.setBackgroundResource(CommonResources.FaceIndicator.NORMAL);
            this.mIsFocusAnimationEnabled = true;
            rect.setVisibility(4);
            this.mFocusAnimationTask = new Runnable() { // from class: com.sonyericsson.cameracommon.focusview.FocusRectangles.1
                @Override // java.lang.Runnable
                public void run() {
                    ImageView rect2 = (ImageView) FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
                    rect2.setVisibility(0);
                    if (FocusRectangles.this.mIsFocusAnimationEnabled) {
                        FocusRectangles.this.mAnimation.playTouchDownAnimation(rect2);
                    } else {
                        FocusRectangles.this.mTouchAfRect.setVisibility(4);
                    }
                }
            };
            this.mHandler.postDelayed(this.mFocusAnimationTask, 100L);
        }
    }

    private void playOnTouchUpAnimationForTouchFocusRect() {
        if (this.mTouchAfRect.getVisibility() == 0) {
            if (this.mFocusAnimationTask != null) {
                this.mHandler.removeCallbacks(this.mFocusAnimationTask);
            }
            this.mFocusAnimationTask = new Runnable() { // from class: com.sonyericsson.cameracommon.focusview.FocusRectangles.2
                @Override // java.lang.Runnable
                public void run() {
                    ImageView rect = (ImageView) FocusRectangles.this.mTouchAfRect.findViewById(R.id.center_auto_focus_rect);
                    rect.setVisibility(0);
                    if (FocusRectangles.this.mIsFocusAnimationEnabled) {
                        FocusRectangles.this.mAnimation.playTouchUpAnimation(rect);
                    } else {
                        FocusRectangles.this.mTouchAfRect.setVisibility(4);
                    }
                }
            };
            this.mHandler.post(this.mFocusAnimationTask);
            this.mIsFocusAnimationEnabled = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void faceResultToRectangles(FaceDetectUtil.FaceDetectionResult detectionResult, boolean setRectTranslucent) {
        Rect previewRect = new Rect(0, 0, this.mDevicePreviewWidth, this.mDevicePreviewHeight);
        FaceInformationList resultList = FaceDetectUtil.getFaceInformationList(this.mLastFaceDetectionResult, previewRect);
        if (resultList != null) {
            this.mTouchEventDispatcher.updateFaceList(resultList);
            if (!setRectTranslucent) {
                updateFaceRectangles(resultList, this.mCurrentOrientation, setRectTranslucent);
            }
        }
    }

    class RefreshTrackedObjectRectangleTask implements Runnable {
        RefreshTrackedObjectRectangleTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FocusRectangles.this.mFocusEventListener != null && FocusRectangles.this.mTrackedObjectRectangle != null) {
                FocusRectangles.this.mTrackedObjectRectangle.setVisibility(4);
                FocusRectangles.this.onObjectRemoved();
            }
        }
    }

    public Rect getTouchFocusIconSize() {
        return new Rect(0, 0, this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_single_width), this.mActivity.getResources().getDimensionPixelSize(R.dimen.focus_rect_single_height));
    }

    public boolean isRecording() {
        return this.mIsRecording;
    }

    public void setOrientation(int orientation) {
        this.mCurrentOrientation = orientation;
    }

    public void setVisibility(int visibility) {
        this.mRectangles.setVisibility(visibility);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeState(State newState) {
        this.mCurrentState = newState;
    }

    public void setMirrored(boolean isMirrored) {
        this.mIsRectPositionMirrored = isMirrored;
    }

    protected int getNormalIcon() {
        return this.mIsRecording ? this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.TRACKING_RECORDING : CommonResources.ObjectCircleIndicator.TRACKING_RECORDING : this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.TRACKING : CommonResources.ObjectCircleIndicator.TRACKING;
    }

    protected int getTouchIcon() {
        return this.mIsRecording ? this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.TOUCH_RECORDING : CommonResources.ObjectCircleIndicator.TOUCH_RECORDING : this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.TOUCH : CommonResources.ObjectCircleIndicator.TOUCH;
    }

    protected int getTouchAfFocusingIcon() {
        if (this.mIsManualFocus) {
            return 0;
        }
        return CommonResources.TouchIndicator.FOCUSING;
    }

    protected int getTouchAfSuccessIcon() {
        if (this.mIsManualFocus) {
            return 0;
        }
        return CommonResources.TouchIndicator.SUCCESS;
    }

    protected int getAfFocusingIcon() {
        return this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.FOCUSING : CommonResources.ObjectCircleIndicator.FOCUSING;
    }

    protected int getSuccessIcon() {
        return this.mObjectTrackingRectSupported ? CommonResources.ObjectIndicator.SUCCESS : CommonResources.ObjectCircleIndicator.SUCCESS;
    }

    private void displayObjectTrackingFocusFrame(Rect rect) {
        this.mTrackedObjectRectangle.setScaleX(1.0f);
        this.mTrackedObjectRectangle.setScaleY(1.0f);
        this.mTrackedObjectRectangle.setRectCenter(rect.centerX(), rect.centerY());
        this.mTrackedObjectRectangle.setRectImageSize(rect.width(), rect.height());
        this.mTrackedObjectRectangle.setVisibility(0);
        ViewGroup.LayoutParams mRectangleLayoutParams = this.mTrackedObjectRectangle.getLayoutParams();
        mRectangleLayoutParams.width = -1;
        mRectangleLayoutParams.height = -1;
        this.mTrackedObjectRectangle.requestLayout();
    }

    private ObjectAnimator getObjectTrackingAnimator(TaggedRectangle view, int duration, Rect start, Rect end) {
        Interpolator cubicBezierInterpolator = new PathInterpolator(INTERPOLATOR_CONTROL_X1, 1.0f, INTERPOLATOR_CONTROL_X2, 1.0f);
        this.mTrackedObjectRectangle.setScaleX(start.width() / end.width());
        this.mTrackedObjectRectangle.setScaleY(start.height() / end.height());
        PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat(ANIMATION_SCALE_X, 1.0f);
        PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat(ANIMATION_SCALE_Y, 1.0f);
        ObjectAnimator animator = ObjectAnimator.ofPropertyValuesHolder(view, scaleX, scaleY);
        animator.setDuration(duration);
        animator.setInterpolator(cubicBezierInterpolator);
        return animator;
    }

    public void setObjectTrackingRectSupported(boolean supported) {
        this.mObjectTrackingRectSupported = supported;
    }

    public void setFocusIconType(boolean isManualFocus) {
        this.mIsManualFocus = isManualFocus;
    }
}
