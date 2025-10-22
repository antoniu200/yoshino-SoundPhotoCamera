package com.sonyericsson.cameracommon.messagepopup;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.activity.TerminateListener;
import com.sonyericsson.cameracommon.launcher.ApplicationLauncher;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagSettingListener;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;
import com.sonyericsson.cameracommon.utility.BrandConfig;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ParamSharedPrefWrapper;
import com.sonyericsson.cameracommon.utility.RegionConfig;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;

/* loaded from: classes.dex */
public class MessagePopup implements BaseActivity.LayoutOrientationChangedListener {
    private static final float DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP = 14.0f;
    public static final int NO_RESOURCE_ID = -1;
    public static final String TAG = "MessagePopup";
    private static final int TERMINATE_WAIT_TIME = 4000;
    private Activity mActivity;
    private RotatableDialog mOkAndCustomViewPopup;
    private RotatableDialog mOkAndCustomViewPopupContinuouslyUsed;
    private StorageController.StorageDialogStateListener mStorageDialogStateListener;
    private AlertDialog mStoreProgressDialog;
    private AlertDialog mStoreProgressDialogMultiAngle;
    private TerminateListener mTerminateListener;
    private int mSensorOrientation = 2;
    private RotatableToast mRotatableToast = null;
    private RotatableDialog mStorageErrorPopup = null;
    private int mStorageErrorPopupTextId = -1;
    private boolean mStorageErrorPopupIsError = false;
    private RotatableDialog mDeviceErrorPopup = null;
    private RotatableDialog mLowBatteryDialog = null;
    private RotatableDialog mOkAndCancelPopup = null;
    private RotatableDialog mOkAndCancelCustomViewPopup = null;
    private RotatableDialog mShareSelection = null;
    private RotatableDialog mDialogOk = null;
    private RotatableDialog mDialogOkMandatory = null;
    private RotatableDialog mDialogThermal = null;
    private RotatableDialog mDisclaimerDialog = null;
    private RotatableDialog mStorageExplanatoryPopup = null;
    private MessagePopupStateListener mStateListener = null;
    private final DialogInterface.OnKeyListener mKeyEventKiller = new KeyEventKiller();
    private final Handler mMessageHandler = new Handler();
    private boolean mIsResumed = false;

    public enum Cancelable {
        True,
        False,
        UseDefault
    }

    public MessagePopup(Activity act, TerminateListener terminateApplication) {
        this.mActivity = act;
        this.mTerminateListener = terminateApplication;
    }

    public void setMessagePopupStateListener(MessagePopupStateListener listener) {
        this.mStateListener = listener;
    }

    public void setStorageDialogStateListener(StorageController.StorageDialogStateListener listener) {
        this.mStorageDialogStateListener = listener;
    }

    public void onResume() {
        this.mIsResumed = true;
    }

    public void onPause() {
        this.mIsResumed = false;
    }

    public void release() {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.setOnDismissListener(null);
            this.mStorageErrorPopup.dismiss();
            this.mStorageErrorPopup = null;
        }
        if (this.mDeviceErrorPopup != null) {
            this.mDeviceErrorPopup.setOnDismissListener(null);
            this.mDeviceErrorPopup.dismiss();
            this.mDeviceErrorPopup = null;
        }
        if (this.mOkAndCustomViewPopup != null) {
            this.mOkAndCustomViewPopup.dismiss();
            this.mOkAndCustomViewPopup = null;
        }
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.dismiss();
            this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.dismiss();
            this.mOkAndCancelPopup = null;
        }
        if (this.mShareSelection != null) {
            this.mShareSelection.dismiss();
            this.mShareSelection = null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.setOnDismissListener(null);
            this.mOkAndCancelCustomViewPopup.dismiss();
            this.mOkAndCancelCustomViewPopup = null;
        }
        if (this.mDialogOk != null) {
            this.mDialogOk.dismiss();
            this.mDialogOk = null;
        }
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.dismiss();
            this.mDialogOkMandatory = null;
        }
        if (this.mDialogThermal != null) {
            this.mDialogThermal.dismiss();
            this.mDialogThermal = null;
        }
        if (this.mLowBatteryDialog != null) {
            this.mLowBatteryDialog.dismiss();
            this.mLowBatteryDialog = null;
        }
        if (this.mStorageExplanatoryPopup != null) {
            this.mStorageExplanatoryPopup.dismiss();
            this.mStorageExplanatoryPopup = null;
        }
        this.mMessageHandler.removeCallbacksAndMessages(null);
    }

    public void releaseContext() {
        this.mActivity = null;
        release();
    }

    public void setSensorOrientation(int orientation) {
        this.mSensorOrientation = orientation;
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.setOrientation(orientation);
        }
        if (this.mOkAndCustomViewPopup != null) {
            this.mOkAndCustomViewPopup.setOrientation(orientation);
        }
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.setOrientation(orientation);
        }
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.setOrientation(orientation);
        }
        if (this.mDeviceErrorPopup != null) {
            this.mDeviceErrorPopup.setOrientation(orientation);
        }
        if (this.mShareSelection != null) {
            this.mShareSelection.setOrientation(orientation);
        }
        if (this.mRotatableToast != null) {
            this.mRotatableToast.setSensorOrientation(orientation);
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.setOrientation(orientation);
        }
        if (this.mDialogOk != null) {
            this.mDialogOk.setOrientation(orientation);
        }
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.setOrientation(orientation);
        }
        if (this.mDialogThermal != null) {
            this.mDialogThermal.setOrientation(orientation);
        }
        if (this.mLowBatteryDialog != null) {
            this.mLowBatteryDialog.setOrientation(orientation);
        }
        if (this.mStorageExplanatoryPopup != null) {
            this.mStorageExplanatoryPopup.setOrientation(orientation);
        }
    }

    public RotatableDialog.Builder createBuilder() {
        if (this.mActivity == null || this.mActivity.isFinishing()) {
            return null;
        }
        RotatableDialog.Builder builder = new RotatableDialog.Builder(this.mActivity);
        builder.setOnKeyListener(this.mKeyEventKiller);
        return builder;
    }

    private RotatableDialog show(RotatableDialog.Builder builder) {
        builder.setOrientation(this.mSensorOrientation);
        RotatableDialog dialog = builder.createRotatableDialog();
        dialog.show();
        return dialog;
    }

    public RotatableDialog showErrorUncancelable(int msg, int title, boolean needAlertIcon) {
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        if (msg != -1) {
            builder.setMessage(msg);
        }
        builder.setOnCancelListener(new ErrorExitListener());
        builder.setCancelable(Cancelable.UseDefault, Cancelable.False);
        return show(builder);
    }

    private class OnClickWrapOkCancelListener implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkCancelListener(DialogInterface.OnClickListener listener) {
            this.mOnClickListener = null;
            this.mOnClickListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            MessagePopup.this.mOkAndCancelPopup = null;
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
        }
    }

    private class OnClickWrapOkAndCheckableListener implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkAndCheckableListener(DialogInterface.OnClickListener listener) {
            this.mOnClickListener = null;
            this.mOnClickListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
            MessagePopup.this.mOkAndCustomViewPopup = null;
        }
    }

    private class OnClickWrapOkAndCheckableContinuouslyUsedListener implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkAndCheckableContinuouslyUsedListener(DialogInterface.OnClickListener listener) {
            this.mOnClickListener = null;
            this.mOnClickListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
            MessagePopup.this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
    }

    private class OnClickWrapSelectionShareListener implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapSelectionShareListener(DialogInterface.OnClickListener listener) {
            this.mOnClickListener = null;
            this.mOnClickListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
            MessagePopup.this.mShareSelection = null;
        }
    }

    private class OnClickWrapOkCancelCustomViewListener implements DialogInterface.OnClickListener {
        private DialogInterface.OnClickListener mOnClickListener;

        public OnClickWrapOkCancelCustomViewListener(DialogInterface.OnClickListener listener) {
            this.mOnClickListener = null;
            this.mOnClickListener = listener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            MessagePopup.this.mOkAndCancelCustomViewPopup = null;
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
        }
    }

    private class OnCancelWrapOkCancelListener implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelWrapOkCancelListener(DialogInterface.OnCancelListener listener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = listener;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialog);
            }
            MessagePopup.this.mOkAndCancelPopup = null;
        }
    }

    private class OnCancelOkAndCheckableListener implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelOkAndCheckableListener(DialogInterface.OnCancelListener listener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = listener;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialog);
            }
            MessagePopup.this.mOkAndCustomViewPopup = null;
        }
    }

    private class OnCancelOkAndCheckableContinuouslyUsedListener implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelOkAndCheckableContinuouslyUsedListener(DialogInterface.OnCancelListener listener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = listener;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialog);
            }
            MessagePopup.this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
    }

    private class OnCancelWrapSelectionShareListener implements DialogInterface.OnCancelListener {
        private DialogInterface.OnCancelListener mOnCancelListener;

        public OnCancelWrapSelectionShareListener(DialogInterface.OnCancelListener listener) {
            this.mOnCancelListener = null;
            this.mOnCancelListener = listener;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            if (MessagePopup.this.mStateListener != null) {
                MessagePopup.this.mStateListener.msgPopupCanceled();
            }
            if (this.mOnCancelListener != null) {
                this.mOnCancelListener.onCancel(dialog);
            }
            MessagePopup.this.mShareSelection = null;
        }
    }

    public class ErrorExitListener implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
        public ErrorExitListener() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            MessagePopup.this.mDeviceErrorPopup = null;
            if (MessagePopup.this.mActivity != null && MessagePopup.this.mIsResumed) {
                MessagePopup.this.mActivity.finish();
            }
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            onCancel(dialog);
        }
    }

    private class OnDismissWrapErrorExitListener implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDismissListener;

        public OnDismissWrapErrorExitListener(DialogInterface.OnDismissListener dismissListener) {
            this.mDismissListener = null;
            this.mDismissListener = dismissListener;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            if (this.mDismissListener != null) {
                this.mDismissListener.onDismiss(dialog);
            }
            MessagePopup.this.mDeviceErrorPopup = null;
        }
    }

    public RotatableDialog showOkAndCancelStorage(int msg, int title, boolean needAlertIcon, int ok, int can, DialogInterface.OnClickListener okClickListener, DialogInterface.OnClickListener cancelClickListener, DialogInterface.OnCancelListener cancelListener, DialogInterface.OnDismissListener dismissListener) {
        this.mOkAndCancelPopup = createDialogOkAndCancel(msg, title, needAlertIcon, ok, can, okClickListener, cancelClickListener, cancelListener);
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.setCanceledOnTouchOutside(false);
            this.mOkAndCancelPopup.setOnDismissListener(new DialogDismissListener(dismissListener));
            notifyOpenDialog();
        }
        return this.mOkAndCancelPopup;
    }

    public RotatableDialog showOkAndCancel(int msg, int title, boolean needAlertIcon, int ok, int can, DialogInterface.OnClickListener okClickListener, DialogInterface.OnClickListener cancelClickListener, DialogInterface.OnCancelListener cancelListener) {
        this.mOkAndCancelPopup = createDialogOkAndCancel(msg, title, needAlertIcon, ok, can, okClickListener, cancelClickListener, cancelListener);
        return this.mOkAndCancelPopup;
    }

    private RotatableDialog createDialogOkAndCancel(int msg, int title, boolean needAlertIcon, int ok, int can, DialogInterface.OnClickListener okClickListener, DialogInterface.OnClickListener cancelClickListener, DialogInterface.OnCancelListener cancelListener) {
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.dismiss();
            this.mOkAndCancelPopup = null;
        }
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        if (title != -1) {
            builder.setTitle(title);
        }
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        if (msg != -1) {
            builder.setMessage(msg);
        }
        builder.setPositiveButton(ok, new OnClickWrapOkCancelListener(okClickListener));
        builder.setNegativeButton(can, new OnClickWrapOkCancelListener(cancelClickListener));
        builder.setOnCancelListener(new OnCancelWrapOkCancelListener(cancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        this.mOkAndCancelPopup = show(builder);
        return this.mOkAndCancelPopup;
    }

    public RotatableDialog showOkAndCancelCustomView(View customView, int title, boolean needAlertIcon, int ok, int can, DialogInterface.OnClickListener okClickListener, DialogInterface.OnClickListener cancelClickListener, DialogInterface.OnCancelListener cancelListener) {
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        builder.setViewAsScrollable(customView);
        builder.setPositiveButton(ok, new OnClickWrapOkCancelCustomViewListener(okClickListener));
        builder.setNegativeButton(can, new OnClickWrapOkCancelCustomViewListener(cancelClickListener));
        builder.setOnCancelListener(new OnCancelOkAndCheckableListener(cancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.False);
        this.mOkAndCancelCustomViewPopup = show(builder);
        return this.mOkAndCancelCustomViewPopup;
    }

    public RotatableDialog showOkAndCustomView(View customView, int title, boolean needAlertIcon, int ok, DialogInterface.OnClickListener okClickListener, DialogInterface.OnCancelListener cancelListener) {
        if (this.mOkAndCustomViewPopup == null) {
            RotatableDialog.Builder builder = createBuilder();
            if (builder == null) {
                return null;
            }
            builder.setTitle(title);
            if (needAlertIcon) {
                builder.setAlertIcon();
            }
            builder.setViewAsScrollable(customView);
            builder.setPositiveButton(ok, new OnClickWrapOkAndCheckableListener(okClickListener));
            builder.setOnCancelListener(new OnCancelOkAndCheckableListener(cancelListener));
            builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
            this.mOkAndCustomViewPopup = show(builder);
        }
        return this.mOkAndCustomViewPopup;
    }

    public RotatableDialog showOkAndCustomViewContinuouslyUsed(View customView, int title, boolean needAlertIcon, int ok, DialogInterface.OnClickListener okClickListener, DialogInterface.OnCancelListener cancelListener) {
        if (this.mOkAndCustomViewPopupContinuouslyUsed != null) {
            this.mOkAndCustomViewPopupContinuouslyUsed.dismiss();
            this.mOkAndCustomViewPopupContinuouslyUsed = null;
        }
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        builder.setViewAsScrollable(customView);
        builder.setPositiveButton(ok, new OnClickWrapOkAndCheckableContinuouslyUsedListener(okClickListener));
        builder.setOnCancelListener(new OnCancelOkAndCheckableContinuouslyUsedListener(cancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        this.mOkAndCustomViewPopupContinuouslyUsed = show(builder);
        return this.mOkAndCustomViewPopupContinuouslyUsed;
    }

    public RotatableDialog showMemoryError(int msg, int title, boolean isError) {
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mStorageErrorPopup != null) {
            if (this.mStorageErrorPopupTextId == msg) {
                return this.mStorageErrorPopup;
            }
            cancelMemoryErrorPopup();
        }
        int ok = R.string.cam_strings_ok_txt;
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (msg != -1) {
            builder.setMessage(msg);
        }
        builder.setPositiveButton(ok, new OnClickMemoryErrorOkListener());
        builder.setOnCancelListener(new OnCancelMemoryErrorOkListener());
        builder.setCancelable(Cancelable.True, Cancelable.False);
        this.mStorageErrorPopup = show(builder);
        notifyOpenDialog();
        this.mStorageErrorPopup.setOnDismissListener(new DialogDismissListener(null));
        this.mStorageErrorPopupTextId = msg;
        this.mStorageErrorPopupIsError = isError;
        return this.mStorageErrorPopup;
    }

    public void showMemoryErrorAndAbort(int msg, int title) {
        DialogInterface.OnDismissListener onDismissListener = new LazyAbortListener();
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(title);
            builder.setMessage(msg);
            builder.setOnDismissListener(onDismissListener);
            showDeviceError(builder);
        }
    }

    public void cancelMemoryErrorPopup(boolean onlyError) {
        if (this.mStorageErrorPopup != null) {
            if (!onlyError || this.mStorageErrorPopupIsError) {
                cancelMemoryErrorPopup();
            }
        }
    }

    public void cancelMemoryErrorPopup(DialogInterface dialog) {
        if ((this.mStorageErrorPopup != null && this.mStorageErrorPopup.isShown(dialog)) || (this.mOkAndCancelPopup != null && this.mOkAndCancelPopup.isShown(dialog))) {
            cancelMemoryErrorPopup();
        }
    }

    private void cancelMemoryErrorPopup() {
        if (this.mStorageErrorPopup != null) {
            this.mStorageErrorPopup.cancel();
        }
        if (this.mOkAndCancelPopup != null) {
            this.mOkAndCancelPopup.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCancelMemoryErrorPopup(DialogInterface dialog) {
        if (this.mStorageErrorPopup != null && (!this.mStorageErrorPopup.isShowing() || this.mStorageErrorPopup.isShown(dialog))) {
            this.mStorageErrorPopup = null;
            this.mStorageErrorPopupIsError = false;
            this.mStorageErrorPopupTextId = -1;
        }
        if (this.mOkAndCancelPopup != null && (!this.mOkAndCancelPopup.isShowing() || this.mOkAndCancelPopup.isShown(dialog))) {
            this.mOkAndCancelPopup = null;
        }
        notifyCloseDialog();
    }

    protected class DialogDismissListener implements DialogInterface.OnDismissListener {
        private DialogInterface.OnDismissListener mDelegateOnDismissListener;

        public DialogDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.mDelegateOnDismissListener = onDismissListener;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            if (this.mDelegateOnDismissListener != null) {
                this.mDelegateOnDismissListener.onDismiss(dialog);
            }
            MessagePopup.this.onCancelMemoryErrorPopup(dialog);
        }
    }

    public boolean isMemoryErrorPopupOpened() {
        return (this.mStorageErrorPopup == null && this.mOkAndCancelPopup == null) ? false : true;
    }

    public boolean isMemoryErrorPopupOpened(DialogInterface dialog) {
        if (this.mStorageErrorPopup == null || !this.mStorageErrorPopup.isShown(dialog)) {
            return this.mOkAndCancelPopup != null && this.mOkAndCancelPopup.isShown(dialog);
        }
        return true;
    }

    public static class OnClickMemoryErrorOkListener implements DialogInterface.OnClickListener {
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
        }
    }

    public static class OnCancelMemoryErrorOkListener implements DialogInterface.OnCancelListener {
        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
        }
    }

    private RotatableDialog showDeviceError(RotatableDialog.Builder builder) {
        if (this.mStorageErrorPopup != null) {
            cancelMemoryErrorPopup();
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        if (this.mDeviceErrorPopup == null) {
            ErrorExitListener listener = new ErrorExitListener();
            builder.setOnCancelListener(listener);
            builder.setOnDismissListener(listener);
            builder.setCancelable(Cancelable.True, Cancelable.False);
            this.mDeviceErrorPopup = show(builder);
        }
        return this.mDeviceErrorPopup;
    }

    public RotatableDialog showThermalCritical() {
        DialogInterface.OnDismissListener onDismissListener = new LazyAbortListener();
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(R.string.cam_strings_dialog_high_temp_title_txt);
        builder.setMessage(getThermalCriticalString());
        builder.setPositiveButton(R.string.cam_strings_ok_txt, (DialogInterface.OnClickListener) null);
        builder.setOnDismissListener(onDismissListener);
        builder.setCancelable(Cancelable.True, Cancelable.False);
        return showDeviceError(builder);
    }

    private int getThermalCriticalString() {
        return BrandConfig.isVerizonBrand() ? R.string.cam_strings_error_high_temp_shutting_down_vzw_txt : R.string.cam_strings_error_high_temp_shutting_down_txt;
    }

    public RotatableDialog showBclMessage(boolean isRecording) {
        DialogInterface.OnDismissListener onDismissListener = new LazyAbortListener();
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        if (this.mLowBatteryDialog != null) {
            this.mLowBatteryDialog.dismiss();
            this.mLowBatteryDialog = null;
        }
        builder.setTitle(R.string.cam_strings_dialog_high_temp_title_txt);
        if (isRecording) {
            builder.setMessage(R.string.cam_strings_dialog_battery_level_low_recording_txt);
        } else {
            builder.setMessage(R.string.cam_strings_dialog_battery_level_low_using_txt);
        }
        builder.setPositiveButton(R.string.cam_strings_ok_txt, (DialogInterface.OnClickListener) null);
        builder.setOnDismissListener(onDismissListener);
        builder.setCancelable(Cancelable.True, Cancelable.False);
        return showDeviceError(builder);
    }

    private class LowBatteryDialogCloseListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
        private final Activity mActivity;
        private final Runnable mTask;

        public LowBatteryDialogCloseListener(Activity activity, Runnable task) {
            this.mTask = task;
            this.mActivity = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int arg1) {
            this.mActivity.runOnUiThread(this.mTask);
            MessagePopup.this.mLowBatteryDialog = null;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface arg0) {
            MessagePopup.this.mLowBatteryDialog = null;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface arg0) {
            MessagePopup.this.mLowBatteryDialog = null;
        }
    }

    private static class CheckBoxListener implements CompoundButton.OnCheckedChangeListener, Runnable {
        private boolean mIsItemChecked = false;
        private final ParamSharedPrefWrapper mSharedPrefs;
        private final String mSharedPrefsKey;

        public CheckBoxListener(ParamSharedPrefWrapper shardPrefs, String sharedPrefsKey) {
            this.mSharedPrefs = shardPrefs;
            this.mSharedPrefsKey = sharedPrefsKey;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            this.mIsItemChecked = isChecked;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mSharedPrefs.setParamToSP(this.mSharedPrefsKey, this.mIsItemChecked);
        }
    }

    public void showLowBatteryDialog(Activity activity, ParamSharedPrefWrapper sharedPrefs, String sharedPrefsKey) {
        LayoutInflater inflater;
        if (this.mLowBatteryDialog == null && activity != null && (inflater = activity.getLayoutInflater()) != null) {
            View content = inflater.inflate(R.layout.dialog_low_battery, (ViewGroup) null);
            CheckBoxListener checkBoxListener = new CheckBoxListener(sharedPrefs, sharedPrefsKey);
            CheckBox checkBox = (CheckBox) content.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(checkBoxListener);
            checkBox.setChecked(true);
            RotatableDialog.Builder builder = createBuilder();
            if (builder != null) {
                builder.setTitle(R.string.cam_strings_dialog_high_temp_title_txt);
                builder.setViewAsScrollable(content);
                LowBatteryDialogCloseListener closeListener = new LowBatteryDialogCloseListener(activity, checkBoxListener);
                builder.setPositiveButton(R.string.cam_strings_ok_txt, new OnClickWrapOkAndCheckableListener(closeListener));
                builder.setOnCancelListener(new OnCancelOkAndCheckableListener(closeListener));
                builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
                this.mLowBatteryDialog = show(builder);
                this.mLowBatteryDialog.setOnDismissListener(closeListener);
            }
        }
    }

    public void showThermalCriticalAndAbort() {
        showThermalCritical();
        lazyAbort();
    }

    public RotatableDialog showRecordingSizeLimitError() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
        builder.setMessage(R.string.cam_strings_error_mms_rec_size_limit_txt);
        return showDeviceError(builder);
    }

    public RotatableDialog showErrorOkExit(int title, boolean needAlertIcon, int msg, int ok, DialogInterface.OnClickListener okClickListener, DialogInterface.OnDismissListener dismissListener, DialogInterface.OnKeyListener keyListener) {
        RotatableDialog dialog = showErrorOkAndCancelExit(title, needAlertIcon, msg, ok, okClickListener, -1, null, dismissListener, keyListener);
        return dialog;
    }

    public RotatableDialog showErrorOkAndCancelExit(int title, boolean needAlertIcon, int msg, int ok, DialogInterface.OnClickListener okClickListener, int can, DialogInterface.OnClickListener canClickListener, DialogInterface.OnDismissListener dismissListener, DialogInterface.OnKeyListener keyListener) {
        if (this.mOkAndCancelPopup == null) {
            OnDismissWrapErrorExitListener listener = new OnDismissWrapErrorExitListener(dismissListener);
            RotatableDialog.Builder builder = createBuilder();
            if (builder == null) {
                return null;
            }
            if (title != -1) {
                builder.setTitle(title);
            }
            if (needAlertIcon) {
                builder.setAlertIcon();
            }
            if (msg != -1) {
                builder.setMessage(msg);
            }
            builder.setPositiveButton(ok, okClickListener);
            if (can != -1) {
                builder.setNegativeButton(can, canClickListener);
            }
            builder.setOnDismissListener(listener);
            builder.setCancelable(Cancelable.True, Cancelable.False);
            builder.setOnKeyListener(keyListener);
            this.mOkAndCancelPopup = show(builder);
        }
        return this.mOkAndCancelPopup;
    }

    public RotatableDialog showShareSelection(DialogInterface.OnClickListener selectListener, DialogInterface.OnCancelListener cancelListener, ListAdapter listAdapter) {
        this.mShareSelection = showShareSelection(R.string.cam_strings_file_share_title_txt, selectListener, cancelListener, listAdapter);
        return this.mShareSelection;
    }

    public RotatableDialog showShareSelection(int titleResource, DialogInterface.OnClickListener selectListener, DialogInterface.OnCancelListener cancelListener, ListAdapter listAdapter) {
        if (this.mShareSelection != null) {
            this.mShareSelection.dismiss();
            this.mShareSelection = null;
        }
        RotatableDialog.Builder builder = new RotatableDialog.Builder(this.mActivity);
        builder.setTitle(titleResource);
        builder.setAdapter(listAdapter, new OnClickWrapSelectionShareListener(selectListener));
        builder.setOnCancelListener(new OnCancelWrapSelectionShareListener(cancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        builder.setOnKeyListener(new OnKeyWrapSelectionShareListener());
        this.mShareSelection = show(builder);
        return this.mShareSelection;
    }

    public void showZoomHelpMessage(boolean zoomSupported) {
        int resId;
        if (this.mActivity != null) {
            if (zoomSupported) {
                resId = R.string.cam_strings_zoom_help_txt;
            } else {
                resId = R.string.cam_strings_zoom_not_supported_txt;
            }
            showRotatableToastMessage(resId, 0, RotatableToast.ToastPosition.TOP);
        }
    }

    public static class KeyEventKiller implements DialogInterface.OnKeyListener {
        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            switch (keyCode) {
                case 27:
                case 80:
                case 82:
                    return true;
                default:
                    return false;
            }
        }
    }

    private class OnKeyWrapSelectionShareListener extends KeyEventKiller {
        private OnKeyWrapSelectionShareListener() {
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.KeyEventKiller, android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            if (keyCode == 84 && event.getAction() == 1) {
                return true;
            }
            return super.onKey(dialog, keyCode, event);
        }
    }

    public void showRotatableToastMessage(int resId, int duration, RotatableToast.ToastPosition position) {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
            this.mRotatableToast = null;
        }
        if (this.mActivity != null) {
            this.mRotatableToast = RotatableToast.inflate(this.mActivity);
            this.mRotatableToast.setDuration(duration);
            this.mRotatableToast.setTextResId(resId);
            this.mRotatableToast.setSensorOrientation(this.mSensorOrientation);
            this.mRotatableToast.setToastPosition(position);
            this.mRotatableToast.show();
        }
    }

    public void showRotatableToastMessageAndAbort(int resId, int duration, RotatableToast.ToastPosition position) {
        showRotatableToastMessage(resId, duration, position);
        lazyAbort();
    }

    @Override // com.sonyericsson.cameracommon.activity.BaseActivity.LayoutOrientationChangedListener
    public void onLayoutOrientationChanged(BaseActivity.LayoutOrientation changed) {
        int orientation;
        switch (changed) {
            case Portrait:
                orientation = 1;
                break;
            default:
                orientation = 2;
                break;
        }
        setSensorOrientation(orientation);
    }

    private class LaunchSettingAppDialogListener implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnCancelListener {
        private GeotagSettingListener mListener;

        public LaunchSettingAppDialogListener(GeotagSettingListener geotagListener) {
            this.mListener = null;
            this.mListener = geotagListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            switch (which) {
                case -2:
                    if (this.mListener != null) {
                        this.mListener.onSet(false);
                        break;
                    }
                    break;
                case -1:
                    ApplicationLauncher.launchLocationSourceSettings(MessagePopup.this.mActivity);
                    break;
            }
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            if (this.mListener != null) {
                this.mListener.onSet(false);
            }
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            if (this.mListener != null) {
                this.mListener.onSet(false);
            }
        }
    }

    public void showLaunchSettingAppDialog(Activity activity, GeotagSettingListener geotagListener) {
        if (this.mActivity == null) {
            this.mActivity = activity;
        }
        showOkAndCancel(R.string.cam_strings_advanced_setting_geo_tag_both_off_txt, R.string.cam_strings_advanced_setting_geo_tag_title_txt, false, R.string.cam_strings_ok_txt, R.string.cam_strings_cancel_txt, new LaunchSettingAppDialogListener(null), new LaunchSettingAppDialogListener(geotagListener), new LaunchSettingAppDialogListener(geotagListener));
    }

    public void showDeviceErrorMessage() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_error_device_not_available_txt);
            showDeviceError(builder);
        }
    }

    public void showSdcardErrorMessage() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_error_memory_unavailable_txt);
            showDeviceError(builder);
        }
    }

    public void showDeviceErrorMessageOk() {
        ErrorExitListener listener = new ErrorExitListener();
        showOk(R.string.cam_strings_error_device_not_available_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, listener);
    }

    public void showCameraDisabledMessage() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_use_of_camera_not_authorized_txt);
            showDeviceError(builder);
        }
    }

    public void showCameraDisabledMessageOk() {
        ErrorExitListener listener = new ErrorExitListener();
        showOk(R.string.cam_strings_use_of_camera_not_authorized_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, listener);
    }

    public void showUnknownErrorMessage() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_error_fatal_txt);
            showDeviceError(builder);
        }
    }

    public void showMessageOnUiThread(final int resId, final int duration) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.sonyericsson.cameracommon.messagepopup.MessagePopup.1
            @Override // java.lang.Runnable
            public void run() {
                MessagePopup.this.showRotatableToastMessage(resId, duration, RotatableToast.ToastPosition.BOTTOM);
            }
        });
    }

    private RotatableDialog showOkDialogImpl(int msg, int title, boolean needAlertIcon, int ok, ShowOkListenerBase listener) {
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        if (msg != -1) {
            builder.setMessage(msg);
        }
        builder.setPositiveButton(ok, listener);
        builder.setOnDismissListener(listener);
        builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
        return show(builder);
    }

    public RotatableDialog showOk(int msg, int title, boolean needAlertIcon, int ok, DialogInterface.OnClickListener okListener, DialogInterface.OnDismissListener dismissListener) {
        if (this.mDialogOk == null) {
            ShowOkListenerBase listener = new ShowOkListener(okListener, dismissListener);
            this.mDialogOk = showOkDialogImpl(msg, title, needAlertIcon, ok, listener);
        }
        return this.mDialogOk;
    }

    public RotatableDialog showOkMandatory(int msg, int title, boolean needAlertIcon, int ok, DialogInterface.OnClickListener okListener, DialogInterface.OnDismissListener dismissListener) {
        if (this.mDialogOkMandatory != null) {
            this.mDialogOkMandatory.dismiss();
            this.mDialogOkMandatory = null;
        }
        ShowOkListenerBase listener = new ShowOkMandatoryListener(okListener, dismissListener);
        this.mDialogOkMandatory = showOkDialogImpl(msg, title, needAlertIcon, ok, listener);
        return this.mDialogOkMandatory;
    }

    public RotatableDialog showThermalWarning(int msg, int title, boolean needAlertIcon, int ok, DialogInterface.OnClickListener okListener, DialogInterface.OnDismissListener dismissListener) {
        if (this.mDialogThermal == null) {
            ShowOkListenerBase listener = new ShowOkListener(okListener, dismissListener);
            this.mDialogThermal = showOkDialogImpl(msg, title, needAlertIcon, ok, listener);
        }
        return this.mDialogThermal;
    }

    private abstract class ShowOkListenerBase implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
        private final DialogInterface.OnClickListener mOnClickListener;
        private final DialogInterface.OnDismissListener mOnDismissListener;

        protected abstract void removeReferenceToDialog();

        public ShowOkListenerBase(DialogInterface.OnClickListener ok, DialogInterface.OnDismissListener dismiss) {
            this.mOnClickListener = ok;
            this.mOnDismissListener = dismiss;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            if (this.mOnClickListener != null) {
                this.mOnClickListener.onClick(dialog, which);
            }
            removeReferenceToDialog();
        }

        public void onDismiss(DialogInterface dialog) {
            if (this.mOnDismissListener != null) {
                this.mOnDismissListener.onDismiss(dialog);
            }
            if (MessagePopup.this.mDialogOk != null && !MessagePopup.this.mDialogOk.isShowing()) {
                removeReferenceToDialog();
            }
        }
    }

    public class ShowOkListener extends ShowOkListenerBase {
        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
            super.onClick(dialogInterface, i);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnDismissListener
        public /* bridge */ /* synthetic */ void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
        }

        public ShowOkListener(DialogInterface.OnClickListener ok, DialogInterface.OnDismissListener dismiss) {
            super(ok, dismiss);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogOk = null;
        }
    }

    public class ShowOkMandatoryListener extends ShowOkListenerBase {
        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
            super.onClick(dialogInterface, i);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnDismissListener
        public /* bridge */ /* synthetic */ void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
        }

        public ShowOkMandatoryListener(DialogInterface.OnClickListener ok, DialogInterface.OnDismissListener dismiss) {
            super(ok, dismiss);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogOkMandatory = null;
        }
    }

    public class ShowThermalListener extends ShowOkListenerBase {
        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
            super.onClick(dialogInterface, i);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase, android.content.DialogInterface.OnDismissListener
        public /* bridge */ /* synthetic */ void onDismiss(DialogInterface dialogInterface) {
            super.onDismiss(dialogInterface);
        }

        public ShowThermalListener(DialogInterface.OnClickListener ok, DialogInterface.OnDismissListener dismiss) {
            super(ok, dismiss);
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.ShowOkListenerBase
        protected void removeReferenceToDialog() {
            MessagePopup.this.mDialogThermal = null;
        }
    }

    public AlertDialog showStoreProgressDialog(int msg) {
        if (this.mStoreProgressDialog == null) {
            ProgressDialog dialog = new ProgressDialog(this.mActivity);
            dialog.setCancelable(false);
            dialog.setIndeterminate(true);
            this.mStoreProgressDialog = dialog;
        }
        this.mStoreProgressDialog.setOnKeyListener(this.mKeyEventKiller);
        this.mStoreProgressDialog.setMessage(this.mActivity.getResources().getText(msg));
        this.mStoreProgressDialog.show();
        setDefaultDialogButtonFontSize(this.mStoreProgressDialog);
        return this.mStoreProgressDialog;
    }

    public AlertDialog showStoreProgressDialog(int msg, int title, boolean isVisibleIcon, View view) {
        if (view == null) {
            return showStoreProgressDialog(msg);
        }
        if (this.mStoreProgressDialogMultiAngle == null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.mActivity);
            builder.setCancelable(false);
            builder.setView(view);
            builder.setTitle(title);
            if (isVisibleIcon) {
                builder.setIcon(android.R.drawable.ic_dialog_alert);
            }
            this.mStoreProgressDialogMultiAngle = builder.create();
            this.mStoreProgressDialogMultiAngle.setOnKeyListener(this.mKeyEventKiller);
        }
        this.mStoreProgressDialogMultiAngle.show();
        setDefaultDialogButtonFontSize(this.mStoreProgressDialogMultiAngle);
        return this.mStoreProgressDialogMultiAngle;
    }

    private void setDefaultDialogButtonFontSize(AlertDialog dialog) {
        setDefaultDialogButtonFontSize(dialog, -1);
        setDefaultDialogButtonFontSize(dialog, -2);
        setDefaultDialogButtonFontSize(dialog, -3);
    }

    private void setDefaultDialogButtonFontSize(AlertDialog dialog, int buttonId) {
        Button button = dialog.getButton(buttonId);
        if (button != null) {
            button.setTextSize(1, DEFAULT_DIALOG_BUTTON_FONT_SIZE_IN_DP);
        }
    }

    public void closeMessage() {
        if (this.mRotatableToast != null) {
            this.mRotatableToast.hideImmediately();
        }
    }

    private void lazyAbort() {
        this.mMessageHandler.postDelayed(new Runnable() { // from class: com.sonyericsson.cameracommon.messagepopup.MessagePopup.2
            @Override // java.lang.Runnable
            public void run() {
                MessagePopup.this.mTerminateListener.terminateApplication();
            }
        }, 4000L);
    }

    class ImmediatelyAbortListener extends KeyEventKiller implements DialogInterface.OnClickListener {
        ImmediatelyAbortListener() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            MessagePopup.this.mTerminateListener.terminateApplication();
        }

        @Override // com.sonyericsson.cameracommon.messagepopup.MessagePopup.KeyEventKiller, android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            boolean result = super.onKey(dialog, keyCode, event);
            if (!result && keyCode == 4) {
                MessagePopup.this.mTerminateListener.terminateApplication();
                return true;
            }
            return result;
        }
    }

    class LazyAbortListener implements DialogInterface.OnDismissListener {
        LazyAbortListener() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            MessagePopup.this.mTerminateListener.terminateApplication();
        }
    }

    public void showDisclaimer(BaseActivity activity, DialogInterface.OnClickListener onOkClickListener, DialogInterface.OnClickListener onCancelClickListener, DialogInterface.OnDismissListener onDismissListener) {
        LayoutInflater inflater = activity.getLayoutInflater();
        if (inflater != null) {
            View contentView = inflater.inflate(R.layout.disclaimer_content, (ViewGroup) null);
            CheckBox checkBox = (CheckBox) contentView.findViewById(R.id.check_box);
            checkBox.setText(Html.fromHtml(activity.getResources().getString(R.string.cam_strings_term_of_use_consent_txt)));
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sonyericsson.cameracommon.messagepopup.MessagePopup.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton arg0, boolean arg1) {
                    if (MessagePopup.this.mDisclaimerDialog != null) {
                        if (arg1) {
                            MessagePopup.this.mDisclaimerDialog.setPositiveButtonEnabled(true);
                        } else {
                            MessagePopup.this.mDisclaimerDialog.setPositiveButtonEnabled(false);
                        }
                    }
                }
            });
            checkBox.setMovementMethod(LinkMovementMethod.getInstance());
            this.mDisclaimerDialog = showOkAndCancelCustomView(contentView, R.string.cam_strings_term_of_use_title_txt, false, R.string.cam_strings_term_of_use_accept_txt, R.string.cam_strings_term_of_use_decline_txt, onOkClickListener, onCancelClickListener, null);
            checkBox.setChecked(false);
            if (this.mDisclaimerDialog != null) {
                this.mDisclaimerDialog.setPositiveButtonEnabled(false);
                this.mDisclaimerDialog.setOnDismissListener(onDismissListener);
            }
        }
    }

    public void showTermsAndConditions(BaseActivity activity, DialogInterface.OnClickListener onOkClickListener, DialogInterface.OnCancelListener onCancelListener) {
        LayoutInflater inflater;
        if (activity != null && (inflater = activity.getLayoutInflater()) != null) {
            View contentView = inflater.inflate(R.layout.terms_and_conditions_content, (ViewGroup) null);
            TextView link = (TextView) contentView.findViewById(R.id.consent_text);
            link.setText(Html.fromHtml(activity.getResources().getString(R.string.cam_strings_term_of_use_txt)));
            link.setMovementMethod(LinkMovementMethod.getInstance());
            showOkAndCustomView(contentView, R.string.cam_strings_term_of_use_title_txt, false, R.string.cam_strings_ok_txt, onOkClickListener, onCancelListener);
        }
    }

    public void showSoftwareLicenses(BaseActivity activity, DialogInterface.OnClickListener onOkClickListener, DialogInterface.OnCancelListener onCancelListener) {
        LayoutInflater inflater;
        if (activity != null && (inflater = activity.getLayoutInflater()) != null) {
            View contentView = inflater.inflate(R.layout.sw_license_content, (ViewGroup) null);
            TextView link = (TextView) contentView.findViewById(R.id.sw_license_content_text);
            link.setText(getSoftwareLicensesFromAssets(activity, "NOTICE.txt"));
            link.setAutoLinkMask(15);
            link.setMovementMethod(LinkMovementMethod.getInstance());
            showOkAndCustomView(contentView, R.string.cam_strings_sw_licence_title_txt, false, R.string.cam_strings_ok_txt, onOkClickListener, onCancelListener);
        }
    }

    private String getSoftwareLicensesFromAssets(Context context, String fileName) {
        StringBuilder builder = new StringBuilder();
        final String charset = "UTF-8";
        try (
            InputStream in = context.getAssets().open(fileName);
            InputStreamReader isr = new InputStreamReader(in, charset);
            BufferedReader br = new BufferedReader(isr)) {
            String line;
            while ((line = br.readLine()) != null) {
                builder.append(line).append('\n');
            }
        } catch (FileNotFoundException e) {
            CameraLogger.w(TAG, "Asset not found: " + fileName, e);
        } catch (IOException e) {
            CameraLogger.w(TAG, "Failed to read asset: " + fileName, e);
        }
        return builder.toString();
    }

    public RotatableDialog showOkAndCancelMsg(int msg, int title, boolean needAlertIcon, int ok, int can, DialogInterface.OnClickListener okClickListener, DialogInterface.OnClickListener cancelClickListener, DialogInterface.OnCancelListener cancelListener) {
        if (this.mDeviceErrorPopup != null) {
            return null;
        }
        if (this.mOkAndCancelCustomViewPopup != null) {
            this.mOkAndCancelCustomViewPopup.dismiss();
        }
        RotatableDialog.Builder builder = createBuilder();
        if (builder == null) {
            return null;
        }
        builder.setTitle(title);
        if (needAlertIcon) {
            builder.setAlertIcon();
        }
        if (msg != -1) {
            builder.setMessage(msg);
        }
        builder.setPositiveButton(ok, new OnClickWrapOkCancelCustomViewListener(okClickListener));
        builder.setNegativeButton(can, new OnClickWrapOkCancelCustomViewListener(cancelClickListener));
        builder.setOnCancelListener(new OnCancelOkAndCheckableListener(cancelListener));
        builder.setCancelable(Cancelable.True, Cancelable.False);
        this.mOkAndCancelCustomViewPopup = show(builder);
        return this.mOkAndCancelCustomViewPopup;
    }

    private String getStringFieldNameForDebug(int id) {
        return "";
    }

    protected void notifyOpenDialog() {
        this.mStorageDialogStateListener.onOpenStorageDialog();
    }

    protected void notifyCloseDialog() {
        this.mStorageDialogStateListener.onCloseStorageDialog();
    }

    public void showCameraNotAvailableError(boolean isCameraDisabled, boolean isCancelable) {
        if (isCameraDisabled) {
            if (isCancelable) {
                showCameraDisabledMessageOk();
                return;
            } else {
                showCameraDisabledMessage();
                return;
            }
        }
        if (isCancelable) {
            showDeviceErrorMessageOk();
        } else {
            showDeviceErrorMessage();
        }
    }

    public void showConfirmLocationAccess(Activity activity, boolean isUsedForStartupGeotagCheck, DialogInterface.OnClickListener onAllowClickListener, DialogInterface.OnClickListener onDenyClickListener, DialogInterface.OnCancelListener onCancelListener, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        LayoutInflater inflater;
        int titleId;
        View contentView;
        if (activity != null && (inflater = activity.getLayoutInflater()) != null) {
            if (isUsedForStartupGeotagCheck) {
                titleId = R.string.cam_strings_remember_geotag_title_txt;
                contentView = inflater.inflate(R.layout.dialog_remember_geo_tag_content, (ViewGroup) null);
                CheckBox cb = (CheckBox) contentView.findViewById(R.id.check_box_do_not_show_again);
                cb.setOnCheckedChangeListener(onCheckedChangeListener);
                cb.setChecked(true);
            } else {
                titleId = R.string.cam_strings_cta_title_txt;
                contentView = inflater.inflate(R.layout.dialog_confirm_location_access_content, (ViewGroup) null);
            }
            TextView subtitle = (TextView) contentView.findViewById(R.id.text_cta_dialog_subtitle);
            TextView info = (TextView) contentView.findViewById(R.id.text_cta_location_info);
            if (RegionConfig.isChinaRegion(this.mActivity)) {
                subtitle.setText(String.format(Locale.US, activity.getResources().getString(R.string.cam_strings_dialog_cta_access_txt), activity.getResources().getString(R.string.cam_strings_application_name_txt)));
                subtitle.setVisibility(0);
                info.setVisibility(0);
            } else {
                subtitle.setVisibility(8);
                info.setVisibility(8);
            }
            showOkAndCancelCustomView(contentView, titleId, false, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, onAllowClickListener, onDenyClickListener, onCancelListener);
        }
    }

    public void showContextualSettingsSecurityDialog(Activity activity, Runnable runOnClickOk, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        LayoutInflater inflater;
        if (activity != null && (inflater = activity.getLayoutInflater()) != null) {
            View content = inflater.inflate(R.layout.dialog_screen_locked, (ViewGroup) null);
            TextView message = (TextView) content.findViewById(R.id.text_screen_locked_body);
            message.setText(R.string.cam_strings_fast_capturing_screen_locked_settings_txt);
            CheckBox cb = (CheckBox) content.findViewById(R.id.check_box_do_not_show_again);
            cb.setOnCheckedChangeListener(onCheckedChangeListener);
            cb.setChecked(true);
            RotatableDialog dialog = showOkAndCustomView(content, R.string.cam_strings_fast_capturing_screen_locked_title_txt, false, R.string.cam_strings_ok_txt, new RunOnClickListener(runOnClickOk), null);
            if (dialog != null) {
                dialog.setCanceledOnTouchOutside(false);
            } else {
                CameraLogger.e(TAG, "showContextualSettingsSecurityDialog: dialog is null");
            }
        }
    }

    public void showSecurityOkOrCancelDialog(Activity activity, Runnable runOnClickOk, Runnable runOnClickCancel, Runnable runOnDismiss) {
        if (activity != null) {
            RotatableDialog dialog = showOkAndCancel(R.string.cam_strings_fast_capturing_screen_locked_apps_list_txt, R.string.cam_strings_fast_capturing_screen_locked_title_txt, false, R.string.cam_strings_unlock_button_txt, R.string.cam_strings_cancel_txt, new RunOnClickListener(runOnClickOk), new RunOnClickListener(runOnClickCancel), null);
            dialog.setCanceledOnTouchOutside(false);
            dialog.setOnDismissListener(new RunOnDismissListener(runOnDismiss));
        }
    }

    private class RunOnClickListener implements DialogInterface.OnClickListener {
        private final Runnable mRunnable;

        RunOnClickListener(Runnable runnable) {
            this.mRunnable = runnable;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface arg0, int arg1) {
            MessagePopup.this.mMessageHandler.post(this.mRunnable);
        }
    }

    private class RunOnDismissListener implements DialogInterface.OnDismissListener {
        private final Runnable mRunnable;

        RunOnDismissListener(Runnable runnable) {
            this.mRunnable = runnable;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            MessagePopup.this.mMessageHandler.post(this.mRunnable);
        }
    }

    public void showScreenPinningOkDialog(Activity activity, Runnable runOnDismiss) {
        if (activity != null) {
            RotatableDialog dialog = showOk(-1, R.string.cam_strings_screen_pinned_txt, false, R.string.cam_strings_ok_txt, null, new RunOnDismissListener(runOnDismiss));
            dialog.setCanceledOnTouchOutside(false);
        }
    }

    public void showSdCardCorruptedErrorVideo() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_error_fatal_sd_video_txt);
            showDeviceError(builder);
        }
    }

    public void showSdCardCorruptedErrorPhoto() {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null) {
            builder.setTitle(R.string.cam_strings_error_dialog_title_txt);
            builder.setMessage(R.string.cam_strings_error_fatal_sd_photo_txt);
            showDeviceError(builder);
        }
    }

    public void showHintTextMessage(int titleId, int headerId, int footerId, int[] contents) {
        RotatableDialog.Builder builder = createBuilder();
        if (builder != null && this.mDialogOk == null) {
            StringBuilder sb = new StringBuilder();
            Resources res = this.mActivity.getResources();
            if (headerId != -1) {
                sb.append(res.getString(headerId));
                if (contents.length > 0) {
                    sb.append(System.lineSeparator());
                    sb.append(System.lineSeparator());
                }
            }
            for (int i = 0; i < contents.length; i++) {
                if (contents[i] != -1) {
                    sb.append(res.getString(contents[i]));
                }
                int nextIndex = i + 1;
                if (nextIndex < contents.length && contents[nextIndex] != -1) {
                    sb.append(System.lineSeparator());
                }
            }
            if (footerId != -1) {
                if (contents.length > 0) {
                    sb.append(System.lineSeparator());
                    sb.append(System.lineSeparator());
                }
                sb.append(res.getString(footerId));
            }
            builder.setTitle(titleId);
            if (isLargeTextEnabled()) {
                LayoutInflater inflater = this.mActivity.getLayoutInflater();
                if (inflater != null) {
                    TextView scrollableTextView = (TextView) inflater.inflate(R.layout.dialog_scrollable_message, (ViewGroup) null);
                    scrollableTextView.setMovementMethod(new ScrollingMovementMethod());
                    scrollableTextView.setText(sb.toString());
                    builder.setView(scrollableTextView);
                } else {
                    return;
                }
            } else {
                builder.setMessage(sb.toString());
            }
            builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
            ShowOkListenerBase listener = new ShowOkListener(null, null);
            builder.setPositiveButton(R.string.cam_strings_tutorial_button_txt, listener);
            builder.setOnDismissListener(listener);
            this.mDialogOk = show(builder);
        }
    }

    private boolean isLargeTextEnabled() {
        Configuration config = this.mActivity.getResources().getConfiguration();
        float scale = config.fontScale;
        return scale > 1.0f;
    }

    public void showStorageExplanatoryDialog(final ParamSharedPrefWrapper sharedPrefs, final String sharedPrefsKey, DialogInterface.OnClickListener listener) {
        LayoutInflater inflater;
        if (this.mActivity != null && (inflater = this.mActivity.getLayoutInflater()) != null) {
            View explanatoryView = inflater.inflate(R.layout.storage_popup_content, (ViewGroup) null);
            CheckBox checkBox = (CheckBox) explanatoryView.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sonyericsson.cameracommon.messagepopup.MessagePopup.4
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                    sharedPrefs.setParamToSP(sharedPrefsKey, isChecked);
                }
            });
            checkBox.setChecked(true);
            showOkAndCancelCustomView(explanatoryView, R.string.cam_strings_change_save_destination_slowmotion_title_txt, false, R.string.cam_strings_error_high_temp_shut_down_yes_txt, R.string.cam_strings_error_high_temp_shut_down_no_txt, listener, null, null);
        }
    }

    public void showStorageExplanatoryDialogForSettings(final ParamSharedPrefWrapper sharedPrefs, final String sharedPrefsKey) {
        LayoutInflater inflater;
        if (this.mActivity != null && (inflater = this.mActivity.getLayoutInflater()) != null) {
            View content = inflater.inflate(R.layout.storage_popup_content, (ViewGroup) null);
            TextView header = (TextView) content.findViewById(R.id.header_text);
            header.setText(this.mActivity.getResources().getText(R.string.cam_strings_video_explanatory_slowmotion_setting_txt));
            CheckBox checkBox = (CheckBox) content.findViewById(R.id.check_box);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sonyericsson.cameracommon.messagepopup.MessagePopup.5
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean isChecked) {
                    sharedPrefs.setParamToSP(sharedPrefsKey, isChecked);
                }
            });
            checkBox.setChecked(true);
            RotatableDialog.Builder builder = createBuilder();
            if (builder != null) {
                builder.setTitle(R.string.cam_strings_save_destination_title_txt);
                builder.setViewAsScrollable(content);
                builder.setPositiveButton(R.string.cam_strings_ok_txt, (DialogInterface.OnClickListener) null);
                builder.setCancelable(Cancelable.True, Cancelable.UseDefault);
                this.mStorageExplanatoryPopup = show(builder);
            }
        }
    }

    public boolean isStorageErrorDialogOpened() {
        return this.mStorageErrorPopup != null;
    }

    public void showDestinationChangedToInternalMessageOk(Runnable runOnClickOk) {
        RotatableDialog dialog = showOk(R.string.cam_strings_sd_permission_info_txt, R.string.cam_strings_dialog_high_temp_title_txt, false, R.string.cam_strings_ok_txt, null, new RunOnDismissListener(runOnClickOk));
        dialog.setCanceledOnTouchOutside(false);
    }
}
