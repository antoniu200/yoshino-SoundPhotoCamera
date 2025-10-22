package com.sonymobile.cameracommon.media.utility;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;

/* loaded from: classes.dex */
public class NotificationStreamManager {
    private final AudioManager mAudioManager;

    public NotificationStreamManager(Context context) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
    }

    public void setStreamMuteIfVersionIsHigherThanLollipop(boolean mute) {
        if (!isHigherThanLollipop()) {
            this.mAudioManager.adjustStreamVolume(5, mute ? -100 : 100, 0);
        }
    }

    private static boolean isHigherThanLollipop() {
        return Build.VERSION.SDK_INT > 21;
    }
}