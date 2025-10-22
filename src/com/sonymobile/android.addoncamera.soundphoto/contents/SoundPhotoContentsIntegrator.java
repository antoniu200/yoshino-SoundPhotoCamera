package com.sonymobile.android.addoncamera.soundphoto.contents;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.location.Location;
import android.os.Handler;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.Yuv2ExifJpegConvertor;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.android.addoncamera.soundphoto.contents.BackgroundTaskRunner;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import com.sonymobile.cameracommon.mpolib.MpoWriter;
import com.sonymobile.cameracommon.spflib.SpfEditor;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class SoundPhotoContentsIntegrator {
    private static final int EXPANDED_SPACE_LENGTH_FOR_SPF = 5120;
    private static final int PROCESSING_TASK_NUMBER_LIMIT = 2;
    private static final int YUV2JPEG_TASK_NUMBER_LIMIT = 3;
    private static final boolean sIsDebugFormat = false;
    private final Context mContext;
    private static final String TAG = SoundPhotoContentsIntegrator.class.getSimpleName();
    private static int sDebugIdGen = 0;
    private final BackgroundTaskRunner mMainTaskRunner = new BackgroundTaskRunner(Executors.newSingleThreadExecutor());
    private final ExecutorService mAudioEncodeTaskExecutor = Executors.newSingleThreadExecutor();
    private final Handler mHandler = new Handler();

    static /* synthetic */ int access$104() {
        int i = sDebugIdGen + 1;
        sDebugIdGen = i;
        return i;
    }

    public SoundPhotoContent createContent(AudioData audio, PreviewFrameData previewFramesData, PhotoSavingRequest pictureData) {
        return new SoundPhotoContent(audio, previewFramesData, pictureData);
    }

    public SoundPhotoContentsIntegrator(Context context) {
        this.mContext = context;
    }

    public void cancelAll() {
        this.mMainTaskRunner.cancelAll();
    }

    public boolean canCreateNewContent() {
        return this.mMainTaskRunner.getTaskCount() < 2;
    }

    private static class EncodedAudioData {
        public final byte[] audioData;
        public final int audioDuration;
        public final boolean result;

        public EncodedAudioData(boolean result, byte[] audioData, int audioDuration) {
            this.result = result;
            this.audioData = audioData;
            this.audioDuration = audioDuration;
        }
    }

    private class AudioEncodeTask implements Callable<EncodedAudioData> {
        public final AudioData audio;

        public AudioEncodeTask(AudioData audioData) {
            this.audio = audioData;
        }

        @Override // java.util.concurrent.Callable
        public EncodedAudioData call() {
            byte[] audioData = this.audio.makeMp4();
            int audioDuration = (int) this.audio.duration();
            if (audioData == null) {
                return new EncodedAudioData(false, null, audioDuration);
            }
            return new EncodedAudioData(true, audioData, audioDuration);
        }
    }

    public class SoundPhotoContent {
        public final AudioData audio;
        private final int mDebugId;
        public final PhotoSavingRequest picture;
        public final PreviewFrameData previewFrames;

        private String debugTag() {
            return "CONTENT[" + this.mDebugId + "] ";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void trace(String message) {
        }

        private SoundPhotoContent(AudioData audioData, PreviewFrameData previewFramesData, PhotoSavingRequest pictureData) {
            this.mDebugId = SoundPhotoContentsIntegrator.access$104();
            this.audio = audioData;
            this.previewFrames = previewFramesData;
            this.picture = pictureData;
            trace("CREATED");
        }

        public void store(SavingTaskManager savingTaskManager) {
            SoundPhotoContentsIntegrator.this.mMainTaskRunner.put(new MainTask(savingTaskManager));
        }

        public void setStoreFinishedListener(SavingRequest.StoreDataCallback callback) {
            this.picture.addCallback(callback);
        }

        private class MainTask implements BackgroundTaskRunner.BackgroundTask {
            private final SavingTaskManager mSavingTaskManager;

            public MainTask(SavingTaskManager savingTaskManager) {
                this.mSavingTaskManager = savingTaskManager;
                SoundPhotoContent.this.trace("CRETAE MAIN TASK");
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Future<EncodedAudioData> audioEncodeResponse = SoundPhotoContentsIntegrator.this.mAudioEncodeTaskExecutor.submit(SoundPhotoContentsIntegrator.this.new AudioEncodeTask(SoundPhotoContent.this.audio));
                    SoundPhotoContent.this.trace("GENERATING SINGLE PHOTO...");
                    byte[] singlePhoto = SoundPhotoContentsIntegrator.makeMpf(SoundPhotoContent.this.picture.getImageData());
                    if (singlePhoto == null) {
                        fail();
                        return;
                    }
                    SoundPhotoContent.this.trace("GENERATING SINGLE PHOTO FINISHED");
                    byte[] multiplePhoto = null;
                    if (SoundPhotoContent.this.previewFrames != null) {
                        SoundPhotoContent.this.trace("GENERATING MULTIPLE PHOTO...");
                        multiplePhoto = SoundPhotoContentsIntegrator.this.makeMpf(SoundPhotoContent.this.previewFrames, SoundPhotoContent.this.picture.getImageData(), SoundPhotoContent.this.picture.getDateTaken(), SoundPhotoContent.this.picture.common.orientation, SoundPhotoContent.this.picture.common.location);
                        if (multiplePhoto == null) {
                            fail();
                            return;
                        }
                        SoundPhotoContent.this.trace("GENERATING MULTIPLE PHOTO FINISHED");
                    }
                    SoundPhotoContent.this.trace("WAIT FOR ENCODING AUDIO...");
                    EncodedAudioData encodedAudioData = waitForEncodingAudio(audioEncodeResponse);
                    SoundPhotoContent.this.trace("WAIT FOR ENCODING AUDIO FINISHED");
                    if (encodedAudioData == null || !encodedAudioData.result) {
                        fail();
                        return;
                    }
                    SoundPhotoContent.this.trace("PUT AUDIO DATA INTO JPEG...");
                    byte[] pictureAudioData = SoundPhotoContentsIntegrator.makeSpf(singlePhoto, encodedAudioData.audioData, encodedAudioData.audioDuration);
                    SoundPhotoContent.this.trace("PUT AUDIO DATA INTO JPEG FINISHED");
                    byte[] animationPictureAudioData = null;
                    if (SoundPhotoContent.this.previewFrames != null && multiplePhoto != null) {
                        SoundPhotoContent.this.trace("PUT AUDIO DATA INTO MPO...");
                        animationPictureAudioData = SoundPhotoContentsIntegrator.makeSpf(multiplePhoto, encodedAudioData.audioData, encodedAudioData.audioDuration);
                        SoundPhotoContent.this.trace("PUT AUDIO DATA INTO MPO FINISHED");
                    }
                    SoundPhotoContent.this.picture.setImageData(pictureAudioData);
                    this.mSavingTaskManager.request(new SoundPhotoSavingTask(SoundPhotoContentsIntegrator.this.mContext, this.mSavingTaskManager, SoundPhotoContent.this.picture, animationPictureAudioData));
                } finally {
                    release();
                }
            }

            @Override // com.sonymobile.android.addoncamera.soundphoto.contents.BackgroundTaskRunner.BackgroundTask
            public void onCanceled() {
                SoundPhotoContent.this.trace("CANCELED");
                fail();
                release();
            }

            private void fail() {
                SoundPhotoContent.this.trace("FAILED");
                final PhotoSavingRequest request = SoundPhotoContent.this.picture;
                if (request != null) {
                    SoundPhotoContentsIntegrator.this.mHandler.post(new Runnable() { // from class: com.sonymobile.android.addoncamera.soundphoto.contents.SoundPhotoContentsIntegrator.SoundPhotoContent.MainTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            request.notifyStoreFailed(MediaSavingResult.FAIL);
                        }
                    });
                }
            }

            private void release() {
                if (SoundPhotoContent.this.audio != null) {
                    SoundPhotoContent.this.audio.clearSamples();
                }
                if (SoundPhotoContent.this.previewFrames != null) {
                    SoundPhotoContent.this.previewFrames.clear();
                }
            }

            private EncodedAudioData waitForEncodingAudio(Future<EncodedAudioData> response) {
                try {
                    return response.get();
                } catch (InterruptedException e) {
                    return null;
                } catch (ExecutionException e2) {
                    return null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeSpf(byte[] imageData, byte[] audioData, long audioDuration) {
        byte[] result = null;
        NativeByteBufferHolder imageDataBuffer = NativeByteBufferHolder.allocate(imageData.length + audioData.length + EXPANDED_SPACE_LENGTH_FOR_SPF);
        if (imageDataBuffer.get() != null) {
            try {
                imageDataBuffer.get().limit(imageData.length);
                imageDataBuffer.get().rewind();
                imageDataBuffer.get().put(imageData);
                int preDuration = ((int) audioDuration) - 2000;
                SpfEditor.SoundMetaData metaData = new SpfEditor.SoundMetaData();
                metaData.setDuration((int) audioDuration);
                metaData.setPreDuration(Math.max(0, preDuration));
                metaData.setShutterSoundStatus(SpfEditor.ShutterSoundStatus.NONE);
                SpfEditor spf = new SpfEditor(imageDataBuffer.get());
                if (spf.addSoundData(SpfEditor.SoundCodec.AAC, metaData, audioData)) {
                    result = new byte[imageDataBuffer.get().limit()];
                    imageDataBuffer.get().rewind();
                    imageDataBuffer.get().get(result);
                    spf.release();
                } else {
                    spf.release();
                    imageDataBuffer.decrementRefCount();
                }
            } finally {
                imageDataBuffer.decrementRefCount();
            }
        }
        return result;
    }

    private static class YuvToJpegTask implements Callable<byte[]> {
        private final ExifInfo.ByteOrder mExifByteOrder;
        private final ExifInfo mExifInfo;
        private final NativeByteBufferHolder mFrame;
        private final Rect mImageRect;
        private final int mIndex;
        private final PreviewFrameData mPrevireFrames;
        private final BlockingQueue<byte[]> mWorkBuffers;

        public YuvToJpegTask(int index, NativeByteBufferHolder frame, PreviewFrameData previreFrames, Rect imageRect, ExifInfo.ByteOrder exifByteOrder, ExifInfo exifInfo, BlockingQueue<byte[]> workBuffers) {
            this.mFrame = frame;
            this.mPrevireFrames = previreFrames;
            this.mIndex = index;
            this.mImageRect = imageRect;
            this.mExifByteOrder = exifByteOrder;
            this.mExifInfo = exifInfo;
            this.mWorkBuffers = workBuffers;
        }

        @Override // java.util.concurrent.Callable
        public byte[] call() throws InterruptedException, IOException {
            try {
                byte[] yuvData = this.mWorkBuffers.take();
                this.mFrame.get().rewind();
                this.mFrame.get().get(yuvData);
                byte[] jpegData = compressToJpeg(yuvData);
                this.mWorkBuffers.put(yuvData);
                if (jpegData == null) {
                    return null;
                }
                if (this.mExifByteOrder == null) {
                    CameraLogger.e(SoundPhotoContentsIntegrator.TAG, "Exif byte order of picture data is unknown.");
                } else {
                    byte[] jpegDataWithExif = Yuv2ExifJpegConvertor.addExifToPlainJpeg(jpegData, this.mExifInfo);
                    if (jpegDataWithExif == null) {
                        CameraLogger.e(SoundPhotoContentsIntegrator.TAG, "Failed to add EXIF into flame");
                    } else {
                        jpegData = jpegDataWithExif;
                    }
                }
                return jpegData;
            } catch (InterruptedException e) {
                CameraLogger.e(SoundPhotoContentsIntegrator.TAG, "To take from work buffers is interrupted.");
                return null;
            }
        }

        private byte[] compressToJpeg(byte[] yuvData) {
            YuvImage yuvImage = new YuvImage(yuvData, this.mPrevireFrames.imageFormat, this.mPrevireFrames.width, this.mPrevireFrames.height, null);
            ByteArrayOutputStream jpegDataStream = new ByteArrayOutputStream();
            if (yuvImage.compressToJpeg(this.mImageRect, 80, jpegDataStream)) {
                return jpegDataStream.toByteArray();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] makeMpf(PreviewFrameData previewFrames, byte[] pictureData, long timeStamp, int orientation, Location location) {
        try {
            BlockingQueue<byte[]> workBuffers = createWorkBuffers(((previewFrames.width * previewFrames.height) * 12) / 8, 3);
            try {
                MpoWriter.startCombineJpegToMpo(previewFrames.images.size() + 1, false);
                ExifInfo.ByteOrder exifByteOrder = Yuv2ExifJpegConvertor.getExifByteOrder(pictureData);
                ExifInfo exifInfo = new ExifInfo(timeStamp, orientation, location, previewFrames.width, previewFrames.height, exifByteOrder);
                try {
                    Rect imageRect = new Rect(0, 0, previewFrames.width, previewFrames.height);
                    List<Future<byte[]>> futures = new ArrayList<>();
                    ExecutorService mpoMakeTaskExecutor = Executors.newFixedThreadPool(workBuffers.size());
                    int iCnt = 0;
                    for (NativeByteBufferHolder frame : previewFrames.images) {
                        futures.add(mpoMakeTaskExecutor.submit(new YuvToJpegTask(iCnt, frame, previewFrames, imageRect, exifByteOrder, exifInfo, workBuffers)));
                        iCnt++;
                    }
                    for (Future<byte[]> future : futures) {
                        try {
                            byte[] jpegData = future.get();
                            if (jpegData != null) {
                                MpoWriter.addCombineJpegData(jpegData, jpegData.length);
                            }
                        } catch (InterruptedException e) {
                        } catch (ExecutionException e2) {
                        }
                    }
                    MpoWriter.addCombineJpegData(pictureData, pictureData.length);
                    byte[] outputData = MpoWriter.getOutputData();
                    MpoWriter.endCombineJpegToMpo();
                    return outputData;
                } catch (IOException e3) {
                    MpoWriter.endCombineJpegToMpo();
                    return null;
                } catch (Throwable th) {
                    MpoWriter.endCombineJpegToMpo();
                    throw th;
                }
            } catch (Exception e4) {
                return null;
            }
        } catch (InterruptedException e5) {
            return null;
        }
    }

    private BlockingQueue<byte[]> createWorkBuffers(int length, int maxCount) throws InterruptedException {
        long used = Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
        long remain = ((Runtime.getRuntime().maxMemory() * 7) / 10) - used;
        int workBufferCount = Math.max(1, Math.min(maxCount, (int) (remain / length)));
        BlockingQueue<byte[]> queue = new LinkedBlockingQueue<>();
        for (int i = 0; i < workBufferCount; i++) {
            queue.put(new byte[length]);
        }
        return queue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeMpf(byte[] pictureData) {
        byte[] mpoData = null;
        try {
            MpoWriter.startCombineJpegToMpo(1, true);
            try {
                MpoWriter.addCombineJpegData(pictureData, pictureData.length);
                mpoData = MpoWriter.getOutputData();
            } catch (IOException e) {
            } finally {
                MpoWriter.endCombineJpegToMpo();
            }
        } catch (Exception e2) {
        }
        return mpoData;
    }

    private void dumpMemoryUsage(String category) {
    }
}