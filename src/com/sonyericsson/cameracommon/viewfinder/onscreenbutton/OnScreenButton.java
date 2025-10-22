package com.sonyericsson.cameracommon.viewfinder.onscreenbutton;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

/* loaded from: classes.dex */
@SuppressLint("AppCompatCustomView")
public class OnScreenButton extends ImageView {
    public static final OnScreenButtonListener EMPTY_LISTENER = new OnScreenButtonListener() { // from class: com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton.1
        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onDown(OnScreenButton sender, MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onUp(OnScreenButton sender, MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onMove(OnScreenButton sender, MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onCancel(OnScreenButton sender, MotionEvent event) {
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener
        public void onDispatchDraw(OnScreenButton sender, Canvas canvas) {
        }
    };
    public static final Resource EMPTY_RESOURCE = new Resource(-1, -1, -1);
    public static final String TAG = "OnScreenButton";
    private boolean mIsRotatable;
    private boolean mIsTouched;
    private OnScreenButtonListener mListener;
    private int mOrientation;
    private Resource mResource;
    private int mStaticOrientation;

    public static class Resource {
        public static final int NONE = -1;
        final int description;
        final int landscape;
        final int portrait;

        public Resource(int landscape, int portrait, int description) {
            this.landscape = landscape;
            this.portrait = portrait;
            this.description = description;
        }
    }

    public OnScreenButton(Context context) {
        super(context);
        this.mStaticOrientation = 0;
        this.mIsRotatable = true;
        this.mOrientation = 2;
        this.mResource = EMPTY_RESOURCE;
        this.mListener = EMPTY_LISTENER;
        this.mIsTouched = false;
        setFocusable(false);
        setFocusableInTouchMode(false);
        setOnClickListener(null);
    }

    public OnScreenButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mStaticOrientation = 0;
        this.mIsRotatable = true;
        this.mOrientation = 2;
        this.mResource = EMPTY_RESOURCE;
        this.mListener = EMPTY_LISTENER;
        this.mIsTouched = false;
        setFocusable(false);
        setFocusableInTouchMode(false);
    }

    public void set(Resource resource) throws Resources.NotFoundException {
        if (resource == null) {
            this.mResource = EMPTY_RESOURCE;
        } else {
            this.mResource = resource;
        }
        update();
    }

    public void setListener(OnScreenButtonListener listener) {
        if (listener == null) {
            this.mListener = EMPTY_LISTENER;
        } else {
            this.mListener = listener;
        }
    }

    public void setUiOrientation(int orientation) throws Resources.NotFoundException {
        if (this.mIsRotatable) {
            this.mOrientation = orientation;
        } else {
            this.mOrientation = this.mStaticOrientation;
        }
        update();
    }

    public void clearTouched() {
        this.mIsTouched = false;
    }

    public boolean isTouched() {
        return this.mIsTouched;
    }

    private void update() throws Resources.NotFoundException {
        int res = this.mOrientation == 2 ? this.mResource.landscape : this.mResource.portrait;
        if (res == -1) {
            setImageDrawable(null);
        } else {
            setImageResource(res);
        }
        if (this.mResource.description != -1) {
            String description = getContext().getResources().getString(this.mResource.description);
            setContentDescription(description);
        } else {
            setContentDescription("");
        }
    }

    /* Some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        int action = event.getAction();
        switch (action) {
            case 0:
                setPressed(true);
                this.mIsTouched = true;
                this.mListener.onDown(this, event);
                return true;
            case 1:
                if (contains(event) && this.mIsTouched && hasWindowFocus()) {
                    setPressed(false);
                    this.mIsTouched = true;
                    this.mListener.onUp(this, event);
                } else {
                    setPressed(false);
                    this.mIsTouched = false;
                    event.setAction(3);
                    this.mListener.onCancel(this, event);
                }
                return true;
            case 2:
                if (contains(event)) {
                    this.mListener.onMove(this, event);
                } else {
                    setPressed(false);
                    this.mIsTouched = false;
                    event.setAction(3);
                    this.mListener.onCancel(this, event);
                }
                return true;
            case 3:
                setPressed(false);
                this.mIsTouched = false;
                this.mListener.onCancel(this, event);
                return true;
            default:
                return true;
        }
    }

    private boolean contains(MotionEvent event) {
        Rect rect = new Rect();
        if (getGlobalVisibleRect(rect)) {
            return rect.contains((int) event.getRawX(), (int) event.getRawY());
        }
        return false;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.mListener.onDispatchDraw(this, canvas);
    }

    public void changeRotatability(int orientation, boolean isRotatable) throws Resources.NotFoundException {
        this.mIsRotatable = isRotatable;
        if (!isRotatable) {
            this.mStaticOrientation = orientation;
        }
        setUiOrientation(orientation);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }
}