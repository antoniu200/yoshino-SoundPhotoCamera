package com.sonymobile.cameracommon.media.utility;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class AudioResourceChecker {
    private static final int AUDIO_SOURCE   = MediaRecorder.AudioSource.CAMCORDER; // 5
    private static final int SAMPLE_RATE_HZ = 48000;                                // 0xBB80
    private static final int CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_STEREO;        // 12
    private static final int AUDIO_FORMAT   = AudioFormat.ENCODING_PCM_16BIT;       // 2
    private static final int BASE_BUFFER    = 0x5A00;                                // 23040
    
    private static final String MICROPHONE_ACTIVE_KEY = "is_microphone_active";
    private static final String MICROPHONE_ACTIVE_VALUE = "is_microphone_active=1";
    public static final String TAG = "AudioResourceChecker";

    public static boolean isAudioResourceAvailable(BaseActivity activity) {
        if (isAudioResourceAvailableCheckImmediately(activity)) {
            return isAudioResourceAvailableCheckWithAudioRecord();
        }
        return false;
    }

    private static synchronized boolean isAudioResourceAvailableCheckWithAudioRecord() {
        AudioRecord audioRecord = null;
        boolean available = false;
        try {
            int min = AudioRecord.getMinBufferSize(SAMPLE_RATE_HZ, CHANNEL_CONFIG, AUDIO_FORMAT);
            int bufferSize = Math.max(BASE_BUFFER, min);

            audioRecord = new AudioRecord(
                    AUDIO_SOURCE,
                    SAMPLE_RATE_HZ,
                    CHANNEL_CONFIG,
                    AUDIO_FORMAT,
                    bufferSize
            );

            // Only attempt to start if currently stopped.
            if (audioRecord.getRecordingState() == AudioRecord.RECORDSTATE_STOPPED) {
                audioRecord.startRecording();
                // If we are still STOPPED after startRecording(), the resource is not available.
                available = (audioRecord.getRecordingState() != AudioRecord.RECORDSTATE_STOPPED);
                // Stop if we managed to start.
                try {
                    audioRecord.stop();
                } catch (IllegalStateException ignore) {
                    // Mirrors smali catch blocks: ignore and continue to release
                }
            }
        } catch (IllegalStateException | IllegalArgumentException ignore) {
            // Mirrors smali behavior: swallow and report "not available"
        } finally {
            if (audioRecord != null) {
                try {
                    audioRecord.release();
                } catch (Throwable ignore) {
                    // Be defensive; smali releases unconditionally in finally
                }
            }
        }
        return available;
    }

    public static void checkAudioResourceAndShowErrorDialogIfNecessary(final BaseActivity activity) {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        executor.execute(new Runnable() { // from class: com.sonymobile.cameracommon.media.utility.AudioResourceChecker.1
            @Override // java.lang.Runnable
            public void run() {
                if (!AudioResourceChecker.isAudioResourceAvailable(activity)) {
                    activity.runOnUiThread(new Runnable() { // from class: com.sonymobile.cameracommon.media.utility.AudioResourceChecker.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            activity.getMessagePopup().showOk(R.string.cam_strings_error_video_rec_txt, R.string.cam_strings_error_dialog_title_txt, false, R.string.cam_strings_ok_txt, null, null);
                        }
                    });
                }
            }
        });
    }

    public static synchronized boolean isAudioResourceAvailableCheckImmediately(Context context) {
        String value;
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        value = am.getParameters(MICROPHONE_ACTIVE_KEY);
        return !MICROPHONE_ACTIVE_VALUE.equals(value);
    }
}