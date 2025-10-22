package com.sonyericsson.cameracommon.sound;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import java.io.IOException;

/* loaded from: classes.dex */
public class SoundPlayer {
    public static final String TAG = "SoundPlayer";
    private final MediaPlayer mMediaPlayer = new MediaPlayer();

    public static final void preload() {
    }

    public MediaPlayer asMediaPlayer() {
        return this.mMediaPlayer;
    }

    public void release() {
        synchronized (this.mMediaPlayer) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
        }
    }

    public boolean playShutterSound(String filePath) {
        return playSound(filePath);
    }

    public boolean playShutterSound(Context context, int resid) {
        return playSound(context, resid);
    }

    public boolean playAfSuccessSound() {
        return playSound(PresetConfigurationResolver.Af_SUCCESS_FILE_PATH);
    }

    private boolean playSound(String filePath) {
        boolean z = false;
        synchronized (this.mMediaPlayer) {
            if (filePath != null) {
                try {
                    this.mMediaPlayer.reset();
                    this.mMediaPlayer.setDataSource(filePath);
                    this.mMediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setFlags(1).build());
                    this.mMediaPlayer.prepare();
                    this.mMediaPlayer.start();
                    z = true;
                } catch (IOException ex) {
                    CameraLogger.e(TAG, "playSound: IOException", ex);
                    this.mMediaPlayer.reset();
                }
            }
        }
        return z;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener listener) {
        this.mMediaPlayer.setOnCompletionListener(listener);
    }

    private boolean playSound(Context context, int resid) {
        synchronized (this.mMediaPlayer) {
            AssetFileDescriptor afd = context.getResources().openRawResourceFd(resid);
            if (afd == null) {
                CameraLogger.e(TAG, "playSound: open RawResourceFd fail");
                return false;
            }
            try {
                this.mMediaPlayer.reset();
                this.mMediaPlayer.setDataSource(afd.getFileDescriptor(), afd.getStartOffset(), afd.getLength());
                // Original used literal ints (1); keep behavior but use constants for clarity.
                this.mMediaPlayer.setAudioAttributes(
                    new AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_MEDIA)
                        .setFlags(AudioAttributes.FLAG_AUDIBILITY_ENFORCED)
                        .build()
                );
                this.mMediaPlayer.prepare();
                this.mMediaPlayer.start();
                return true;
            } catch (IOException ex) {
                CameraLogger.e(TAG, "playSound: IOException", ex);
                this.mMediaPlayer.reset();
                return false;
            } finally {
                try {
                    afd.close();
                } catch (IOException e) {
                    CameraLogger.e(TAG, "playSound: close RawResourceFd fail");
                }
            }
        }
    }
}