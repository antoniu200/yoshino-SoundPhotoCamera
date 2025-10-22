package com.sonyericsson.cameracommon.viewfinder;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.values.Geotag;
import com.sonyericsson.cameracommon.contentsview.ContentPallet;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StorageUtil;
import com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.AccessibilityEventFilter;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import com.sonyericsson.cameracommon.viewfinder.LayoutDependencyResolver;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButton;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.CapturingModeButtonAttributes;
import com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener;
import com.sonymobile.camera.addon.capturingmode.CapturingModeSelector;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class ViewFinder implements ViewFinderInterface, CapturingModeSelector.OnModeSelectListener, CapturingModeSelector.OnModeFinishListener, LocationAcquiredListener, BaseActivity.LayoutOrientationChangedListener, StorageController.StorageListener, OnClickCapturingModeButtonListener, StorageController.StorageDialogStateListener, StorageController.SdCorruptListener {
    public static final String SHARED_PREFS_KEY_THERMAL_DISABLED = "THERMAL_DISABLED";
    public static final String TAG = "ViewFinder";
    private final BaseActivity mActivity;
    private BaseViewFinderLayout mBaseLayout;
    private CapturingModeSelector mCapturingModeSelector;
    private Future<Map<InflateItem, List<View>>> mInflateFuture;
    private Map<InflateItem, List<View>> mInflateItemMap;
    public boolean mIsItemChecked;
    private boolean mIsRequestedLaterSetup;
    private LayoutPattern mLayoutPattern;
    private LayoutPatternApplier mLayoutPatternApplier;
    private View mPreInflatedHeadUpDisplay;
    protected ParamSharedPrefWrapper mPref;
    protected LayoutDependencyResolver.ScreenAspect mScreenAspect;
    private Rect mTargetPreviewRect;
    private RotatableDialog mThermalDialog;

    protected abstract void onCloseCapturingModeSelector();

    protected abstract void onOpenCapturingModeSelector();

    public void resume() {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.hideContentsViewController();
            this.mBaseLayout.setupBlankScreen();
            if (this.mBaseLayout.getContentsViewController() != null) {
                this.mBaseLayout.getContentsViewController().resume();
            }
        }
    }

    public void pause() throws Resources.NotFoundException {
        this.mBaseLayout.pause();
        closeCapturingModeSelector();
        releaseCapturingModeSelector();
    }

    public void release() {
        this.mBaseLayout.release();
        releaseCapturingModeSelector();
        this.mActivity.removeOrienationListener(this);
        if (this.mActivity.getGeoTagManager() != null) {
            this.mActivity.getGeoTagManager().setLocationAcquiredListener(null);
        }
        if (this.mActivity.getStorageManager() != null) {
            this.mActivity.getStorageManager().removeStorageListener(this);
        }
    }

    protected BaseActivity getActivity() {
        return this.mActivity;
    }

    protected BaseViewFinderLayout getBaseLayout() {
        return this.mBaseLayout;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public boolean isHeadUpDisplayReady() {
        return this.mBaseLayout.isHeadUpDisplayReady();
    }

    protected boolean isInvalidatedPreviewSize() {
        return this.mTargetPreviewRect == null;
    }

    protected void invalidatePreviewSize() {
        this.mTargetPreviewRect = null;
    }

    protected boolean isRequestingPreviewSizeChange() {
        if (isInvalidatedPreviewSize()) {
            return false;
        }
        return (this.mTargetPreviewRect.width() == getBaseLayout().getPreview().getWidth() && this.mTargetPreviewRect.height() == getBaseLayout().getPreview().getHeight()) ? false : true;
    }

    protected Rect computePreviewRect(Activity act, int previewWidth, int previewHeight) {
        if (previewWidth != 0 || previewHeight != 0) {
            return LayoutDependencyResolver.getSurfaceViewRect(act, previewWidth / previewHeight, this.mScreenAspect);
        }
        CameraLogger.e(TAG, "Preview size is not set.");
        return new Rect(0, 0, 0, 0);
    }

    protected void requestToRemoveSystemUi() {
        getBaseLayout().requestToRemoveSystemUi();
    }

    protected void requestToRecoverSystemUi() {
        getBaseLayout().requestToRecoverSystemUi();
    }

    protected void requestToDimSystemUi() {
        getBaseLayout().requestToDimSystemUi();
    }

    protected void requestToRestoreSystemUi() {
        getBaseLayout().requestToRestoreSystemUi();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void changeLayoutTo(LayoutPattern pattern) {
        if (isHeadUpDisplayReady()) {
            this.mLayoutPatternApplier.apply(pattern);
            this.mLayoutPattern = pattern;
            if (pattern.equals(DefaultLayoutPattern.PREVIEW)) {
                this.mBaseLayout.getGeoTagIndicator().set(isGeoTagEnabled());
                if (this.mActivity.getGeoTagManager() != null) {
                    this.mBaseLayout.getGeoTagIndicator().isAcquired(isAcquired());
                }
            }
            if (pattern.equals(DefaultLayoutPattern.SELFTIMER)) {
                this.mBaseLayout.getOnScreenButtonGroup().clearTouched();
            }
        }
    }

    private boolean isGeoTagEnabled() {
        return PresetConfigurationResolver.isGeoTagEnabled(this.mActivity.getCommonSettings().get(CommonSettingKey.GEO_TAG), this.mActivity);
    }

    private boolean isAcquired() {
        boolean isAcquired = this.mActivity.getGeoTagManager().isGpsAcquired() | this.mActivity.getGeoTagManager().isNetworkAcquired();
        return isAcquired;
    }

    public void setPreInflatedHeadUpDisplay(View headUpDisplay) {
        this.mPreInflatedHeadUpDisplay = headUpDisplay;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void requestSetupHeadUpDisplay() throws Resources.NotFoundException {
        setupHeadUpDisplay();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void requestUpdateSurfaceSize(int width, int height) {
        if (this.mTargetPreviewRect == null || this.mTargetPreviewRect.width() != width || this.mTargetPreviewRect.height() != height) {
            this.mTargetPreviewRect = new Rect(0, 0, width, height);
            getBaseLayout().setPreviewRect(this.mTargetPreviewRect);
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void onZoomChanged(int current) {
        if (isHeadUpDisplayReady()) {
            getBaseLayout().getZoomBar().zoom(current);
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void onCaptureDone() {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.getOnScreenButtonGroup().clearTouched();
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.ViewFinderInterface
    public void onShutterDone(boolean isThumbnailFeedbackShown) {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.getOnScreenButtonGroup().clearTouched();
            if (isThumbnailFeedbackShown && !getActivity().isOneShot()) {
                getBaseLayout().getContentsViewController().show();
            }
        }
    }

    public ViewFinder(BaseActivity activity, LayoutPatternApplier visibilityContoller, ParamSharedPrefWrapper pref) {
        this(activity, visibilityContoller, pref, false);
    }

    public ViewFinder(BaseActivity activity, LayoutPatternApplier visibilityContoller, ParamSharedPrefWrapper pref, boolean isLazyInitializationRequired) {
        this.mIsRequestedLaterSetup = false;
        this.mIsItemChecked = false;
        this.mActivity = activity;
        this.mLayoutPatternApplier = visibilityContoller;
        this.mPref = pref;
        this.mScreenAspect = activity.getScreenAspect();
        if (!isLazyInitializationRequired) {
            initialize();
        }
    }

    public void initialize() {
        this.mBaseLayout = new BaseViewFinderLayout(this.mActivity, this.mScreenAspect);
        this.mActivity.addOrienationListener(this);
    }

    protected ContentPallet.ThumbnailClickListener getThumbnailClickListener() {
        return new ContentPallet.ThumbnailClickListener() { // from class: com.sonyericsson.cameracommon.viewfinder.ViewFinder.1
            @Override // com.sonyericsson.cameracommon.contentsview.ContentPallet.ThumbnailClickListener
            public void onClick(Content content) {
                if (content != null) {
                    content.viewContent(ViewFinder.this.mActivity);
                }
            }
        };
    }

    protected void setup(View surface) throws Resources.NotFoundException {
        this.mLayoutPatternApplier.setup(this.mBaseLayout, this.mActivity.isOneShot());
        this.mBaseLayout.attachToWindow(surface);
        this.mBaseLayout.setupPreviewView();
        LayoutDependencyResolver.setupRotatableToast(this.mActivity, this.mScreenAspect);
    }

    private void setupHeadUpDisplay() throws Resources.NotFoundException {
        boolean isReload = false;
        if (this.mPreInflatedHeadUpDisplay == null) {
            isReload = true;
        }
        if (this.mPreInflatedHeadUpDisplay != null) {
            this.mBaseLayout.setPreInflatedHeadUpDisplay(this.mPreInflatedHeadUpDisplay);
            this.mPreInflatedHeadUpDisplay = null;
        }
        this.mBaseLayout.setOrientation(this.mActivity.getOrientation());
        this.mBaseLayout.setup(this, getThumbnailClickListener());
        updateIndicatorState();
        if (!isReload) {
            this.mBaseLayout.reloadContentsViewController(getThumbnailClickListener());
        }
        if (this.mActivity.getGeoTagManager() != null) {
            this.mActivity.getGeoTagManager().setLocationAcquiredListener(this);
        }
        if (this.mActivity.getStorageManager() != null) {
            this.mActivity.getStorageManager().addStorageListener(this);
        }
    }

    private void updateIndicatorState() {
        if (PresetConfigurationResolver.isGeoTagEnabled(this.mActivity.getCommonSettings().get(CommonSettingKey.GEO_TAG), this.mActivity)) {
            if (this.mActivity.getGeoTagManager() != null) {
                boolean acquiring = this.mActivity.getGeoTagManager().isAcquiring();
                this.mBaseLayout.getGeoTagIndicator().set(true);
                this.mBaseLayout.getGeoTagIndicator().isAcquired(acquiring ? false : true);
            }
        } else {
            this.mBaseLayout.getGeoTagIndicator().set(false);
        }
        updateLowMemoryIndicator();
        updateThermalIndicator();
    }

    private void updateLowMemoryIndicator() {
        this.mBaseLayout.getLowMemoryIndicator().set(!this.mActivity.getStorageManager().hasEnoughFreeSpace());
    }

    private void updateThermalIndicator() {
        this.mBaseLayout.getThermalIndicator().set(this.mActivity.isThermalWarningState());
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onAcquired(boolean gps, boolean net) {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.getGeoTagIndicator().isAcquired(gps || net);
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onLost() {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.getGeoTagIndicator().isAcquired(false);
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.location.LocationAcquiredListener
    public void onDisabled() {
        this.mActivity.getCommonSettings().set(Geotag.OFF);
        this.mBaseLayout.getGeoTagIndicator().set(false);
        this.mActivity.readLocationSettings();
    }

    public void closeCapturingModeSelector() {
        if (isCapturingModeSelectorOpened()) {
            this.mCapturingModeSelector.close();
            getBaseLayout().setOnTouchListener(null);
            onCloseCapturingModeSelector();
            getBaseLayout().showGridLineView();
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onStorageStateChanged(StorageUtil.CameraStorageType storage) {
        if (!isHeadUpDisplayReady()) {
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onDestinationToSaveChanged() {
        if (isHeadUpDisplayReady()) {
            this.mBaseLayout.reloadContentsViewController(getThumbnailClickListener());
        }
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.StorageListener
    public void onAvailableSizeUpdated(long available) {
        this.mBaseLayout.getLowMemoryIndicator().set(!this.mActivity.getStorageManager().hasEnoughFreeSpace());
    }

    public void openCapturingModeSelector(String modeName) {
        if (!isCapturingModeSelectorOpened() && this.mCapturingModeSelector != null) {
            this.mCapturingModeSelector.open(modeName);
            onOpenCapturingModeSelector();
            getBaseLayout().hideGridLineView();
        }
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity.LayoutOrientationChangedListener
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation changed) throws Resources.NotFoundException {
        int orientation;
        switch (changed) {
            case Portrait:
                orientation = 1;
                break;
            default:
                orientation = 2;
                break;
        }
        setOrientation(orientation);
    }

    protected void setOrientation(int orientation) throws Resources.NotFoundException {
        this.mBaseLayout.setOrientation(orientation);
        if (this.mBaseLayout.isHeadUpDisplayReady() && this.mCapturingModeSelector != null) {
            this.mCapturingModeSelector.setUiOrientation(this.mBaseLayout.getCurrentOrientation());
        }
    }

    protected void setOrientation(int sensorOrientation, int recordingOrientation) throws Resources.NotFoundException {
        this.mBaseLayout.setOrientation(sensorOrientation, recordingOrientation);
        if (this.mBaseLayout.isHeadUpDisplayReady() && this.mCapturingModeSelector != null) {
            this.mCapturingModeSelector.setUiOrientation(this.mBaseLayout.getCurrentOrientation());
        }
    }

    public void setupCapturingModeSelector() {
        if (this.mCapturingModeSelector == null) {
            this.mCapturingModeSelector = new CapturingModeSelector(this.mActivity, getBaseLayout().getLazyInflatedUiComponentContainerFront());
            this.mCapturingModeSelector.setOnModeSelectListener(this);
            this.mCapturingModeSelector.setOnModeFinishListener(this);
            this.mCapturingModeSelector.setUiOrientation(this.mBaseLayout.getCurrentOrientation());
        }
    }

    public void startSetupCapturingModeSelectorTask() {
        this.mIsRequestedLaterSetup = true;
        new Handler().post(new SetupCapturingModeSelectorTask());
    }

    private class SetupCapturingModeSelectorTask implements Runnable {
        private SetupCapturingModeSelectorTask() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            if (ViewFinder.this.isSetupNeeded()) {
                ViewFinder.this.setupCapturingModeSelectorLater();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSetupNeeded() {
        return this.mIsRequestedLaterSetup && this.mCapturingModeSelector == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupCapturingModeSelectorLater() throws Resources.NotFoundException {
        setupCapturingModeSelector();
        setOrientation(this.mBaseLayout.getCurrentOrientation());
        this.mIsRequestedLaterSetup = false;
    }

    public void releaseCapturingModeSelector() {
        if (this.mCapturingModeSelector != null) {
            this.mCapturingModeSelector.release();
            this.mCapturingModeSelector = null;
        }
        this.mIsRequestedLaterSetup = false;
    }

    public boolean isCapturingModeSelectorOpened() {
        if (this.mCapturingModeSelector == null) {
            return false;
        }
        return this.mCapturingModeSelector.isOpened();
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.capturingmode.OnClickCapturingModeButtonListener
    public void onClickCapturingModeButton(CapturingModeButton view) throws Resources.NotFoundException {
        if (isSetupNeeded()) {
            setupCapturingModeSelectorLater();
        }
        CapturingModeButtonAttributes mode = view.getCurrentCapturingMode();
        if (mode != null) {
            openCapturingModeSelector(mode.getName());
        }
    }

    protected void disableAccessibilityTalkBack() {
        getBaseLayout().getRootView().setAccessibilityDelegate(new AccessibilityEventFilter());
    }

    protected void startInflateTask(LayoutInflater layoutInflater, List<InflateItem> inflateItemList) {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        this.mInflateFuture = executor.submit(new InflateTask(layoutInflater, inflateItemList));
        executor.shutdown();
    }

    protected void joinInflateTask() {
        if (this.mInflateFuture != null) {
            try {
                this.mInflateItemMap = this.mInflateFuture.get();
            } catch (InterruptedException e) {
                CameraLogger.e(TAG, "join", e);
            } catch (ExecutionException e2) {
                CameraLogger.e(TAG, "join", e2);
            }
            this.mInflateFuture = null;
        }
    }

    protected void clearPreInflatedViews() {
        if (this.mInflateItemMap != null) {
            this.mInflateItemMap.clear();
            this.mInflateItemMap = null;
        }
    }

    public boolean isInflated() {
        return this.mInflateItemMap != null;
    }

    public List<View> getPreInflatedView(InflateItem id) {
        if (this.mInflateItemMap != null) {
            return this.mInflateItemMap.get(id);
        }
        return null;
    }

    protected void onNotifyThermalStatus(boolean isWarning) {
        if (getBaseLayout().getThermalIndicator() != null) {
            getBaseLayout().getThermalIndicator().set(isWarning);
        }
    }

    protected void notifyThermaDialogClosed() {
    }

    public class StartupAlertDialogListener implements DialogInterface.OnDismissListener, CompoundButton.OnCheckedChangeListener {
        public StartupAlertDialogListener() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            ViewFinder.this.mActivity.setAlertDialogIsOpened(false);
            ViewFinder.this.notifyThermaDialogClosed();
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            ViewFinder.this.mIsItemChecked = isChecked;
        }
    }

    protected void showThermalDialog() {
        showThermalDialog(getThermalString());
    }

    private int getThermalString() {
        return BrandConfig.isVerizonBrand() ? R.string.cam_strings_dialog_high_temp_vzw_txt : R.string.cam_strings_dialog_high_temp_txt;
    }

    protected void showThermalDialog(int id) {
        LayoutInflater inflater;
        StartupAlertDialogListener listener = new StartupAlertDialogListener();
        if (this.mActivity != null && (inflater = this.mActivity.getLayoutInflater()) != null) {
            View thermalView = inflater.inflate(R.layout.thermal_popup_content, (ViewGroup) null);
            TextView header = (TextView) thermalView.findViewById(R.id.header_text);
            header.setText(id);
            CheckBox checkBox = (CheckBox) thermalView.findViewById(R.id.check_box);
            TextView footer = (TextView) thermalView.findViewById(R.id.footer_text);
            checkBox.setOnCheckedChangeListener(new CheckBoxListener(listener, footer, -1));
            checkBox.setChecked(true);
            this.mThermalDialog = this.mActivity.getMessagePopup().showOkAndCustomViewContinuouslyUsed(thermalView, R.string.cam_strings_dialog_high_temp_title_txt, false, R.string.cam_strings_ok_txt, getThermalDialogOnClickListener(), getThermalDialogOnCancelListener());
            if (this.mThermalDialog != null) {
                this.mThermalDialog.setOnDismissListener(listener);
            }
        }
    }

    private class ThermalDialogCloseListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {
        private ThermalDialogCloseListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int arg1) {
            ViewFinder.this.mPref.setParamToSP(ViewFinder.SHARED_PREFS_KEY_THERMAL_DISABLED, ViewFinder.this.mIsItemChecked);
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface arg0) {
        }
    }

    protected static class CheckBoxListener implements CompoundButton.OnCheckedChangeListener {
        private final TextView mFooterView;
        private final CompoundButton.OnCheckedChangeListener mListener;
        private final int mMessage;

        public CheckBoxListener(CompoundButton.OnCheckedChangeListener listener, TextView footer, int textId) {
            this.mListener = listener;
            this.mFooterView = footer;
            this.mMessage = textId;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked && this.mMessage != -1) {
                this.mFooterView.setText(this.mMessage);
                this.mFooterView.setVisibility(0);
            } else {
                this.mFooterView.setText("");
                this.mFooterView.setVisibility(8);
            }
            this.mListener.onCheckedChanged(buttonView, isChecked);
        }
    }

    protected DialogInterface.OnClickListener getThermalDialogOnClickListener() {
        return new ThermalDialogCloseListener();
    }

    protected DialogInterface.OnCancelListener getThermalDialogOnCancelListener() {
        return new ThermalDialogCloseListener();
    }

    protected LayoutPatternApplier getLayoutPatternApplier() {
        return this.mLayoutPatternApplier;
    }

    public LayoutPattern getCurrentLayoutPattern() {
        return this.mLayoutPattern;
    }

    public void checkGridLineIsDisplayedOrNot() {
        this.mBaseLayout.checkGridLineIsDisplayedOrNot();
    }

    public void updateGridLineView(int viewfinderWidth, int viewfinderHeight) {
        this.mBaseLayout.updateGridLine(viewfinderWidth, viewfinderHeight);
    }

    public void enableGridLineView() {
        this.mBaseLayout.enableGridLineView();
    }

    public void disableGridLineView() {
        this.mBaseLayout.disableGridLineView();
    }

    protected void repositionZoombar() {
        this.mBaseLayout.repositionZoombar();
    }

    public void updatePreviewContainer() {
        this.mBaseLayout.updatePreviewContainer();
    }

    @Override // com.sonyericsson.cameracommon.mediasaving.StorageController.SdCorruptListener
    public void showBlank() {
    }
}