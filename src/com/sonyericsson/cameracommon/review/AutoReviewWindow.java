package com.sonyericsson.cameracommon.review;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.core.view.ViewCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.AutoReview;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.launcher.AlbumLauncher;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.updator.ContentResolverUtilListener;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.utility.CameraTimer;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonymobile.cameracommon.research.ResearchUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class AutoReviewWindow extends ReviewScreen {
    private static String ACTION_EDIT_HIGH_FRAME_RATE = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR";
    public static final String TAG = "AutoReviewWindow";
    private BaseActivity mBaseActivity;
    private ContentResolverUtilListener mCrListener;
    private final DialogInterface.OnDismissListener mDismissListener;
    private long mDuration;
    private View.OnKeyListener mInterceptKeyListener;
    private boolean mIsOpened;
    protected KeyEventTranslator mKeyEventTranslator;
    private ReviewWindowListener mListener;
    private MessagePopup mMessagePopup;
    private final OnSelectedReviewMenuButtonListener mOnSelectListener;
    private CameraTimer mTimer;

    public AutoReviewWindow(Context context) {
        super(context);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public AutoReviewWindow(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public AutoReviewWindow(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mDismissListener = new DismissListener();
        this.mOnSelectListener = new OnSelectedListener();
        this.mIsOpened = false;
        this.mBaseActivity = null;
    }

    public void setup(MessagePopup messagePopup, CommonSettings settings) {
        setup(messagePopup, new KeyEventTranslator(settings));
    }

    public void setup(MessagePopup messagePopup, KeyEventTranslator translator) {
        this.mMessagePopup = messagePopup;
        this.mKeyEventTranslator = translator;
    }

    public static boolean launchEditor(Activity activity, Uri uri, String mimeType) {
        ActivityOptions options = ActivityOptions.makeCustomAnimation(activity, R.anim.edit_activity_fade_in, R.anim.edit_activity_fade_out);
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, mimeType);
        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (!isActivityAvailable) {
            return false;
        }
        activity.startActivityForResult(intent, 15, options.toBundle());
        return true;
    }

    public static boolean launchEditorHighFrameRate(Activity activity, Uri uri, String mimeType) {
        ActivityOptions options = ActivityOptions.makeCustomAnimation(activity, R.anim.edit_activity_fade_in, R.anim.edit_activity_fade_out);
        Intent intent = new Intent(ACTION_EDIT_HIGH_FRAME_RATE);
        intent.setDataAndType(uri, mimeType);
        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        boolean isActivityAvailable = CommonUtility.isActivityAvailable(activity.getApplicationContext(), intent);
        if (!isActivityAvailable) {
            return false;
        }
        activity.startActivity(intent, options.toBundle());
        return true;
    }

    public static boolean isEditorAvailable(Context context, Uri uri, String mimeType) {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setDataAndType(uri, mimeType);
        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        return CommonUtility.isActivityAvailable(context, intent);
    }

    public static void launchAlbum(Activity activity, Uri uri, String mimeType) {
        AlbumLauncher.launchAlbum(activity, uri, mimeType, -1, false, true);
    }

    public static void launchAlbum(Activity activity, Uri uri, String mimeType, boolean isFast) {
        AlbumLauncher.launchAlbum(activity, uri, mimeType, -1, false, isFast);
    }

    public static void launchPlayer(Activity activity, Uri uri, String mimeType) {
        AlbumLauncher.launchPlayer(activity, uri, mimeType);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.mPictureImage.setOnTouchListener(new ReviewScreenListener());
        for (ReviewMenuButton button : this.mButtonList) {
            button.setReviewScreen(this);
            button.setOnSelectedListener(this.mOnSelectListener);
        }
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewScreen, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        for (ReviewMenuButton button : this.mButtonList) {
            button.setReviewScreen(null);
            button.setOnSelectedListener(null);
        }
        this.mListener = null;
        this.mCrListener = null;
        super.onDetachedFromWindow();
        stopTimer();
    }

    public void setDuration(long duration) {
        this.mDuration = duration;
    }

    public boolean open(BaseActivity activity, Uri uri, String mime, Rect pictureRect, int reviewOrientation, int pictureOrientation, boolean isFront, ReviewWindowListener listener, ContentResolverUtilListener crListener) {
        long duration;
        this.mBaseActivity = activity;
        if (MediaSavingConstants.MEDIA_TYPE_MPEG4_MIME.equals(mime) || MediaSavingConstants.MEDIA_TYPE_3GP_MIME.equals(mime)) {
            duration = -1;
        } else {
            duration = this.mDuration;
        }
        if (duration == 0) {
            return false;
        }
        if (this.mAutoReviewRight != null) {
            this.mAutoReviewRight.setVisibility(View.VISIBLE);
        }
        this.mListener = listener;
        this.mCrListener = crListener;
        Uri outputUri = uri;
        String path = uri.toString();
        if (path.startsWith(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString())) {
            outputUri = Uri.parse(path.replaceFirst(MediaSavingConstants.EXTENDED_PHOTO_STORAGE_URI.toString(), MediaSavingConstants.STANDARD_PHOTO_STORAGE_URI.toString()));
        }
        if (setupScreen(activity, outputUri, null, "", mime, pictureRect, reviewOrientation, pictureOrientation, isFront, this.mBaseActivity.getScreenAspect())) {
            show();
            startTimer(duration);
            if (this.mListener != null) {
                this.mIsOpened = true;
                this.mListener.onReviewWindowOpen();
            }
            return true;
        }
        return false;
    }

    public boolean open(BaseActivity activity, byte[] pictureData, String videoPath, String mime, Rect pictureRect, int reviewOrientation, int pictureOrientation, boolean isFront, ReviewWindowListener listener, ContentResolverUtilListener crListener) {
        this.mBaseActivity = activity;
        long duration = AutoReview.UNLIMITED.getDuration();
        if (this.mAutoReviewRight != null) {
            this.mAutoReviewRight.setVisibility(View.GONE);
        }
        this.mListener = listener;
        this.mCrListener = crListener;
        if (!setupScreen(activity, null, pictureData, videoPath, mime, pictureRect, reviewOrientation, pictureOrientation, isFront, this.mBaseActivity.getScreenAspect())) {
            return false;
        }
        show();
        startTimer(duration);
        if (this.mListener != null) {
            this.mIsOpened = true;
            this.mListener.onReviewWindowOpen();
        }
        return true;
    }

    public void show() {
        showScreen();
        requestFocus();
        ResearchUtil.getInstance().setViewerLaunched();
    }

    public void hide() {
        cancelDialog();
        if (this.mMessagePopup != null) {
            this.mMessagePopup.release();
        }
        stopTimer();
        clearFocus();
        hideScreen();
        if (this.mListener != null) {
            this.mIsOpened = false;
            this.mListener.onReviewWindowClose();
        }
        this.mUri = null;
    }

    public void startTimer(long duration) {
        stopTimer();
        if (duration > 0) {
            this.mTimer = new CameraTimer(duration, duration, new ReviewTimerHandler(this), TAG, 0L);
            this.mTimer.start();
        }
    }

    public void stopTimer() {
        if (this.mTimer != null) {
            this.mTimer.cancel();
            this.mTimer = null;
        }
    }

    public void setInterceptKeyListener(View.OnKeyListener interceptKeyListener) {
        this.mInterceptKeyListener = interceptKeyListener;
    }

    private boolean transferKeyEvent(int keyCode, KeyEvent event) {
        if (this.mInterceptKeyListener == null) {
            return false;
        }
        boolean ret = this.mInterceptKeyListener.onKey(this, keyCode, event);
        return ret;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        boolean intercepted = transferKeyEvent(keyCode, event);
        if (intercepted) {
            return true;
        }
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCode(keyCode);
        switch (translatedKeyCode) {
            case SHUTTER:
            case FOCUS:
            case FOCUS_AND_SHUTTER_UP_KEY:
            case FOCUS_AND_SHUTTER_DOWN_KEY:
                if (event.getRepeatCount() != 0) {
                    return true;
                }
                backToViewFinder();
                return true;
            case VOLUME:
                return false;
            case BACK:
            case MENU:
                stopTimer();
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        boolean intercepted = transferKeyEvent(keyCode, event);
        if (intercepted) {
            return true;
        }
        switch (keyCode) {
            case 4:
            case 82:
                backToViewFinder();
                break;
        }
        return true;
    }

    private static class ReviewTimerHandler extends Handler {
        private final WeakReference<AutoReviewWindow> mWindowRef;

        ReviewTimerHandler(AutoReviewWindow window) {
            this.mWindowRef = new WeakReference<>(window);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    AutoReviewWindow window = this.mWindowRef.get();
                    if (window != null) {
                        window.backToViewFinder();
                        break;
                    }
                    break;
            }
        }
    }

    private static class ReviewScreenListener implements View.OnTouchListener {
        private ReviewScreenListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent event) {
            return true;
        }
    }

    private class DismissListener implements DialogInterface.OnDismissListener {
        private DismissListener() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            AutoReviewWindow.this.mMessagePopup.release();
            if (AutoReviewWindow.this.getVisibility() == View.VISIBLE) {
                AutoReviewWindow.this.show();
            }
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }
    }

    private class OnSelectedListener implements OnSelectedReviewMenuButtonListener {
        private OnSelectedListener() {
        }

        @Override // com.sonyericsson.cameracommon.review.OnSelectedReviewMenuButtonListener
        public void onSelected(ReviewMenuButton button) {
            AutoReviewWindow.this.stopTimer();
            AutoReviewWindow.this.cancelDialog();
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }

        @Override // com.sonyericsson.cameracommon.review.OnSelectedReviewMenuButtonListener
        public void onSelected(ReviewMenuButton button, RotatableDialog dialog) {
            AutoReviewWindow.this.stopTimer();
            dialog.setOnDismissListener(AutoReviewWindow.this.mDismissListener);
            AutoReviewWindow.this.setCurrentDialog(dialog);
            if (AutoReviewWindow.this.mBaseActivity != null) {
                AutoReviewWindow.this.mBaseActivity.restartAutoOffTimer();
            }
        }
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewScreen
    MessagePopup getMessagePopup() {
        return this.mMessagePopup;
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewScreen
    void backToViewFinder() {
        hide();
    }

    @Override // com.sonyericsson.cameracommon.review.ReviewScreen
    ContentResolverUtilListener getContentResolverUtilListener() {
        return this.mCrListener;
    }

    public boolean isOpened() {
        return this.mIsOpened;
    }
}