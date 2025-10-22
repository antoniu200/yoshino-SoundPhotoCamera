package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public abstract class FrameBase extends RenderBase implements AlphaBlendable {
    private static final int DEFAULT_TEXCOORD_INDEX = 1;
    private static final int DEFAULT_VERTEX_INDEX = 0;
    private static final int INVALID_INDEX_IN_GLSL = -1;
    public static final String TAG = "FrameBase";
    protected float mAlpha;
    protected int mMvpMatrixInGLSL;
    protected int mShaderProgram;
    protected int[] mTexCoordBuffers;
    protected int mTexCoordInGLSL;
    protected int[] mVertexBuffers;
    protected int mVertexInGLSL;

    protected abstract void doRender();

    protected FrameBase(Context context, View rootView) {
        super(context, rootView);
        this.mShaderProgram = 0;
        this.mVertexBuffers = new int[1];
        this.mTexCoordBuffers = new int[1];
        this.mAlpha = 1.0f;
    }

    public void setShaderProgram(int shaderProgram) {
        this.mShaderProgram = shaderProgram;
        try {
            initializeShaderProgram();
        } catch (OpenGlException e) {
            CameraLogger.e(TAG, "OpenGL initialize Error.", e);
        }
    }

    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_VERTEX);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_TEXTURE_COORD);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        checkAndBindAttriLocation();
        this.mMvpMatrixInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_VERTEX_MVP_MATRIX);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        int[] statusChecker = new int[1];
        GLES20.glGetProgramiv(this.mShaderProgram, 35714, statusChecker, 0);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (statusChecker[0] == 0) {
            CameraLogger.e(TAG, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]");
            throw new OpenGlException("TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]");
        }
        initializeVertexAndTextureCoordinatesBuffer();
    }

    private void checkAndBindAttriLocation() throws OpenGlException {
        if (this.mVertexInGLSL == -1 || this.mTexCoordInGLSL == -1) {
            CameraLogger.e(TAG, "checkAndBindAttriLocation: mVertexInGLSL = " + this.mVertexInGLSL + "mTexCoordInGLSL = " + this.mTexCoordInGLSL);
            this.mVertexInGLSL = 0;
            GLES20.glBindAttribLocation(this.mShaderProgram, this.mVertexInGLSL, ShaderProgramFactory.GLSL_FIELD_ID_VERTEX);
            ExtendedGlSurfaceView.checkGlErrorWithException();
            this.mTexCoordInGLSL = 1;
            GLES20.glBindAttribLocation(this.mShaderProgram, this.mTexCoordInGLSL, ShaderProgramFactory.GLSL_FIELD_ID_TEXTURE_COORD);
            ExtendedGlSurfaceView.checkGlErrorWithException();
            GLES20.glLinkProgram(this.mShaderProgram);
            ExtendedGlSurfaceView.checkGlErrorWithException();
        }
    }

    protected void initializeVertexAndTextureCoordinatesBuffer() {
        float[] VERTEX = {getWidthNorm() * (-1.0f), getHeightNorm() * 1.0f, 0.0f, getWidthNorm() * (-1.0f), getHeightNorm() * (-1.0f), 0.0f, getWidthNorm() * 1.0f, getHeightNorm() * 1.0f, 0.0f, getWidthNorm() * 1.0f, getHeightNorm() * (-1.0f), 0.0f};
        float[] TEXCOORD = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        GLES20.glGenBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glGenBuffers(this.mTexCoordBuffers.length, this.mTexCoordBuffers, 0);
        updateVertexBuffer(VERTEX);
        updateTextureBuffer(TEXCOORD);
    }

    public void updateVertexBuffer(float[] vertex) {
        FloatBuffer vertexBuf = ExtendedGlSurfaceView.allocFloatBuffer(vertex);
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, vertexBuf.limit() * 4, vertexBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    public void updateTextureBuffer(float[] tex) {
        FloatBuffer texCoordBuf = ExtendedGlSurfaceView.allocFloatBuffer(tex);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glBufferData(34962, texCoordBuf.limit() * 4, texCoordBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void render() {
        if (isVisible()) {
            if (!enableLocalFunctions()) {
                CameraLogger.e(TAG, "render():[Enable functions failed.]");
                return;
            }
            doRender();
            if (!disableLocalFunctions()) {
                CameraLogger.e(TAG, "render():[Disable functions failed.]");
            }
        }
    }

    protected boolean enableLocalFunctions() {
        if (this.mVertexInGLSL != -1) {
            GLES20.glEnableVertexAttribArray(this.mVertexInGLSL);
        }
        if (this.mTexCoordInGLSL != -1) {
            GLES20.glEnableVertexAttribArray(this.mTexCoordInGLSL);
        }
        if (enableShaderProgram()) {
            return true;
        }
        CameraLogger.e(TAG, "enableFunctions():[Enable shader program failed.]");
        return false;
    }

    private boolean enableShaderProgram() {
        if (this.mShaderProgram == 0) {
            CameraLogger.e(TAG, ".enableYuv2RgbShaderProgram():[Program is Invalid]");
            return false;
        }
        GLES20.glUseProgram(this.mShaderProgram);
        GLES20.glValidateProgram(this.mShaderProgram);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".enableYuv2RgbShaderProgram():[Program Error]");
            return false;
        }
        return true;
    }

    protected boolean disableLocalFunctions() {
        if (this.mVertexInGLSL != -1) {
            GLES20.glDisableVertexAttribArray(this.mVertexInGLSL);
        }
        if (this.mTexCoordInGLSL != -1) {
            GLES20.glDisableVertexAttribArray(this.mTexCoordInGLSL);
            return true;
        }
        return true;
    }

    protected void finalizeShaderProgram() {
        this.mShaderProgram = 0;
        finalizeVertexAndTextureCoordinatesBuffer();
    }

    private void finalizeVertexAndTextureCoordinatesBuffer() {
        GLES20.glDeleteBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glDeleteBuffers(this.mTexCoordBuffers.length, this.mTexCoordBuffers, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.AlphaBlendable
    public void setAlpha(float alpha) {
        this.mAlpha = alpha;
    }
}