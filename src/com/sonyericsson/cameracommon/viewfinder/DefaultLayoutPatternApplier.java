package com.sonyericsson.cameracommon.viewfinder;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class DefaultLayoutPatternApplier implements LayoutPatternApplier {
    public static final int D = 3;
    public static final int H = 2;
    public static final int N = 0;
    public static final int S = 1;
    public static final String TAG = "DefaultLayoutPatternApplier";
    protected BaseViewFinderLayout mLayout;
    protected Map<LayoutPattern, Map<Component, Integer>> mPatternComponentMap = new HashMap();

    protected interface Component {
    }

    protected enum DefaultComponent implements Component {
        CAPTURE_BUTTON,
        CAPTURE_METHOD_INDICATORS,
        MODE_INDICATORS,
        GEOTAG_INDICATORS,
        STORAGE_INDICATORS,
        ZOOM_BAR,
        CONTENT_VIEW,
        MODE_SELECTOR_BUTTON,
        RECORDING_PROGRESS,
        RIGHT_BOTTOM_CAPTURE_BUTTON,
        THERMAL_INDICATORS
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier
    public void setup(BaseViewFinderLayout baseLayout, boolean isOneshot) {
        this.mLayout = baseLayout;
        setupLayoutPattern();
        setupVisibilities(isOneshot);
    }

    protected void setupLayoutPattern() {
        for (LayoutPattern pattern : DefaultLayoutPattern.values()) {
            this.mPatternComponentMap.put(pattern, new HashMap());
        }
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.LayoutPatternApplier
    public void apply(LayoutPattern pattern) {
        Map<Component, Integer> visiblities = this.mPatternComponentMap.get(pattern);
        int visibility = visiblities.get(DefaultComponent.CAPTURE_BUTTON).intValue();
        switch (visibility) {
            case 1:
                this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                break;
            case 2:
                this.mLayout.getOnScreenButtonGroup().setVisibility(4);
                break;
            default:
                if (this.mLayout.getOnScreenButtonGroup().isTouched()) {
                    this.mLayout.getOnScreenButtonGroup().setVisibility(0);
                    break;
                } else {
                    this.mLayout.getOnScreenButtonGroup().setVisibility(4);
                    break;
                }
        }
        int visibility2 = visiblities.get(DefaultComponent.CONTENT_VIEW).intValue();
        switch (visibility2) {
            case 1:
                this.mLayout.showContentsViewController();
                break;
            case 2:
                this.mLayout.hideContentsViewController();
                break;
        }
        int visibility3 = visiblities.get(DefaultComponent.MODE_SELECTOR_BUTTON).intValue();
        switch (visibility3) {
            case 1:
                this.mLayout.getCapturingModeButton().setVisibility(0);
                break;
            case 2:
                this.mLayout.getCapturingModeButton().setVisibility(4);
                break;
        }
        int visibility4 = visiblities.get(DefaultComponent.CAPTURE_METHOD_INDICATORS).intValue();
        switch (visibility4) {
            case 1:
                this.mLayout.getCaptureMethodIndicatorContainer().setVisibility(0);
                break;
            case 2:
                this.mLayout.getCaptureMethodIndicatorContainer().setVisibility(4);
                break;
        }
        int visibility5 = visiblities.get(DefaultComponent.MODE_INDICATORS).intValue();
        switch (visibility5) {
            case 1:
                this.mLayout.getModeIndicatorContainer().setVisibility(0);
                break;
            case 2:
                this.mLayout.getModeIndicatorContainer().setVisibility(4);
                break;
        }
        int visibility6 = visiblities.get(DefaultComponent.GEOTAG_INDICATORS).intValue();
        switch (visibility6) {
            case 1:
                this.mLayout.getGeoTagIndicator().show();
                break;
            case 2:
                this.mLayout.getGeoTagIndicator().hide();
                break;
        }
        int visibility7 = visiblities.get(DefaultComponent.STORAGE_INDICATORS).intValue();
        switch (visibility7) {
            case 1:
                this.mLayout.getLowMemoryIndicator().show();
                break;
            case 2:
                this.mLayout.getLowMemoryIndicator().hide();
                break;
        }
        int visibility8 = visiblities.get(DefaultComponent.ZOOM_BAR).intValue();
        switch (visibility8) {
            case 1:
                this.mLayout.getZoomBar().show();
                break;
            case 2:
                this.mLayout.getZoomBar().hideImmediately();
                break;
            case 3:
                this.mLayout.getZoomBar().hideDelayed();
                break;
        }
        int visibility9 = visiblities.get(DefaultComponent.RECORDING_PROGRESS).intValue();
        switch (visibility9) {
            case 1:
                this.mLayout.getRecordingIndicator().setVisibility(0);
                break;
            case 2:
                this.mLayout.getRecordingIndicator().setVisibility(4);
                break;
        }
        int visibility10 = visiblities.get(DefaultComponent.RIGHT_BOTTOM_CAPTURE_BUTTON).intValue();
        switch (visibility10) {
            case 1:
                this.mLayout.getCaptureButtonGroup().setVisibility(0);
                break;
            case 2:
                this.mLayout.getCaptureButtonGroup().setVisibility(4);
                break;
        }
        int visibility11 = visiblities.get(DefaultComponent.THERMAL_INDICATORS).intValue();
        switch (visibility11) {
            case 1:
                this.mLayout.getThermalIndicator().show();
                break;
            case 2:
                this.mLayout.getThermalIndicator().hide();
                break;
        }
        this.mLayout.refresh();
    }

    protected void setupVisibilities(boolean oneshot) {
        if (oneshot) {
            set(DefaultLayoutPattern.PREVIEW, new int[]{1, 1, 1, 1, 1, 3, 2, 2, 2, 2, 1});
            set(DefaultLayoutPattern.CLEAR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.ZOOMING, new int[]{2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.FOCUS_SEARCHING, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.FOCUS_DONE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.CAPTURE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 1, 2, 1});
            set(DefaultLayoutPattern.BURST_SHOOTING, new int[]{0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1});
            set(DefaultLayoutPattern.MODE_SELECTOR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.SETTING, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.SELFTIMER, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
            set(DefaultLayoutPattern.PAUSE_RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 1, 2, 1});
            set(DefaultLayoutPattern.SEMIAUTO_SEEKING, new int[]{1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1});
            return;
        }
        set(DefaultLayoutPattern.PREVIEW, new int[]{1, 1, 1, 1, 1, 3, 1, 1, 2, 2, 1});
        set(DefaultLayoutPattern.CLEAR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.ZOOMING, new int[]{2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.FOCUS_SEARCHING, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.FOCUS_DONE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.CAPTURE, new int[]{0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.RECORDING, new int[]{1, 1, 1, 2, 1, 3, 1, 2, 1, 1, 1});
        set(DefaultLayoutPattern.BURST_SHOOTING, new int[]{0, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1});
        set(DefaultLayoutPattern.MODE_SELECTOR, new int[]{2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.SETTING, new int[]{1, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2});
        set(DefaultLayoutPattern.SELFTIMER, new int[]{1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2});
        set(DefaultLayoutPattern.PAUSE_RECORDING, new int[]{1, 1, 1, 2, 1, 3, 2, 2, 1, 1, 1});
        set(DefaultLayoutPattern.SEMIAUTO_SEEKING, new int[]{1, 1, 1, 1, 1, 2, 1, 1, 2, 2, 1});
    }

    protected void set(LayoutPattern pattern, int[] visibility) {
        if (DefaultComponent.values().length != visibility.length) {
            throw new IllegalArgumentException("Not equal components count : " + DefaultComponent.values().length + " visibility count : " + visibility.length);
        }
        int index = 0;
        Map<Component, Integer> componentMap = this.mPatternComponentMap.get(pattern);
        for (Component component : DefaultComponent.values()) {
            componentMap.put(component, Integer.valueOf(visibility[index]));
            index++;
        }
    }
}