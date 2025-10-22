package com.sonyericsson.cameracommon.rotatableview;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;

/* loaded from: classes.dex */
public class RotatableDialog implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public static final String TAG = "RotatableDialog";
    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mHalfDiffBetweenDisplayWidthAndHeight;
    private View mScrollableView;
    private Window mWindow;
    private Rect mTempRect = new Rect();
    private int mOrientation = 2;
    private final int mAnimationsForLand = R.style.WindowAnimationDeviceDefaultDialogLandscape;
    private final int mAnimationsForPort = R.style.WindowAnimationDeviceDefaultDialogPortrait;

    public static class Builder extends AlertDialog.Builder {
        private MessagePopup.Cancelable mIsCancelable;
        private MessagePopup.Cancelable mIsCancelableOnTouchOutside;
        protected View mScrollableView;
        private int mSensorOrientation;

        public Builder(Context arg0) {
            super(arg0);
            this.mScrollableView = null;
        }

        public Builder setViewAsScrollable(View view) {
            this.mScrollableView = view;
            return this;
        }

        public Builder setAlertIcon() {
            super.setIcon(android.R.drawable.ic_dialog_alert);
            return this;
        }

        public Builder setOrientation(int sensorOrientation) {
            this.mSensorOrientation = sensorOrientation;
            return this;
        }

        public Builder setCancelable(MessagePopup.Cancelable isCancelable, MessagePopup.Cancelable isCancelableOnTouchOutside) {
            this.mIsCancelable = isCancelable;
            this.mIsCancelableOnTouchOutside = isCancelableOnTouchOutside;
            return this;
        }

        public RotatableDialog createRotatableDialog() {
            AlertDialog dialog = super.create();
            RotatableDialog rotatableDialog = new RotatableDialog(dialog);
            rotatableDialog.setViewAsScrollable(this.mScrollableView);
            if (this.mIsCancelable != MessagePopup.Cancelable.UseDefault) {
                rotatableDialog.setCancelable(this.mIsCancelable == MessagePopup.Cancelable.True);
            }
            if (this.mIsCancelableOnTouchOutside != MessagePopup.Cancelable.UseDefault) {
                rotatableDialog.setCanceledOnTouchOutside(this.mIsCancelableOnTouchOutside == MessagePopup.Cancelable.True);
            }
            rotatableDialog.setOrientation(this.mSensorOrientation);
            return rotatableDialog;
        }
    }

    protected RotatableDialog(AlertDialog dialog) {
        this.mDialog = dialog;
        this.mWindow = dialog.getWindow();
    }

    private void release() {
        ViewGroup decorView = (ViewGroup) this.mWindow.getDecorView();
        decorView.removeOnAttachStateChangeListener(this);
        decorView.setOnTouchListener(null);
        this.mDialog = null;
        this.mWindow = null;
        this.mScrollableView = null;
    }

    private void setWindowAnimations(int orientation) {
        if (orientation == 1) {
            this.mWindow.setWindowAnimations(this.mAnimationsForPort);
        } else {
            this.mWindow.setWindowAnimations(this.mAnimationsForLand);
        }
    }

    private void initialize() throws Resources.NotFoundException {
        ViewGroup decorView = (ViewGroup) this.mWindow.getDecorView();
        decorView.addOnAttachStateChangeListener(this);
        decorView.setOnTouchListener(this);
        setWindowAnimations(this.mOrientation);
        Rect displaySize = new Rect();
        this.mWindow.getWindowManager().getDefaultDisplay().getRectSize(displaySize);
        if (displaySize.width() > displaySize.height()) {
            this.mDisplayWidth = displaySize.width();
            this.mDisplayHeight = displaySize.height();
        } else {
            this.mDisplayWidth = displaySize.height();
            this.mDisplayHeight = displaySize.width();
        }
        this.mHalfDiffBetweenDisplayWidthAndHeight = (this.mDisplayWidth - this.mDisplayHeight) / 2;
        try {
            Resources res = this.mDialog.getContext().getResources();
            String major = res.getString(android.R.dimen.dialog_min_width_major);
            String minor = res.getString(android.R.dimen.dialog_min_width_minor);
            String major2 = major.replace("%", "");
            String minor2 = minor.replace("%", "");
            float minWidthMajor = Float.parseFloat(major2) / 100.0f;
            float minWidthMinor = Float.parseFloat(minor2) / 100.0f;
            this.mDialogWidthForLand = (int) (this.mDisplayWidth * minWidthMajor);
            this.mDialogWidthForPort = (int) (this.mDisplayHeight * minWidthMinor);
        } catch (Resources.NotFoundException e) {
            CameraLogger.e(TAG, "Fail to get width of dialog for each orientation.", e);
        } catch (NullPointerException e2) {
            CameraLogger.e(TAG, "Fail to get width of dialog for each orientation.", e2);
        } catch (NumberFormatException e3) {
            CameraLogger.e(TAG, "Fail to get width of dialog for each orientation.", e3);
        }
        attachScrollableView();
    }

    private void attachScrollableView() {
        if (mScrollableView == null) {
            return;
        }
        final View messageView = mWindow.findViewById(android.R.id.message);
        if (messageView == null) {
            return;
        }

        // Create a container and mirror the message view's padding.
        final FrameLayout scrollableViewContainer = new FrameLayout(mWindow.getContext());
        scrollableViewContainer.setPadding(
                messageView.getPaddingLeft(),
                messageView.getPaddingTop(),
                messageView.getPaddingRight(),
                messageView.getPaddingBottom()
        );

        // Add our scrollable view with the same width/height as the original message.
        final ViewGroup.LayoutParams lp = messageView.getLayoutParams();
        scrollableViewContainer.addView(mScrollableView, lp.width, lp.height);

        // Figure out which view to remove from the ScrollView.
        final ViewParent parent = messageView.getParent();
        final ScrollView scrollView;
        final View removeTargetView;
        if (parent instanceof LinearLayout) {
            // Typical AlertDialog layout: ScrollView -> LinearLayout -> message TextView
            scrollView = (ScrollView) ((View) parent).getParent();
            removeTargetView = (View) parent;
        } else {
            // Fallback: message is a direct child of ScrollView
            scrollView = (ScrollView) parent;
            removeTargetView = messageView;
        }

        scrollView.removeView(removeTargetView);
        scrollView.addView(scrollableViewContainer,
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private void updateLayout(int displayOrientation) {
        if (isShowing()) {
            setWindowAnimations(displayOrientation);
            ViewGroup decorView = (ViewGroup) this.mWindow.getDecorView();
            WindowManager.LayoutParams decorParams = (WindowManager.LayoutParams) decorView.getLayoutParams();
            View panelView = decorView.getChildAt(0);
            FrameLayout.LayoutParams panelParams = (FrameLayout.LayoutParams) panelView.getLayoutParams();
            panelParams.height = -2;
            panelParams.gravity = 17;
            LayoutOrientationResolver.LayoutOrientationType layoutOrientation = LayoutOrientationResolver.getInstance().getOrientation();
            if (layoutOrientation == LayoutOrientationResolver.LayoutOrientationType.PORTRAIT) {
                decorParams.height = this.mDisplayWidth;
                if (displayOrientation == 1) {
                    panelView.setRotation(0.0f);
                    panelView.setTranslationX(0.0f);
                    panelParams.width = this.mDialogWidthForPort;
                    decorView.setPadding(0, 0, 0, 0);
                    decorParams.width = this.mDisplayHeight;
                } else {
                    panelView.setRotation(90.0f);
                    panelView.setTranslationX(-this.mHalfDiffBetweenDisplayWidthAndHeight);
                    panelParams.width = this.mDialogWidthForLand;
                    int padding = this.mHalfDiffBetweenDisplayWidthAndHeight;
                    decorView.setPadding(0, padding, 0, padding);
                    decorParams.width = this.mDisplayWidth;
                }
            } else {
                decorParams.width = this.mDisplayWidth;
                if (displayOrientation == 1) {
                    panelView.setRotation(270.0f);
                    panelView.setTranslationY(-this.mHalfDiffBetweenDisplayWidthAndHeight);
                    panelParams.width = this.mDialogWidthForPort;
                    decorParams.height = this.mDisplayWidth;
                } else {
                    panelView.setRotation(0.0f);
                    panelView.setTranslationY(0.0f);
                    panelParams.width = this.mDialogWidthForLand;
                    decorParams.height = this.mDisplayHeight;
                }
            }
            this.mWindow.getWindowManager().updateViewLayout(decorView, decorParams);
            panelView.setLayoutParams(panelParams);
        }
    }

    private int calculateOutValue(int value, int minValue, int maxValue) {
        if (value < minValue) {
            int outValue = value - minValue;
            return outValue;
        }
        if (maxValue < value) {
            int outValue2 = value - maxValue;
            return outValue2;
        }
        return 0;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View v) {
        ViewGroup decorView = (ViewGroup) this.mWindow.getDecorView();
        View contentView = decorView.findViewById(android.R.id.content);
        contentView.setBackground(decorView.getBackground());
        decorView.setBackground(null);
        updateLayout(this.mOrientation);
        this.mDialog.getWindow().clearFlags(131072);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View v) {
        release();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        ViewGroup decorView = (ViewGroup) v;
        View panelView = decorView.getChildAt(0);
        panelView.getGlobalVisibleRect(this.mTempRect);
        int outX = calculateOutValue((int) event.getRawX(), this.mTempRect.left, this.mTempRect.right);
        int outY = calculateOutValue((int) event.getRawY(), this.mTempRect.top, this.mTempRect.bottom);
        if (outX != 0 || outY != 0) {
            if (outX > 0) {
                outX += decorView.getWidth();
            }
            if (outY > 0) {
                outY += decorView.getHeight();
            }
            MotionEvent newEvent = MotionEvent.obtain(event);
            newEvent.setLocation(outX, outY);
            if (isShowing()) {
                this.mDialog.onTouchEvent(newEvent);
            }
            newEvent.recycle();
        }
        return false;
    }

    public void setOrientation(int orientation) {
        this.mOrientation = orientation;
        updateLayout(orientation);
    }

    public void setViewAsScrollable(View view) {
        this.mScrollableView = view;
        if (this.mScrollableView != null) {
            this.mDialog.setMessage("");
        }
    }

    public void show() {
        if (this.mDialog != null) {
            this.mDialog.show();
            initialize();
        }
    }

    public void hide() {
        if (this.mDialog != null) {
            this.mDialog.hide();
        }
    }

    public void dismiss() {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
        }
    }

    public void cancel() {
        if (this.mDialog != null) {
            this.mDialog.cancel();
        }
    }

    public void setCancelable(boolean cancel) {
        if (this.mDialog != null) {
            this.mDialog.setCancelable(cancel);
        }
    }

    public void setCanceledOnTouchOutside(boolean cancel) {
        if (this.mDialog != null) {
            this.mDialog.setCanceledOnTouchOutside(cancel);
        }
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener listener) {
        if (this.mDialog != null) {
            this.mDialog.setOnKeyListener(listener);
        }
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener listener) {
        if (this.mDialog != null) {
            this.mDialog.setOnCancelListener(listener);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener listener) {
        if (this.mDialog != null) {
            this.mDialog.setOnDismissListener(listener);
        }
    }

    public boolean isShowing() {
        if (this.mDialog != null) {
            return this.mDialog.isShowing();
        }
        return false;
    }

    public void setPositiveButtonEnabled(boolean enabled) {
        Button button;
        if (this.mDialog != null && (button = this.mDialog.getButton(-1)) != null) {
            button.setEnabled(enabled);
        }
    }

    public boolean isShown(DialogInterface dialog) {
        return this.mDialog == dialog;
    }
}