package com.sonyericsson.cameracommon.utility;

import android.media.MediaRecorder;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ClassDefinitionChecker {
    public static final String TAG = "ClassDefinitionChecker";

    public static boolean isMediaRecorderPauseAndResumeSupported() {
        return MediaRecorderPauseAndResumeSupportStateHolder.sIsSupported;
    }

    private static class MediaRecorderPauseAndResumeSupportStateHolder {
        private static final boolean sIsSupported = isSupported();

        private MediaRecorderPauseAndResumeSupportStateHolder() {
        }

        private static boolean isSupported() throws SecurityException {
            boolean enablePause = false;
            for (Method method : MediaRecorder.class.getMethods()) {
                if (method.getName().equals(IntentConstants.BroadcastIntent.MUSICSERVICE_COMMAND_PAUSE) && method.getParameterTypes().length == 0) {
                    enablePause = true;
                }
            }
            return enablePause;
        }
    }
}