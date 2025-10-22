package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import java.util.HashMap;

/* loaded from: classes.dex */
public class OnScreenButtonGroup extends RelativeLayout {
    public static final String TAG = "OnScreenButtonGroup";
    private View mBackground;
    private OnScreenButton.Resource mBackgroundResource;
    private View mContainer;
    private boolean mIsRotatable;
    private final HashMap<ButtonType, OnScreenButtonListener> mListeners;
    private OnScreenButton mMain;
    private int mOrientation;
    private int mStaticOrientation;
    private OnScreenButton mSub;
    public static final OnScreenButton.Resource EMPTY_RESOURCE = new OnScreenButton.Resource(-1, -1, -1);
    private static final View.OnClickListener DUMMY_CLICK_LISTENER = new View.OnClickListener() { // from class: com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonGroup.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };

    public enum ButtonType {
        NONE(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        HIDDEN(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        CAPTURE(new OnScreenButton.Resource(R.drawable.capture_button_photo_large, R.drawable.capture_button_photo_large_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_photo_small, R.drawable.capture_button_photo_small_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        CAPTURE_IN_SEQUENTIAL_RECORDING(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.capture_button_photo_sequential_small, R.drawable.capture_button_photo_sequential_small_portrait, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1)),
        START_RECORDING(new OnScreenButton.Resource(R.drawable.capture_button_video_large, R.drawable.capture_button_video_large_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_video_small, R.drawable.capture_button_video_small_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        RESTART_RECORDING(new OnScreenButton.Resource(R.drawable.cam_capture_button_video_icn, R.drawable.cam_capture_button_video_port_icn, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_video_small, R.drawable.capture_button_video_small_portrait, R.string.cam_strings_accessibility_recording_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING(new OnScreenButton.Resource(R.drawable.recording_button_animation_large, R.drawable.recording_button_animation_large_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.recording_button_animation_small, R.drawable.recording_button_animation_small_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING_NO_BLINK(new OnScreenButton.Resource(R.drawable.capture_button_videorec_large, R.drawable.capture_button_videorec_large_portrait, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.recording_button_animation_small, R.drawable.recording_button_animation_small_port, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        STOP_RECORDING_IN_PAUSE(new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(R.drawable.capture_button_videorec3_small, R.drawable.capture_button_videorec3_small_portrait, R.string.cam_strings_accessibility_recording_stop_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        PAUSE_RECORDING(new OnScreenButton.Resource(R.drawable.capture_button_videopause, R.drawable.capture_button_videopause_portrait, R.string.cam_strings_accessibility_pause_button_txt), new OnScreenButton.Resource(R.drawable.capture_button_videopause, R.drawable.capture_button_videopause_portrait, R.string.cam_strings_accessibility_pause_button_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_video_bg_icn, R.drawable.cam_capture_button_photo_video_bg_port_icn, -1)),
        PHOTO_TO_VIDEO(new OnScreenButton.Resource(R.drawable.capture_button_switch_photo_to_video, R.drawable.capture_button_switch_photo_to_video_portrait, R.string.cam_strings_accessibility_switch_to_video_txt), new OnScreenButton.Resource(R.drawable.capture_button_switch_photo_to_video, R.drawable.capture_button_switch_photo_to_video_portrait, R.string.cam_strings_accessibility_switch_to_video_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        VIDEO_TO_PHOTO(new OnScreenButton.Resource(R.drawable.capture_button_switch_video_to_photo, R.drawable.capture_button_switch_video_to_photo_portrait, R.string.cam_strings_accessibility_switch_to_photo_txt), new OnScreenButton.Resource(R.drawable.capture_button_switch_video_to_photo, R.drawable.capture_button_switch_video_to_photo_portrait, R.string.cam_strings_accessibility_switch_to_photo_txt), new OnScreenButton.Resource(R.drawable.cam_capture_button_photo_bg_icn, R.drawable.cam_capture_button_photo_port_bg_icn, -1)),
        SELFTIMER_LONG(new OnScreenButton.Resource(R.drawable.selftimer_shutter_button_10sec, R.drawable.selftimer_shutter_button_10sec_port, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1)),
        SELFTIMER_SHORT(new OnScreenButton.Resource(R.drawable.selftimer_shutter_button_3sec, R.drawable.selftimer_shutter_button_3sec_port, R.string.cam_strings_accessibility_shutter_button_txt), new OnScreenButton.Resource(-1, -1, -1), new OnScreenButton.Resource(-1, -1, -1));

        public final OnScreenButton.Resource backgroundResource;
        public final OnScreenButton.Resource mainButtonResource;
        public final OnScreenButton.Resource subButtonResource;

        ButtonType(OnScreenButton.Resource main, OnScreenButton.Resource sub, OnScreenButton.Resource background) {
            this.mainButtonResource = main;
            this.subButtonResource = sub;
            this.backgroundResource = background;
        }
    }

    public OnScreenButtonGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mBackgroundResource = EMPTY_RESOURCE;
        this.mStaticOrientation = 0;
        this.mIsRotatable = true;
        this.mListeners = new HashMap<>();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mMain = (OnScreenButton) findViewById(R.id.main_button);
        this.mMain.setVisibility(0);
        this.mSub = (OnScreenButton) findViewById(R.id.sub_button);
        this.mSub.setVisibility(8);
        this.mBackground = findViewById(R.id.background);
        this.mContainer = findViewById(R.id.container);
    }

    private void setupBackgroundSingle() {
        adjustBackground(0, 0, 0, 17);
    }

    private void setupBackgroundDual() {
        adjustBackground(R.dimen.on_screen_button_background_dual_background_top_margin, R.dimen.on_screen_button_background_dual_container_top_margin, R.dimen.on_screen_button_background_dual_container_space, 49);
    }

    private void setupBackgroundPhotoAndSwitch() {
        adjustBackground(R.dimen.on_screen_button_photo_video_switch_background_top_margin, R.dimen.on_screen_button_photo_video_switch_container_top_margin, R.dimen.on_screen_button_photo_video_switch_container_space, 49);
    }

    private void adjustBackground(int backgroundTop, int containerTop, int containerButtonSpace, int containerGravity) {
        setBackgroundMarginTop(backgroundTop);
        setContainerMarginTop(containerTop);
        setBackgroundAndContainerGravity(containerGravity);
        setSubButtonMarginTop(containerButtonSpace);
        requestLayout();
    }

    private void setBackgroundMarginTop(int resId) {
        int topMargin = resId == 0 ? 0 : this.mBackground.getResources().getDimensionPixelSize(resId);
        ((ViewGroup.MarginLayoutParams) this.mBackground.getLayoutParams()).topMargin = topMargin;
        this.mBackground.requestLayout();
    }

    private void setContainerMarginTop(int resId) {
        int topMargin = resId == 0 ? 0 : this.mContainer.getResources().getDimensionPixelSize(resId);
        ((ViewGroup.MarginLayoutParams) this.mContainer.getLayoutParams()).topMargin = topMargin;
        this.mContainer.requestLayout();
    }

    private void setBackgroundAndContainerGravity(int gravity) {
        ((FrameLayout.LayoutParams) this.mBackground.getLayoutParams()).gravity = gravity;
        this.mBackground.requestLayout();
        ((FrameLayout.LayoutParams) this.mContainer.getLayoutParams()).gravity = gravity;
        this.mContainer.requestLayout();
    }

    private void setSubButtonMarginTop(int resId) {
        int topMargin = resId == 0 ? 0 : this.mContainer.getResources().getDimensionPixelSize(resId);
        ((ViewGroup.MarginLayoutParams) this.mSub.getLayoutParams()).topMargin = topMargin;
        this.mSub.requestLayout();
    }

    public void clearTouched() {
        this.mMain.clearTouched();
        this.mSub.clearTouched();
    }

    public boolean isTouched() {
        return this.mMain.isTouched() || this.mSub.isTouched();
    }

    public void setListener(ButtonType type, OnScreenButtonListener listener) {
        this.mListeners.put(type, listener);
    }

    public void restartAnimation() {
        restartAnimation(this.mMain.getDrawable());
        restartAnimation(this.mSub.getDrawable());
    }

    private void restartAnimation(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).start();
        }
    }

    public void stopAnimation() {
        stopAnimation(this.mMain.getDrawable());
        stopAnimation(this.mSub.getDrawable());
    }

    private void stopAnimation(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
    }

    public void setMain(ButtonType type) throws Resources.NotFoundException {
        this.mMain.set(type.mainButtonResource);
        this.mMain.setListener(this.mListeners.get(type));
        if (type == ButtonType.NONE) {
            this.mMain.setVisibility(4);
        } else {
            this.mMain.setVisibility(0);
        }
    }

    public void setMain(ButtonType type, int orientation, boolean isRotatable) throws Resources.NotFoundException {
        setMain(type);
        this.mMain.changeRotatability(orientation, isRotatable);
    }

    public void setSub(ButtonType type) throws Resources.NotFoundException {
        if (type == ButtonType.NONE) {
            setBackground(type.backgroundResource);
            setupBackgroundSingle();
            this.mSub.set(type.subButtonResource);
            this.mSub.setListener(this.mListeners.get(type));
            this.mSub.setVisibility(8);
            this.mSub.setOnClickListener(null);
            return;
        }
        if (type == ButtonType.HIDDEN) {
            setBackground(type.backgroundResource);
            setupBackgroundPhotoAndSwitch();
            this.mSub.setListener(this.mListeners.get(type));
            this.mSub.setVisibility(4);
            this.mSub.setOnClickListener(null);
            return;
        }
        if (type == ButtonType.PHOTO_TO_VIDEO || type == ButtonType.VIDEO_TO_PHOTO) {
            setBackground(type.backgroundResource);
            setupBackgroundPhotoAndSwitch();
            this.mSub.set(type.subButtonResource);
            this.mSub.setListener(this.mListeners.get(type));
            this.mSub.setVisibility(0);
            this.mSub.setOnClickListener(DUMMY_CLICK_LISTENER);
            return;
        }
        setBackground(type.backgroundResource);
        setupBackgroundDual();
        this.mSub.set(type.subButtonResource);
        this.mSub.setListener(this.mListeners.get(type));
        this.mSub.setVisibility(0);
        this.mSub.setOnClickListener(null);
    }

    public void setSub(ButtonType type, int orientation, boolean isRotatable) throws Resources.NotFoundException {
        setSub(type);
        this.mSub.changeRotatability(orientation, isRotatable);
    }

    public void setUiOrientation(int orientation) throws Resources.NotFoundException {
        this.mOrientation = orientation;
        this.mMain.setUiOrientation(orientation);
        this.mSub.setUiOrientation(orientation);
        updateBackground();
    }

    public void setBackground(OnScreenButton.Resource resource) {
        if (resource == null) {
            this.mBackgroundResource = EMPTY_RESOURCE;
        } else {
            this.mBackgroundResource = resource;
        }
        updateBackground();
    }

    private void updateBackground() {
        int res = this.mOrientation == 2 ? this.mBackgroundResource.landscape : this.mBackgroundResource.portrait;
        if (res != -1 && this.mBackground != null) {
            this.mBackground.setBackgroundResource(res);
        }
    }

    public void changeRotatability(int orientation, boolean isRotatable) {
        this.mIsRotatable = isRotatable;
        if (!isRotatable) {
            this.mStaticOrientation = orientation;
        }
    }
}