package com.sonyericsson.cameracommon.sound;

import android.media.MediaActionSound;
import android.os.Handler;
import com.sonyericsson.cameracommon.utility.Log;

/* loaded from: classes.dex */
public class CameraActionSound {
    public static final int FOCUS_COMPLETE = 1;
    private static int RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS = 4000;
    public static final int SHUTTER_CLICK = 0;
    public static final int START_VIDEO_RECORDING = 2;
    public static final int STOP_VIDEO_RECORDING = 3;
    private static final String TAG = "CameraActionSound";
    private final Handler mHandler;
    private MediaActionSound mMediaActionSound = new MediaActionSound();
    private boolean mIsReleased = false;

    public CameraActionSound(Handler handler) {
        this.mHandler = handler;
    }

    public void load(int soundName) {
        synchronized (this) {
            Log.logDebug(TAG, "load() isReleased:" + this.mIsReleased);
            if (!this.mIsReleased) {
                this.mMediaActionSound.load(soundName);
            }
        }
    }

    public void play(int soundName) {
        synchronized (this) {
            Log.logDebug(TAG, "play() isReleased:" + this.mIsReleased + " name:" + soundName);
            if (this.mIsReleased) {
                MediaActionSound sound = new MediaActionSound();
                sound.play(soundName);
                releaseDelay(sound);
            } else {
                this.mMediaActionSound.play(soundName);
            }
        }
    }

    public void release() {
        synchronized (this) {
            Log.logDebug(TAG, "release() isReleased:" + this.mIsReleased);
            if (!this.mIsReleased) {
                this.mIsReleased = true;
                releaseDelay(this.mMediaActionSound);
                this.mMediaActionSound = null;
            }
        }
    }

    private void releaseDelay(final MediaActionSound sound) {
        Log.logDebug(TAG, "releaseDelay() isReleased:" + this.mIsReleased);
        this.mHandler.postDelayed(new Runnable() { // from class: com.sonyericsson.cameracommon.sound.CameraActionSound.1
            @Override // java.lang.Runnable
            public void run() {
                sound.release();
            }
        }, RELEASE_MEDIA_ACTION_SOUND_DELAY_MILLIS);
    }
}