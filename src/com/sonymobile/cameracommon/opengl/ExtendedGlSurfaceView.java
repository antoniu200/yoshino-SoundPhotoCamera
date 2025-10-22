package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import android.util.AttributeSet;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class ExtendedGlSurfaceView extends GLSurfaceView {
    public static final boolean IS_OPENGL_DEBUG = false;
    private static final int TARGET_OPEN_GL_ES_VERSION = 2;

    public ExtendedGlSurfaceView(Context context) {
        super(context);
        setEGLContextClientVersion(2);
        setDebugFlags(3);
    }

    public ExtendedGlSurfaceView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setEGLContextClientVersion(2);
        setDebugFlags(3);
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

    public static ByteBuffer allocByteBuffer(byte[] array) {
        ByteBuffer bBuf = ByteBuffer.allocateDirect((array.length * 8) / 8).order(ByteOrder.nativeOrder());
        bBuf.put(array);
        bBuf.position(0);
        return bBuf;
    }

    static String loadShaderSourceCodesFrom(Context context, int[] glslFileId) throws IOException {
        BufferedReader br;
        BufferedReader br2 = null;
        StringBuilder builder = new StringBuilder();
        int i = 0;
        while (true) {
            try {
                br = br2;
                if (i >= glslFileId.length) {
                    break;
                }
                Resources res = context.getResources();
                br2 = new BufferedReader(new InputStreamReader(res.openRawResource(glslFileId[i])));
                try {
                    for (String line = br2.readLine(); line != null; line = br2.readLine()) {
                        builder.append(line);
                    }
                    if (br2 != null) {
                        br2.close();
                    }
                    i++;
                } catch (IOException e) {
                    e = e;
                    CameraLogger.e("TraceLog", "Can not load shader file.", e);
                    if (br2 != null) {
                        try {
                            br2.close();
                        } catch (IOException io_e) {
                            CameraLogger.e("TraceLog", "Fail to close BufferedReader.", io_e);
                        }
                    }
                    return builder.toString();
                }
            } catch (IOException e2) {
                e = e2;
                br2 = br;
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
}