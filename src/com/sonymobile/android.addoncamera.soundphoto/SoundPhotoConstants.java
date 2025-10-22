package com.sonymobile.android.addoncamera.soundphoto;

/* loaded from: classes.dex */
public class SoundPhotoConstants {
    public static final int ANIMATION_FRAMES = 30;
    public static final int ANIMATION_FRAME_QUALITY = 80;
    public static final int CAPTURE_SOUND_DURATION_IN_SECOND = 10;
    public static final int ENCODED_AUDIO_BITRATE = 256000;
    public static final String ENCODED_AUDIO_MIMETYPE = "audio/mp4a-latm";
    public static final int POST_CAPTURE_SOUND_DURATION_IN_SECOND = 2;
    public static final int PRE_CAPTURE_SOUND_DURATION_IN_SECOND = 8;
    public static final int SOUND_BIT_PER_SECONDS = bitPerSecondsWithAudioFormat(2);
    public static final int SOUND_CHANNELS = 2;
    public static final int SOUND_FORMAT = 2;
    public static final int SOUND_SAMPLE_RATE = 48000;

    private static int bitPerSecondsWithAudioFormat(int format) {
        if (format == 2) {
            return 16;
        }
        if (format == 3) {
            return 8;
        }
        throw new IllegalArgumentException("The specified format is not supported. " + format);
    }
}