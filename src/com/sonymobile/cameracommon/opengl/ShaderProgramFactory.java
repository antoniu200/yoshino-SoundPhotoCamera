package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import com.sonymobile.android.addoncamera.soundphoto.R;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.io.IOException;

/* loaded from: classes.dex */
public class ShaderProgramFactory {
    public static final String GLSL_FIELD_ID_ALPHA_MASK_TEXTURE = "uAlphaMaskTexture";
    public static final String GLSL_FIELD_ID_ATTRIB_TEXCOORD = "aTexCoord";
    public static final String GLSL_FIELD_ID_ATTRIB_VERTEX = "aVertex";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD = "uBlurSpread";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT = "uCenterWeight";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD = "uLod";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET = "uSpreadOffset";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT = "uTextureHeight";
    public static final String GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH = "uTextureWidth";
    public static final String GLSL_FIELD_ID_MASK_TEXTURE_COORD = "aMaskTexCoord";
    public static final String GLSL_FIELD_ID_SAMPLER2D_TEXTURE = "sTexture";
    public static final String GLSL_FIELD_ID_SIMPLE_COLOR = "simpleColor";
    public static final String GLSL_FIELD_ID_TEXTURE_COORD = "texCoord";
    public static final String GLSL_FIELD_ID_TEXTURE_RGB = "uTextureRgb";
    public static final String GLSL_FIELD_ID_TEXTURE_U = "textureU";
    public static final String GLSL_FIELD_ID_TEXTURE_V = "textureV";
    public static final String GLSL_FIELD_ID_TEXTURE_VU = "textureVu";
    public static final String GLSL_FIELD_ID_TEXTURE_Y = "textureY";
    public static final String GLSL_FIELD_ID_UNIFORM_ALPHA = "uAlpha";
    public static final String GLSL_FIELD_ID_UNIFORM_MVPMATRIX = "uMvpMatrix";
    public static final String GLSL_FIELD_ID_VERTEX = "vertex";
    public static final String GLSL_FIELD_ID_VERTEX_ALPHA = "vertexAlpha";
    public static final String GLSL_FIELD_ID_VERTEX_MVP_MATRIX = "mvpMatrix";
    public static final String TAG = "ShaderProgramFactory";

    public static int createYuvFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_yuv_frame_vertex}, new int[]{R.raw.opengl_yuv_frame_fragment});
        return shaderProgram;
    }

    public static int createVertexAlphYuvFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_vertex_alpha_yuv_frame_vertex}, new int[]{R.raw.opengl_vertex_alpha_yuv_frame_fragment});
        return shaderProgram;
    }

    public static int createRgbFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_rgb_frame_vertex}, new int[]{R.raw.opengl_rgb_frame_fragment});
        return shaderProgram;
    }

    public static int createSimpleFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_simpleframe_vertex}, new int[]{R.raw.opengl_simpleframe_fragment});
        return shaderProgram;
    }

    public static int createCopyFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_copyframe_vertex}, new int[]{R.raw.opengl_copyframe_fragment});
        return shaderProgram;
    }

    public static int createBlurredYuvFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_blurred_yuv_frame_vertex}, new int[]{R.raw.opengl_blurred_yuv_frame_fragment});
        return shaderProgram;
    }

    public static int createAlphaMaskedYuvFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_alpha_masked_yuv_frame_vertex}, new int[]{R.raw.opengl_alpha_masked_yuv_frame_fragment});
        return shaderProgram;
    }

    public static int createAlphaMaskedBlurredYuvFrameShaderProgram(Context context) throws OpenGlException {
        int shaderProgram = createShaderProgram(context, new int[]{R.raw.opengl_alpha_masked_blurred_yuv_frame_vertex}, new int[]{R.raw.opengl_alpha_masked_blurred_yuv_frame_fragment});
        return shaderProgram;
    }

    public static int createShaderProgramFromClientApplicationContext(Context context, int vertexShaderFileId, int fragmentShaderFileId) throws OpenGlException {
        return createShaderProgram(context, new int[]{vertexShaderFileId}, new int[]{fragmentShaderFileId});
    }

    public static int createShaderProgramFromClientApplicationContext(Context context, int[] vertexShaderFileId, int[] fragmentShaderFileId) throws OpenGlException {
        return createShaderProgram(context, vertexShaderFileId, fragmentShaderFileId);
    }

    private static int createShaderProgram(Context context,
                                           int[] vertexShaderFileId,
                                           int[] fragmentShaderFileId) throws OpenGlException {
        int shaderProgram = 0;
        int vertexShader  = 0;
        int fragmentShader = 0;
        final int[] compileStatusChecker = new int[1];

        try {
            // --- Vertex shader ---
            final String vertexShaderSrc =
                    ExtendedGlSurfaceView.loadShaderSourceCodesFrom(context, vertexShaderFileId);

            vertexShader = GLES20.glCreateShader(GLES20.GL_VERTEX_SHADER);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glShaderSource(vertexShader, vertexShaderSrc);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glCompileShader(vertexShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glGetShaderiv(vertexShader, GLES20.GL_COMPILE_STATUS, compileStatusChecker, 0);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            if (compileStatusChecker[0] == 0) {
                final String message = "ShaderProgramFactory.createShaderProgram():[VS Compile Error]";
                CameraLogger.e("ShaderProgramFactory", message);
                final String shaderMessage = GLES20.glGetShaderInfoLog(vertexShader);
                CameraLogger.e("ShaderProgramFactory", shaderMessage);
                throw new OpenGlException(message);
            }

            // --- Fragment shader ---
            final String fragmentShaderSrc =
                    ExtendedGlSurfaceView.loadShaderSourceCodesFrom(context, fragmentShaderFileId);

            fragmentShader = GLES20.glCreateShader(GLES20.GL_FRAGMENT_SHADER);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glShaderSource(fragmentShader, fragmentShaderSrc);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glCompileShader(fragmentShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glGetShaderiv(fragmentShader, GLES20.GL_COMPILE_STATUS, compileStatusChecker, 0);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            if (compileStatusChecker[0] == 0) {
                final String message = "ShaderProgramFactory.createShaderProgram():[FS Compile Error]";
                CameraLogger.e("ShaderProgramFactory", message);
                final String shaderMessage = GLES20.glGetShaderInfoLog(fragmentShader);
                CameraLogger.e("ShaderProgramFactory", shaderMessage);
                throw new OpenGlException(message);
            }

            // --- Program link ---
            shaderProgram = GLES20.glCreateProgram();

            GLES20.glAttachShader(shaderProgram, vertexShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glAttachShader(shaderProgram, fragmentShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            // smali deletes the shader objects after attaching
            GLES20.glDeleteShader(vertexShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glDeleteShader(fragmentShader);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            GLES20.glLinkProgram(shaderProgram);
            ExtendedGlSurfaceView.checkGlErrorWithException();

            // ⚠️ smali quirk:
            // It *does not* call glGetProgramiv(GL_LINK_STATUS, …).
            // It reuses compileStatusChecker[0] and throws only if it's 0.
            // That means link errors won't be reported here (only compile errors were).
            // We mirror that behavior exactly:
            if (compileStatusChecker[0] == 0) {
                final String message = "ShaderProgramFactory.createShaderProgram():[Program link Error]";
                CameraLogger.e("ShaderProgramFactory", message);
                throw new OpenGlException(message);
            }

            return shaderProgram;

        } catch (OpenGlException e) {
            CameraLogger.e("ShaderProgramFactory", "Fail to create ShaderProgram.", e);
            if (vertexShader != 0)  GLES20.glDeleteShader(vertexShader);
            if (fragmentShader != 0) GLES20.glDeleteShader(fragmentShader);
            deleteShaderProgram(shaderProgram);
            shaderProgram = 0;
            throw e;
        }
    }

    public static void deleteShaderProgram(int shaderProgram) {
        if (shaderProgram != 0) {
            GLES20.glDeleteProgram(shaderProgram);
            if (ExtendedGlSurfaceView.isGlErrorOccured()) {
                CameraLogger.e(TAG, "deleteShaderProgram():[Delete Program Error]");
            }
        }
    }
}