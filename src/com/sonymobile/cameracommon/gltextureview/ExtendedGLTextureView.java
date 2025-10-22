package com.sonymobile.cameracommon.gltextureview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.os.SystemClock;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.OpenGlException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class ExtendedGLTextureView extends GLTextureView {
    public static final float Z_ORDER_STEP_SIZE = 2.0E-5f;
    private RenderingThread mContinuousRenderingThread;
    private final boolean mIsContinuousRenderingRequired;
    private final int mRequiredRenderingInterval;

    private class RenderingThread extends Thread {
        private final int mInterval;
        private boolean mIsAlive = true;

        public RenderingThread(int interval) {
            this.mInterval = interval;
        }

        public void release() {
            this.mIsAlive = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.mIsAlive) {
                long requestTime = SystemClock.elapsedRealtime();
                ExtendedGLTextureView.this.requestRender();
                long spentTime = SystemClock.elapsedRealtime() - requestTime;
                long interval = this.mInterval - spentTime;
                if (interval > 0) {
                    try {
                        Thread.sleep(interval);
                    } catch (Exception e) {
                        CameraLogger.e("TraceLog", "Fail to sleep.", e);
                    }
                }
            }
        }
    }

    public ExtendedGLTextureView(Context context) {
        super(context);
        this.mContinuousRenderingThread = null;
        this.mIsContinuousRenderingRequired = false;
        this.mRequiredRenderingInterval = 0;
    }

    public ExtendedGLTextureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContinuousRenderingThread = null;
        this.mIsContinuousRenderingRequired = false;
        this.mRequiredRenderingInterval = 0;
    }

    public ExtendedGLTextureView(Context context, boolean isContinuousRenderingRequired, int requiredFps) {
        super(context);
        this.mContinuousRenderingThread = null;
        this.mIsContinuousRenderingRequired = isContinuousRenderingRequired;
        this.mRequiredRenderingInterval = 1000 / requiredFps;
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void onResume() {
        super.onResume();
        if (this.mIsContinuousRenderingRequired) {
            this.mContinuousRenderingThread = new RenderingThread(this.mRequiredRenderingInterval);
            this.mContinuousRenderingThread.setPriority(10);
            this.mContinuousRenderingThread.start();
        }
    }

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView
    public void onPause() {
        if (this.mContinuousRenderingThread != null) {
            this.mContinuousRenderingThread.release();
            try {
                this.mContinuousRenderingThread.join(1000L);
            } catch (Exception e) {
                CameraLogger.e("TraceLog", "Fail to join.", e);
            }
            this.mContinuousRenderingThread = null;
        }
        super.onPause();
    }

    public static void checkGlErrorWithException() throws OpenGlException {
        int error = GLES20.glGetError();
        if (error != 0) {
            String message = String.format("OpenGL error [0x%08x].", Integer.valueOf(error));
            throw new OpenGlException(message);
        }
    }

    public static boolean isGlErrorOccured() {
        int error = GLES20.glGetError();
        if (error == 0) {
            return false;
        }
        CameraLogger.e("TraceLog", String.format("OpenGL error [0x%08x].", Integer.valueOf(error)));
        return true;
    }

    public static FloatBuffer allocFloatBuffer(float[] array) {
        FloatBuffer fBuf = ByteBuffer.allocateDirect((array.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        fBuf.put(array);
        fBuf.position(0);
        return fBuf;
    }

    static String loadShaderSourceCodesFrom(Context context, int glslFileId) {
        BufferedReader br = null;
        StringBuilder builder = new StringBuilder();
        try {
            Resources res = context.getResources();
            br = new BufferedReader(new InputStreamReader(res.openRawResource(glslFileId)));
            String line = br.readLine();
            while (line != null) {
                builder.append(line); // smali appends without newline
                line = br.readLine();
            }
        } catch (IOException e) {
            CameraLogger.e("TraceLog", "Can not load shader file.", e);
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    CameraLogger.e("TraceLog", "Fail to close BufferedReader.", e);
                }
            }
        }
        return builder.toString();
    }

    private static float[] get4x4TranslationMatrix(float transX, float transY, float transZ) {
        float[] transMatrix = new float[16];
        Matrix.setIdentityM(transMatrix, 0);
        Matrix.translateM(transMatrix, 0, transX, transY, transZ);
        return transMatrix;
    }

    private static float[] get4x4RotationMatrix(float rotDeg, float vecX, float vecY, float vecZ) {
        float[] rotMatrix = new float[16];
        Matrix.setIdentityM(rotMatrix, 0);
        Matrix.rotateM(rotMatrix, 0, rotDeg, vecX, vecY, vecZ);
        return rotMatrix;
    }

    private static float[] get4x4ScalingMatrix(float scaleX, float scaleY, float scaleZ) {
        float[] scalingMatrix = new float[16];
        Matrix.setIdentityM(scalingMatrix, 0);
        Matrix.scaleM(scalingMatrix, 0, scaleX, scaleY, scaleZ);
        return scalingMatrix;
    }

    public static void translate(float[] matrix, float transX, float transY, float transZ) {
        float[] transMat = get4x4TranslationMatrix(transX, transY, transZ);
        Matrix.multiplyMM(matrix, 0, transMat, 0, matrix, 0);
    }

    public static void rotate(float[] matrix, float rotRadX, float rotRadY, float rotRadZ) {
        float[] rotX = get4x4RotationMatrix((180.0f * rotRadX) / 3.1415927f, 1.0f, 0.0f, 0.0f);
        Matrix.multiplyMM(matrix, 0, rotX, 0, matrix, 0);
        float[] rotY = get4x4RotationMatrix((180.0f * rotRadY) / 3.1415927f, 0.0f, 1.0f, 0.0f);
        Matrix.multiplyMM(matrix, 0, rotY, 0, matrix, 0);
        float[] rotZ = get4x4RotationMatrix((180.0f * rotRadZ) / 3.1415927f, 0.0f, 0.0f, 1.0f);
        Matrix.multiplyMM(matrix, 0, rotZ, 0, matrix, 0);
    }

    public static void scale(float[] matrix, float scaleX, float scaleY, float scaleZ) {
        float[] scaleMat = get4x4ScalingMatrix(scaleX, scaleY, scaleZ);
        Matrix.multiplyMM(matrix, 0, scaleMat, 0, matrix, 0);
    }

    public static void bindTextureAndBitmap(int textureObject, Bitmap bmp) {
        GLES20.glBindTexture(3553, textureObject);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        GLUtils.texImage2D(3553, 0, 6408, bmp, 0);
        GLES20.glBindTexture(3553, 0);
    }

    public static boolean loadBitmapFromResourceAs9Patch(Context context, Bitmap bitmap, int resId, Rect ninePatchBounds) {
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inScaled = false;
        option.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap rawBmp = BitmapFactory.decodeResource(context.getResources(), resId, option);
        if (rawBmp.getNinePatchChunk() == null) {
            rawBmp.recycle();
            return false;
        }
        NinePatchDrawable npd = new NinePatchDrawable(context.getResources(), rawBmp, rawBmp.getNinePatchChunk(), null, null);
        npd.setBounds(ninePatchBounds);
        Canvas c = new Canvas(bitmap);
        npd.draw(c);
        rawBmp.recycle();
        return true;
    }
}
