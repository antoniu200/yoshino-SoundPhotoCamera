package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController;
import com.sonyericsson.cameracommon.utility.AccessibilityHelper;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ResourceUtil;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingIndicator;
import com.sonyericsson.cameracommon.zoombar.Zoombar;

/* loaded from: classes.dex */
public class BaseViewFinderLayout {
    public static final String TAG = "BaseViewFinderLayout";
    private BaseActivity mActivity;
    private AllEventListener mAllEventListener;
    private RelativeLayout mCaptureButtonGroup;
    private OnScreenButton mCaptureButtonIcon;
    private CapturingModeButton mCapturingModeButton;
    private ContentsViewController mContentsViewController;
    private GeotagIndicator mGeoTag;
    private ViewGroup mHeadUpDisplay;
    private Indicator mLowMemory;
    private OnScreenButtonGroup mOnScreenButtonGroup;
    private View mPreInflatedHeadUpDisplay;
    private View mPreview;
    private PreviewContainerLayout mPreviewContainerLayout;
    private RecordingIndicator mRecordingIndicator;
    private ViewGroup mRootView;
    protected final LayoutDependencyResolver.ScreenAspect mScreenAspect;
    private Indicator mThermal;
    private Rect mViewFinderRect;
    private View mWindowCover;
    private Zoombar mZoombar;
    private FrameLayout mZoombarGroup;
    private FrameLayout mLazyInflatedUiComponentContainerFront = null;
    private FrameLayout mLazyInflatedUiComponentContainerFullScreen = null;
    private int mCurrentOrientation = 2;
    private GridLineView mGridLineView = null;
    private NavigationBarVisibility mNavigationBarVisibility = null;

    public enum NavigationBarVisibility {
        VISIBLE,
        LOW_PROFILE,
        HIDE
    }

    public BaseViewFinderLayout(BaseActivity activity, LayoutDependencyResolver.ScreenAspect screenAspect) {
        this.mViewFinderRect = null;
        this.mAllEventListener = null;
        this.mActivity = activity;
        this.mScreenAspect = screenAspect;
        this.mRootView = new AccessibilityHelper.HoverEventInterceptView(this.mActivity);
        this.mViewFinderRect = LayoutDependencyResolver.getViewFinderSize(activity);
        setupPreviewContainer();
        this.mAllEventListener = new AllEventListener(this.mActivity);
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
    }

    private void setupPreviewContainer() {
        this.mPreviewContainerLayout = new PreviewContainerLayout(this.mActivity);
        this.mRootView.addView(this.mPreviewContainerLayout);
        FrameLayout.LayoutParams previewContainerLayoutParams = new FrameLayout.LayoutParams(-1, -1);
        previewContainerLayoutParams.width = this.mViewFinderRect.width();
        previewContainerLayoutParams.height = this.mViewFinderRect.height();
        previewContainerLayoutParams.gravity = 17;
        if (this.mScreenAspect == LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE) {
            previewContainerLayoutParams.leftMargin = ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), R.dimen.left_icon_area_height);
            previewContainerLayoutParams.rightMargin = ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), R.dimen.right_icon_area_height);
            int unitWidth = ((this.mViewFinderRect.width() - previewContainerLayoutParams.leftMargin) - previewContainerLayoutParams.rightMargin) / 16;
            int unitHeight = this.mViewFinderRect.height() / 9;
            int unitLength = Math.min(unitWidth, unitHeight);
            if (unitLength % 2 != 0) {
                unitLength--;
            }
            previewContainerLayoutParams.width = unitLength * 16;
            previewContainerLayoutParams.height = unitLength * 9;
        }
        this.mPreviewContainerLayout.setLayoutParams(previewContainerLayoutParams);
        this.mPreviewContainerLayout.setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
    }

    public void attachToWindow(View surface) {
        this.mActivity.getWindow().addContentView(this.mRootView, new WindowManager.LayoutParams(-1, -1));
        this.mActivity.getWindow().addContentView(this.mAllEventListener, new FrameLayout.LayoutParams(-1, -1));
        this.mAllEventListener.setActivity(this.mActivity);
        this.mAllEventListener.enableTouchEvent();
        this.mPreview = surface;
    }

    public void setupPreviewView() {
        if (this.mPreview != null) {
            FrameLayout.LayoutParams mPreviewLayoutParams = new FrameLayout.LayoutParams(-1, -1);
            mPreviewLayoutParams.gravity = 17;
            this.mPreviewContainerLayout.mPreviewContainer.addView(this.mPreview, 0, mPreviewLayoutParams);
        }
    }

    void setup(OnClickCapturingModeButtonListener listener, ContentPallet.ThumbnailClickListener clickListener) throws Resources.NotFoundException {
        boolean isHeadUpDisplayReady = false;
        if (!isHeadUpDisplayReady()) {
            inflate();
            isHeadUpDisplayReady = true;
        }
        if (this.mHeadUpDisplay != null) {
            LayoutDependencyResolver.resolveLayoutDependencyOnDevice(this.mActivity, this.mHeadUpDisplay, this.mScreenAspect);
            setupCapturingModeButton();
        }
        setLeftAndRightIconContainerParams();
        setupCaptureButtonGroup();
        setupCaptureButton();
        if (isHeadUpDisplayReady) {
            setupContentsView(clickListener);
        }
        setupSettingIndicators();
        setupZoombar();
        setupRecordingIndicator();
        setupGridLineView();
        if (isHeadUpDisplayReady) {
            getCapturingModeButton().setup(listener);
        }
        setOrientation(this.mCurrentOrientation);
    }

    void release() {
        releaseContentsViewController();
        releaseUiComponentContainer();
        releaseBlankScreen();
        releaseHeadUpDesplay();
    }

    public AllEventListener getAllEventListener() {
        return this.mAllEventListener;
    }

    public GeotagIndicator getGeoTagIndicator() {
        return this.mGeoTag;
    }

    public Indicator getLowMemoryIndicator() {
        return this.mLowMemory;
    }

    public Indicator getThermalIndicator() {
        return this.mThermal;
    }

    void setOrientation(int orientation) throws Resources.NotFoundException {
        setOrientation(orientation, orientation);
    }

    void setOrientation(int orientation, int recordingOrientation) throws Resources.NotFoundException {
        this.mCurrentOrientation = orientation;
        if (this.mHeadUpDisplay != null) {
            this.mOnScreenButtonGroup.setUiOrientation(orientation);
            this.mCaptureButtonIcon.setUiOrientation(orientation);
            this.mContentsViewController.setSensorOrientation(orientation);
            this.mCapturingModeButton.setSensorOrientation(orientation);
            this.mGeoTag.setSensorOrientation(recordingOrientation);
            this.mLowMemory.setSensorOrientation(recordingOrientation);
            this.mThermal.setSensorOrientation(recordingOrientation);
            this.mZoombar.setSensorOrientation(recordingOrientation);
            this.mRecordingIndicator.setOrientation(recordingOrientation);
        }
    }

    public void setPreviewRect(Rect rect) {
        ViewGroup.LayoutParams params = this.mPreview.getLayoutParams();
        params.width = rect.width();
        params.height = rect.height();
        this.mPreview.setLeft(rect.left);
        this.mPreview.setTop(rect.top);
        this.mPreview.requestLayout();
        updateGridLine(rect.width(), rect.height());
    }

    public View getPreview() {
        return this.mPreview;
    }

    public ViewGroup getPreviewContainer() {
        return this.mPreviewContainerLayout.mPreviewContainer;
    }

    public Rect getViewFinderRect() {
        return this.mViewFinderRect;
    }

    private void setupCaptureButtonGroup() {
        this.mOnScreenButtonGroup = (OnScreenButtonGroup) this.mActivity.findViewById(R.id.capture_button_group);
    }

    public OnScreenButtonGroup getOnScreenButtonGroup() {
        return this.mOnScreenButtonGroup;
    }

    private void setupCaptureButton() {
        this.mCaptureButtonIcon = (OnScreenButton) this.mActivity.findViewById(R.id.capture_right_bottom_button);
        this.mCaptureButtonGroup = (RelativeLayout) this.mActivity.findViewById(R.id.capture_right_bottom);
    }

    public OnScreenButton getCaptureButtonIcon() {
        return this.mCaptureButtonIcon;
    }

    public RelativeLayout getCaptureButtonGroup() {
        return this.mCaptureButtonGroup;
    }

    public CapturingModeButton getCapturingModeButton() {
        return this.mCapturingModeButton;
    }

    public RecordingIndicator getRecordingIndicator() {
        return this.mRecordingIndicator;
    }

    private void setupContentsView(ContentPallet.ThumbnailClickListener clickListener) {
        if (this.mContentsViewController == null) {
            this.mContentsViewController = new ContentsViewController(this.mActivity, this.mActivity.getStorageManager(), clickListener);
            this.mContentsViewController.setSensorOrientation(this.mCurrentOrientation);
            this.mContentsViewController.resume();
            this.mContentsViewController.reload();
        }
    }

    public int getCurrentOrientation() {
        return this.mCurrentOrientation;
    }

    public ContentsViewController getContentsViewController() {
        return this.mContentsViewController;
    }

    private void setupCapturingModeButton() {
        this.mCapturingModeButton = (CapturingModeButton) this.mHeadUpDisplay.findViewById(R.id.mode_selector_button);
    }

    private void setupSettingIndicators() {
        this.mGeoTag = new GeotagIndicator((ImageView) this.mActivity.findViewById(R.id.geo_tag_indicator));
        this.mGeoTag.setSensorOrientation(this.mCurrentOrientation);
        this.mLowMemory = new Indicator((ImageView) this.mActivity.findViewById(R.id.low_memory_indicator));
        this.mLowMemory.setSensorOrientation(this.mCurrentOrientation);
        this.mThermal = new Indicator((ImageView) this.mActivity.findViewById(R.id.thermal_indicator));
        this.mThermal.setSensorOrientation(this.mCurrentOrientation);
    }

    private void setupZoombar() {
        if (this.mZoombarGroup == null) {
            this.mZoombarGroup = (FrameLayout) this.mActivity.getLayoutInflater().inflate(R.layout.zoombar, (ViewGroup) null);
            this.mZoombar = (Zoombar) this.mZoombarGroup.findViewById(R.id.zoombar);
            this.mZoombar.setSensorOrientation(this.mCurrentOrientation);
            this.mZoombar.hideImmediately();
            getLazyInflatedUiComponentContainerBack().addView(this.mZoombarGroup);
        }
        repositionZoombar();
    }

    protected void repositionZoombar() {
        if (isHeadUpDisplayReady()) {
            FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) this.mZoombarGroup.getLayoutParams();
            int currentWidth = params.width;
            int newWidth = this.mPreview.getWidth();
            if (newWidth != currentWidth) {
                params.width = newWidth;
                this.mZoombarGroup.requestLayout();
            }
        }
    }

    private void setupRecordingIndicator() throws Resources.NotFoundException {
        if (this.mRecordingIndicator == null) {
            this.mRecordingIndicator = (RecordingIndicator) this.mActivity.findViewById(R.id.recording_progress_indicator);
            this.mRecordingIndicator.setScreenAspect(this.mScreenAspect);
            this.mRecordingIndicator.setOrientation(this.mCurrentOrientation);
            this.mRecordingIndicator.setVisibility(android.view.View.GONE);
            this.mRecordingIndicator.prepareBeforeRecording(0, false);
        }
    }

    public Rect getPreviewRect(Activity act, int previewWidth, int previewHeight) {
        if (previewWidth != 0 || previewHeight != 0) {
            return LayoutDependencyResolver.getSurfaceViewRect(act, previewWidth / previewHeight, this.mScreenAspect);
        }
        CameraLogger.e(TAG, "Preview size is not set.");
        return new Rect(0, 0, 0, 0);
    }

    private void releaseHeadUpDesplay() {
        this.mHeadUpDisplay = null;
    }

    public boolean isHeadUpDisplayReady() {
        return this.mHeadUpDisplay != null;
    }

    public void hideContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.hide();
        }
    }

    public void reloadContentsViewController(ContentPallet.ThumbnailClickListener clickListener) {
        if (this.mContentsViewController == null) {
            setupContentsView(clickListener);
        } else {
            this.mContentsViewController.reload();
        }
    }

    public void pause() throws Resources.NotFoundException {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.pause();
        }
        if (this.mRecordingIndicator != null) {
            this.mRecordingIndicator.setConstraint(false);
            this.mRecordingIndicator.prepareBeforeRecording(0, false);
            this.mRecordingIndicator.setVisibility(android.view.View.GONE);
        }
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
        if (this.mGridLineView != null) {
            this.mGridLineView.hide();
        }
    }

    public void showContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.show();
        }
    }

    public void releaseContentsViewController() {
        if (this.mContentsViewController != null) {
            this.mContentsViewController.release();
        }
        this.mContentsViewController = null;
    }

    public void refresh() {
        this.mHeadUpDisplay.requestLayout();
        this.mHeadUpDisplay.invalidate();
    }

    public void setupBlankScreen() {
        LayoutInflater inflater;
        if (this.mWindowCover == null && (inflater = this.mActivity.getLayoutInflater()) != null) {
            this.mWindowCover = inflater.inflate(R.layout.camera_window_cover, (ViewGroup) null);
            Window window = this.mActivity.getWindow();
            WindowManager.LayoutParams coverParams = window.getAttributes();
            window.addContentView(this.mWindowCover, coverParams);
        }
    }

    public void tearDownBlankScreen() {
        if (this.mWindowCover != null) {
            hideBlankScreen();
            this.mWindowCover = null;
        }
    }

    public void releaseBlankScreen() {
        this.mWindowCover = null;
    }

    public void showBlankScreen() {
        if (this.mWindowCover != null) {
            this.mWindowCover.setVisibility(android.view.View.VISIBLE);
        }
    }

    public void hideBlankScreen() {
        if (this.mWindowCover != null) {
            this.mWindowCover.setVisibility(android.view.View.INVISIBLE);
        }
    }

    public Zoombar getZoomBar() {
        return this.mZoombar;
    }

    private void inflate() {
        LayoutInflater inflater = LayoutInflater.from(this.mActivity);
        if (this.mPreInflatedHeadUpDisplay != null) {
            this.mHeadUpDisplay = (ViewGroup) this.mPreInflatedHeadUpDisplay;
            this.mPreInflatedHeadUpDisplay = null;
        } else {
            this.mHeadUpDisplay = (ViewGroup) inflater.inflate(R.layout.viewfinder_layout, (ViewGroup) null);
        }
        FrameLayout container = new FrameLayout(this.mActivity);
        this.mRootView.addView(container);
        container.addView(this.mHeadUpDisplay);
        this.mHeadUpDisplay.getLayoutParams().width = this.mViewFinderRect.width();
        this.mHeadUpDisplay.getLayoutParams().height = this.mViewFinderRect.height();
        this.mLazyInflatedUiComponentContainerFront = (FrameLayout) this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container);
        this.mLazyInflatedUiComponentContainerFullScreen = (FrameLayout) this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container_fullscreen);
    }

    public void setPreInflatedHeadUpDisplay(View headUpDisplay) {
        this.mPreInflatedHeadUpDisplay = headUpDisplay;
    }

    public void releaseUiComponentContainer() {
        if (this.mLazyInflatedUiComponentContainerFront != null) {
            this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(null);
        }
        this.mLazyInflatedUiComponentContainerFront = null;
        if (this.mLazyInflatedUiComponentContainerFullScreen != null) {
            this.mLazyInflatedUiComponentContainerFullScreen.setOnTouchListener(null);
        }
        this.mLazyInflatedUiComponentContainerFullScreen = null;
    }

    public void setOnTouchListener(View.OnTouchListener listener) {
        this.mLazyInflatedUiComponentContainerFront.setOnTouchListener(listener);
    }

    public void setOnKeyEventListener(View.OnKeyListener listener) {
        this.mLazyInflatedUiComponentContainerFront.setOnKeyListener(listener);
        if (listener == null) {
            this.mLazyInflatedUiComponentContainerFront.setFocusable(false);
            this.mLazyInflatedUiComponentContainerFront.setFocusableInTouchMode(false);
        } else {
            this.mLazyInflatedUiComponentContainerFront.setFocusable(true);
            this.mLazyInflatedUiComponentContainerFront.setFocusableInTouchMode(true);
        }
    }

    void requestToRemoveSystemUi() {
        LayoutDependencyResolver.requestToRemoveSystemUi(this.mRootView);
        setCurrentNavigationBarVisibility(NavigationBarVisibility.HIDE);
    }

    void requestToDimSystemUi() {
        LayoutDependencyResolver.requestToDimSystemUi(this.mRootView);
        setCurrentNavigationBarVisibility(NavigationBarVisibility.LOW_PROFILE);
    }

    void requestToRecoverSystemUi() {
        LayoutDependencyResolver.requestToRecoverSystemUi(this.mRootView);
        setCurrentNavigationBarVisibility(NavigationBarVisibility.VISIBLE);
    }

    void requestToRestoreSystemUi() {
        if (this.mNavigationBarVisibility != null) {
            switch (getPreviousNavigationBarVisibility()) {
                case VISIBLE:
                    requestToRecoverSystemUi();
                    break;
                case LOW_PROFILE:
                    requestToDimSystemUi();
                    break;
                case HIDE:
                    requestToRemoveSystemUi();
                    break;
            }
        }
    }

    void setCurrentNavigationBarVisibility(NavigationBarVisibility visibility) {
        this.mNavigationBarVisibility = visibility;
    }

    private NavigationBarVisibility getPreviousNavigationBarVisibility() {
        return this.mNavigationBarVisibility;
    }

    public ViewGroup getRootView() {
        return this.mRootView;
    }

    public FrameLayout getCenterContainer() {
        return (FrameLayout) this.mActivity.findViewById(R.id.center_container);
    }

    public FrameLayout getPreviewOverlayContainer() {
        return this.mPreviewContainerLayout.mPreviewOverlayContainer;
    }

    public FrameLayout getPreviewContainerFill() {
        return this.mPreviewContainerLayout.mPreviewContainerFill;
    }

    public RelativeLayout getPreviewContainerRoot() {
        return this.mPreviewContainerLayout;
    }

    public FrameLayout getCaptureMethodIndicatorContainer() {
        return (FrameLayout) this.mActivity.findViewById(R.id.capture_method_indicator_container);
    }

    public FrameLayout getSettingIndicatorContainer() {
        return (FrameLayout) this.mActivity.findViewById(R.id.setting_indicator_container);
    }

    public FrameLayout getModeIndicatorContainer() {
        return (FrameLayout) this.mActivity.findViewById(R.id.mode_indicator_container);
    }

    public FrameLayout getLazyInflatedUiComponentContainerFront() {
        return this.mLazyInflatedUiComponentContainerFront;
    }

    public FrameLayout getLazyInflatedUiComponentContainerBack() {
        FrameLayout mLazyInflatedUiComponentContainerBack = (FrameLayout) this.mActivity.findViewById(R.id.lazy_inflated_ui_component_container_back);
        if (this.mScreenAspect == LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE) {
            mLazyInflatedUiComponentContainerBack.setPadding(ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), R.dimen.left_icon_area_height), 0, 0, 0);
        }
        return mLazyInflatedUiComponentContainerBack;
    }

    public void addLazyInflatedUiComponent(View component) {
        this.mLazyInflatedUiComponentContainerFront.addView(component);
    }

    public void addLazyInflatedUiComponentFullScreen(View component) {
        this.mLazyInflatedUiComponentContainerFullScreen.addView(component);
    }

    public BaseActivity getActivity() {
        return this.mActivity;
    }

    public void setLeftAndRightIconContainerParams() {
        if (this.mScreenAspect == LayoutDependencyResolver.ScreenAspect.EIGHTEEN_NINE) {
            ViewGroup left = (ViewGroup) this.mActivity.findViewById(R.id.left_container);
            ViewGroup right = (ViewGroup) this.mActivity.findViewById(R.id.right_container);
            left.getLayoutParams().width = ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), R.dimen.left_icon_area_height);
            ((ViewGroup.MarginLayoutParams) right.getLayoutParams()).rightMargin = ResourceUtil.getDimensionPixelSize(this.mActivity, this.mActivity.getPackageName(), R.dimen.capture_button_offset_18_9);
        }
    }

    public void hideIcons() {
        View left = this.mActivity.findViewById(R.id.left_container);
        View right = this.mActivity.findViewById(R.id.right_container);
        left.setVisibility(android.view.View.INVISIBLE);
        right.setVisibility(android.view.View.INVISIBLE);
    }

    public void showIcons() {
        View left = this.mActivity.findViewById(R.id.left_container);
        View right = this.mActivity.findViewById(R.id.right_container);
        left.setVisibility(android.view.View.VISIBLE);
        right.setVisibility(android.view.View.VISIBLE);
    }

    public void showLeftIconContainer() {
        View left = this.mActivity.findViewById(R.id.left_container);
        left.setVisibility(android.view.View.VISIBLE);
    }

    public void hideLeftIconContainer() {
        View left = this.mActivity.findViewById(R.id.left_container);
        left.setVisibility(android.view.View.INVISIBLE);
    }

    public void showRightIconContainer() {
        View left = this.mActivity.findViewById(R.id.right_container);
        left.setVisibility(android.view.View.VISIBLE);
    }

    public void hideRightIconContainer() {
        View left = this.mActivity.findViewById(R.id.right_container);
        left.setVisibility(android.view.View.INVISIBLE);
    }

    public void checkGridLineIsDisplayedOrNot() {
        String gridLineValue = this.mActivity.getCommonSettings().get(CommonSettingKey.GRID_LINE).getProviderValue();
        if ("on".equals(gridLineValue)) {
            enableGridLineView();
        } else {
            disableGridLineView();
        }
    }

    public void enableGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.enable();
        }
    }

    public void disableGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.disable();
        }
    }

    protected void hideGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.hide();
        }
    }

    protected void showGridLineView() {
        if (this.mGridLineView != null) {
            this.mGridLineView.showIfEnabled();
        }
    }

    public void updateGridLine(int viewfinderWidth, int viewfinderHeight) {
        if (this.mGridLineView != null) {
            this.mGridLineView.setSurfaceSize(viewfinderWidth, viewfinderHeight);
        }
    }

    private void setupGridLineView() {
        if (this.mGridLineView == null) {
            this.mGridLineView = new GridLineView(this.mActivity);
            this.mGridLineView.setVisibility(android.view.View.INVISIBLE);
            this.mGridLineView.setSurfaceSize(this.mViewFinderRect.width(), this.mViewFinderRect.height());
            this.mPreviewContainerLayout.mPreviewContainer.addView(this.mGridLineView);
        }
    }

    private static class PreviewContainerLayout extends RelativeLayout {
        public final FrameLayout mPreviewContainer;
        public final FrameLayout mPreviewContainerFill;
        public final FrameLayout mPreviewOverlayContainer;

        public PreviewContainerLayout(Context context) {
            super(context);
            this.mPreviewContainer = new FrameLayout(context);
            addView(this.mPreviewContainer);
            RelativeLayout.LayoutParams previewContainerParams = new RelativeLayout.LayoutParams(-2, -1);
            previewContainerParams.setMargins(0, 0, 0, 0);
            this.mPreviewContainer.setPadding(0, 0, 0, 0);
            this.mPreviewContainer.setLayoutParams(previewContainerParams);
            this.mPreviewContainer.setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
            int previewContainerId = View.generateViewId();
            this.mPreviewContainer.setId(previewContainerId);
            this.mPreviewContainerFill = new FrameLayout(context);
            addView(this.mPreviewContainerFill);
            RelativeLayout.LayoutParams previewContainerFillParams = new RelativeLayout.LayoutParams(-1, -1);
            previewContainerFillParams.setMargins(0, 0, 0, 0);
            previewContainerFillParams.addRule(1, previewContainerId);
            this.mPreviewContainerFill.setBackgroundResource(R.drawable.cam_viewfinder_4_3_background_icn);
            this.mPreviewContainerFill.setPadding(0, 0, 0, 0);
            this.mPreviewContainerFill.setLayoutParams(previewContainerFillParams);
            FrameLayout previewOverlayContainerParent = new FrameLayout(context);
            addView(previewOverlayContainerParent);
            RelativeLayout.LayoutParams previewOverlayContainerParentParams = new RelativeLayout.LayoutParams(-1, -1);
            previewOverlayContainerParent.setLayoutParams(previewOverlayContainerParentParams);
            this.mPreviewOverlayContainer = new FrameLayout(context);
            previewOverlayContainerParent.addView(this.mPreviewOverlayContainer);
            FrameLayout.LayoutParams previewOverlayContainerParams = new FrameLayout.LayoutParams(-1, -1);
            previewOverlayContainerParams.gravity = 3;
            previewOverlayContainerParams.setMargins(0, 0, 0, 0);
            this.mPreviewOverlayContainer.setPadding(0, 0, 0, 0);
            this.mPreviewOverlayContainer.setLayoutParams(previewOverlayContainerParams);
            LayoutInflater inflater = LayoutInflater.from(context);
            ViewGroup recordingIndicator = (ViewGroup) inflater.inflate(R.layout.viewfinder_recording_indicator, (ViewGroup) null);
            previewOverlayContainerParent.addView(recordingIndicator);
        }
    }

    public void updatePreviewContainer() {
        getPreviewContainer().requestLayout();
    }
}