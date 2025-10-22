package com.sonymobile.cameracommon.media.encoder.source;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.os.Build;
import androidx.core.provider.FontsContractCompat;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.media.utility.BackgroundWorker;

/* loaded from: classes.dex */
public abstract class AudioSampleDataSourceBase implements InputDataSource, AudioRecord.OnRecordPositionUpdateListener {
    protected static final long INPUTBUFFER_TIMEOUT_MICROSECONDS = 100000;
    protected static final int NOTIFICATION_COUNT_PER_SECOND = 10;
    private volatile boolean mAlreadyEos;
    private final byte[] mAudioBuffer;
    private final AudioRecord mAudioRecord;
    private final MediaCodec mCodec;
    private final int mMinBufferSize;
    private final int mNotificationPeriod;
    private long mSampleCount;
    private final int mSampleDataBytes;
    private final int mSampleRate;
    private final BackgroundWorker mWorker;

    protected abstract long pushToEncoder(byte[] bArr, int i, boolean z);

    public AudioSampleDataSourceBase(MediaCodec codec, int sampleRate, int channels, int format) {
        if (codec == null) {
            throw new IllegalArgumentException("MediaCodec cannot be null");
        }
        this.mCodec = codec;
        this.mSampleRate = sampleRate;
        this.mSampleDataBytes = bytesInFrame(format) * channels;
        int channelConfig = channels == 2 ? 12 : 16;
        this.mMinBufferSize = AudioRecord.getMinBufferSize(this.mSampleRate, channelConfig, format);
        this.mAudioRecord = new AudioRecord(1, this.mSampleRate, channelConfig, format, getBufferSize());
        if (this.mAudioRecord.getState() == 0) {
            throw new IllegalArgumentException("AudioRecord failed to initialize. Parameters might be invalid");
        }
        this.mAudioBuffer = new byte[getAudioBufferSize()];
        this.mNotificationPeriod = this.mSampleRate / 10;
        this.mWorker = new BackgroundWorker("AudioSampleDataReaderThread");
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void release() {
        this.mAudioRecord.release();
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void start() throws IllegalStateException {
        this.mSampleCount = 0L;
        int r = this.mAudioRecord.setPositionNotificationPeriod(this.mNotificationPeriod);
        if (r != 0) {
            CameraLogger.e("setPositionNotificationPeriod:failed");
        }
        this.mAudioRecord.setRecordPositionUpdateListener(this, this.mWorker.getHandler());
        this.mAudioRecord.startRecording();
        requestToReadSampleData(false);
    }

    @Override // com.sonymobile.cameracommon.media.encoder.InputDataSource
    public void stop() throws IllegalStateException {
        this.mAudioRecord.stop();
        requestToReadSampleData(true);
        this.mWorker.quit();
    }

    @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
    public void onMarkerReached(AudioRecord recorder) {
    }

    @Override // android.media.AudioRecord.OnRecordPositionUpdateListener
    public void onPeriodicNotification(AudioRecord recorder) {
        readSampleData(false);
    }

    protected static boolean isCancelled() {
        return Thread.currentThread().isInterrupted();
    }

    protected long getPresentationTime(long additionalSampleCount) {
        return (1000000 * (this.mSampleCount + additionalSampleCount)) / this.mSampleRate;
    }

    protected AudioRecord getAudioRecord() {
        return this.mAudioRecord;
    }

    protected MediaCodec getCodec() {
        return this.mCodec;
    }

    protected int getSampleRate() {
        return this.mSampleRate;
    }

    protected int getSampleDataBytes() {
        return this.mSampleDataBytes;
    }

    protected BackgroundWorker getBackgroundWorker() {
        return this.mWorker;
    }

    protected void addSampleCount(long count) {
        this.mSampleCount += count;
    }

    protected int getBufferSize() {
        return this.mMinBufferSize * 8;
    }

    protected int getAudioBufferSize() {
        return this.mMinBufferSize * 8;
    }

    protected int getMinBufferSize() {
        return this.mMinBufferSize;
    }

    private void requestToReadSampleData(final boolean eos) {
        this.mWorker.getHandler().post(new Runnable() { // from class: com.sonymobile.cameracommon.media.encoder.source.AudioSampleDataSourceBase.1
            @Override // java.lang.Runnable
            public void run() {
                AudioSampleDataSourceBase.this.readSampleData(eos);
            }
        });
    }

    private int bytesInFrame(int format) {
        switch (format) {
            case 2:
                return 2;
            case 3:
                return 1;
            default:
                throw new IllegalStateException("Specified Audio format is not supported.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readSampleData(boolean isEos) {
        int readBytes;
        if (!this.mAlreadyEos) {
            if (Build.VERSION.SDK_INT >= 23) {
                readBytes = this.mAudioRecord.read(this.mAudioBuffer, 0, this.mAudioBuffer.length, AudioRecord.READ_NON_BLOCKING);
            } else {
                readBytes = this.mAudioRecord.read(this.mAudioBuffer, 0, this.mAudioBuffer.length);
            }
            switch (readBytes) {
                case FontsContractCompat.FontRequestCallback.FAIL_REASON_FONT_LOAD_ERROR /* -3 */:
                    isEos = true;
                    break;
                case -2:
                    return;
            }
            long writtenTime = pushToEncoder(this.mAudioBuffer, readBytes, isEos);
            addSampleCount(writtenTime);
            if (isEos) {
                this.mAlreadyEos = true;
            }
        }
    }
}
