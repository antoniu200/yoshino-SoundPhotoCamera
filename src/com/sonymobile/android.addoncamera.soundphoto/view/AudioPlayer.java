package com.sonymobile.android.addoncamera.soundphoto.view;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.review.ReviewScreen;
import com.sonyericsson.cameracommon.utility.ByteBufferUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonymobile.android.addoncamera.soundphoto.SoundPhotoConstants;
import com.sonymobile.android.addoncamera.soundphoto.contents.AudioData;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class AudioPlayer extends FrameLayout implements AudioTrack.OnPlaybackPositionUpdateListener, View.OnClickListener, View.OnTouchListener, View.OnKeyListener {
    private static final int OFFSET_IN_BYTES = 0;
    private static final String TAG = AudioPlayer.class.getSimpleName();
    private byte[] mAudioDataArray;
    private int mAudioFormat;
    private View mAudioPlayIcon;
    private AudioTrack mAudioTrack;
    private ReviewScreen mAutoReviewBase;
    private int mBitPerSampleForCalculation;
    private int mChannelConfig;
    private int mChannels;
    private boolean mEnabled;
    private KeyEventTranslator mKeyEventTranslator;
    private int mMinBufferSizeInBytes;
    private OnPlayFinishedListener mOnPlayFinishedListener;
    private View mPictureImage;
    private Thread mPlayThread;
    private View mProgressBar;
    private int mSampleRate;
    private int mSizeInBytes;

    public interface OnPlayFinishedListener {
        void onPlayFinished();
    }

    public AudioPlayer(Context context) {
        this(context, null, 0);
    }

    public AudioPlayer(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AudioPlayer(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mEnabled = false;
        this.mPlayThread = null;
        this.mAutoReviewBase = null;
        this.mPictureImage = null;
        this.mAudioPlayIcon = null;
        this.mProgressBar = null;
        this.mAudioTrack = null;
        this.mSampleRate = SoundPhotoConstants.SOUND_SAMPLE_RATE;
        this.mChannelConfig = 12;
        this.mChannels = 2;
        this.mAudioFormat = 2;
        this.mBitPerSampleForCalculation = 2;
        this.mMinBufferSizeInBytes = 0;
        this.mSizeInBytes = 0;
        this.mAudioDataArray = null;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mAudioPlayIcon = findViewById(R.id.soundphoto_play_button);
        this.mProgressBar = findViewById(R.id.auto_review_sound_progress);
    }

    public void enableAudioPlayer(boolean bool) {
        this.mEnabled = bool;
        if (this.mEnabled) {
            this.mProgressBar.setVisibility(View.VISIBLE);
        } else {
            this.mProgressBar.setVisibility(View.INVISIBLE);
        }
    }

    public boolean isAudioPlayerEnabled() {
        return this.mEnabled;
    }

    public void setupViews() {
        if (this.mAudioPlayIcon != null) {
            this.mAudioPlayIcon.setOnClickListener(this);
            this.mAudioPlayIcon.setVisibility(View.VISIBLE);
        }
        this.mAutoReviewBase = (ReviewScreen) getParent();
        if (this.mAutoReviewBase != null) {
            this.mAutoReviewBase.setOnTouchListener(this);
            this.mPictureImage = this.mAutoReviewBase.findViewById(R.id.auto_review_picture_image);
            if (this.mPictureImage != null) {
                this.mPictureImage.setOnTouchListener(this);
            }
        }
        this.mProgressBar.setVisibility(View.INVISIBLE);
    }

    public void setAudioData(AudioData sender, ByteBuffer audioData, OnPlayFinishedListener onPlayFinishedListener) {
        byte[] dataArray = ByteBufferUtil.array(audioData);
        int arraySize = dataArray.length;
        setupAudioData(dataArray, arraySize, sender.sampleRate, sender.channels, sender.bitPerSample);
        this.mOnPlayFinishedListener = onPlayFinishedListener;
        setup();
    }

    private void setupAudioData(byte[] audioData, int dataSize, int sampleRate, int channels, int bitPerSample) {
        this.mAudioDataArray = audioData;
        this.mSizeInBytes = dataSize;
        this.mSampleRate = sampleRate;
        if (channels == 1) {
            this.mChannelConfig = 4;
        } else {
            this.mChannelConfig = 12;
        }
        if (bitPerSample == 8) {
            this.mAudioFormat = 3;
            this.mBitPerSampleForCalculation = 1;
        } else {
            this.mAudioFormat = 2;
            this.mBitPerSampleForCalculation = 2;
        }
        this.mMinBufferSizeInBytes = AudioTrack.getMinBufferSize(this.mSampleRate, this.mChannelConfig, this.mAudioFormat);
        this.mAudioTrack = new AudioTrack.Builder().
                setAudioAttributes(new AudioAttributes.Builder().setUsage(android.media.AudioAttributes.USAGE_MEDIA).setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build()).setAudioFormat(new AudioFormat.Builder().setEncoding(this.mAudioFormat).setSampleRate(this.mSampleRate).setChannelMask(this.mChannelConfig).build()).setBufferSizeInBytes(this.mMinBufferSizeInBytes).build();
        int r = this.mAudioTrack.setNotificationMarkerPosition((this.mSizeInBytes / this.mChannels) / this.mBitPerSampleForCalculation);
        if (r != 0) {
            CameraLogger.e(TAG, "setNotificationMarkerPosition:failed");
        }
        this.mAudioTrack.setPlaybackPositionUpdateListener(this);
    }

    private void setup() {
        this.mPlayThread = new Thread(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.AudioPlayer.1
            @Override // java.lang.Runnable
            public void run() throws IllegalStateException {
                if (AudioPlayer.this.mAudioTrack != null) {
                    AudioPlayer.this.mAudioTrack.play();
                    AudioPlayer.this.mAudioTrack.write(AudioPlayer.this.mAudioDataArray, 0, AudioPlayer.this.mSizeInBytes);
                }
            }
        });
    }

    public boolean isPlaying() {
        return this.mAudioTrack != null && this.mAudioTrack.getPlayState() == 3;
    }

    private void play() {
        if (!isPlaying()) {
            if (this.mPlayThread != null) {
                this.mPlayThread.start();
            }
            if (this.mAudioPlayIcon != null) {
                this.mAudioPlayIcon.setVisibility(View.INVISIBLE);
            }
            if (this.mAutoReviewBase != null) {
                this.mAutoReviewBase.showRightIcons(false);
            }
        }
    }

    private void stop() throws IllegalStateException {
        if (isPlaying()) {
            if (this.mAudioTrack != null) {
                this.mAudioTrack.stop();
            }
            this.mPlayThread = null;
            setup();
            if (this.mAudioPlayIcon != null) {
                this.mAudioPlayIcon.setVisibility(View.VISIBLE);
            }
            if (this.mAutoReviewBase != null && this.mAutoReviewBase.getUri() != null) {
                this.mAutoReviewBase.showRightIcons(true);
            }
            if (this.mAutoReviewBase != null) {
                this.mAutoReviewBase.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.view.AudioPlayer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AudioPlayer.this.mOnPlayFinishedListener != null) {
                            AudioPlayer.this.mOnPlayFinishedListener.onPlayFinished();
                        }
                    }
                });
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.mAudioPlayIcon && view.isShown()) {
            play();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent me) throws IllegalStateException {
        if (view != this.mAutoReviewBase && view != this.mPictureImage) {
            return false;
        }
        stop();
        return true;
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onMarkerReached(AudioTrack at) throws IllegalStateException {
        stop();
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onPeriodicNotification(AudioTrack at) {
    }

    public void setKeyEventTranslator(KeyEventTranslator keyEventTranslator) {
        this.mKeyEventTranslator = keyEventTranslator;
    }

    private KeyEventTranslator.TranslatedKeyCode translateKeyCode(int key) {
        if (this.mKeyEventTranslator == null) {
            return null;
        }
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = this.mKeyEventTranslator.translateKeyCode(key);
        return translatedKeyCode;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int keyCode, KeyEvent event) throws IllegalStateException {
        KeyEventTranslator.TranslatedKeyCode translatedKeyCode = translateKeyCode(keyCode);
        if (translatedKeyCode == null) {
            return false;
        }
        switch (translatedKeyCode) {
            case BACK:
                if (isPlaying()) {
                    if (event.getAction() == 1) {
                        stop();
                    }
                    break;
                }
                break;
            case FOCUS:
                if (event.getAction() == 0 && isPlaying()) {
                    stop();
                    break;
                }
                break;
        }
        return false;
    }

    public void setSensorOrientation(int orientation) {
        if (this.mAudioPlayIcon != null) {
            this.mAudioPlayIcon.setRotation(RotationUtil.getAngle(orientation));
        }
    }

    public void destroy() {
        if (this.mAudioTrack != null) {
            this.mAudioTrack.release();
            this.mAudioTrack = null;
        }
        if (this.mAutoReviewBase != null) {
            this.mAutoReviewBase.setOnTouchListener(null);
        }
        if (this.mPictureImage != null) {
            this.mPictureImage.setOnTouchListener(null);
        }
        if (this.mAudioPlayIcon != null) {
            this.mAudioPlayIcon.setOnClickListener(null);
        }
        this.mPlayThread = null;
        if (this.mAudioPlayIcon != null) {
            this.mAudioPlayIcon.setVisibility(View.INVISIBLE);
        }
        enableAudioPlayer(false);
    }
}