package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class CopiedFrame extends FrameBase {
    public static final String TAG = "CopiedFrame";
    private int mInputTexture;
    private int mInputTextureInGLSL;

    public CopiedFrame(Context context, View rootView) {
        super(context, rootView);
        this.mInputTexture = 0;
        this.mInputTextureInGLSL = 0;
    }

    public void setInputTexture(int textureId) {
        this.mInputTexture = textureId;
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeShaderProgram();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase, com.sonymobile.cameracommon.opengl.RenderBase
    public void render() {
        if (isVisible()) {
            if (!enableLocalFunctions()) {
                CameraLogger.e(TAG, "render():[Enable functions failed.]");
                return;
            }
            GLES20.glBlendFunc(1, 771);
            doRender();
            GLES20.glBlendFunc(770, 771);
            if (!disableLocalFunctions()) {
                CameraLogger.e(TAG, "render():[Disable functions failed.]");
            }
        }
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        float[] mvpMatrix = new float[16];
        Matrix.setIdentityM(mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mSequencedLocalMatrix, 0, mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mGlobalMatrix, 0, mvpMatrix, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, mvpMatrix, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.mInputTexture);
        GLES20.glUniform1i(this.mInputTextureInGLSL, 0);
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "doRender():[Draw frame Error]");
        }
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_ATTRIB_VERTEX);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_ATTRIB_TEXCOORD);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mMvpMatrixInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_UNIFORM_MVPMATRIX);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        this.mInputTextureInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_SAMPLER2D_TEXTURE);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        int[] statusChecker = new int[1];
        GLES20.glGetProgramiv(this.mShaderProgram, 35714, statusChecker, 0);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        if (statusChecker[0] == 0) {
            CameraLogger.e(TAG, "SimpleFrame.initializeShaderProgram():[Program link Error]");
            throw new OpenGlException("SimpleFrame.initializeShaderProgram():[Program link Error]");
        }
        initializeVertexAndTextureCoordinatesBuffer();
    }

    public void setNormalizedXYAxisToScreen() {
        float[] VERTEX_BACKGROUND = {-1.0f, 1.0f, 0.0f, -1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, -1.0f, 0.0f};
        FloatBuffer vertexBuf = ExtendedGlSurfaceView.allocFloatBuffer(VERTEX_BACKGROUND);
        updateVertexBuffer(vertexBuf);
    }

    public void setAlignXYAxisCoordinates() {
        float[] VERTEX_BACKGROUND = {getWidthNorm() * (-1.0f), getHeightNorm() * 1.0f, 0.0f, getWidthNorm() * (-1.0f), getHeightNorm() * (-1.0f), 0.0f, getWidthNorm() * 1.0f, getHeightNorm() * 1.0f, 0.0f, getWidthNorm() * 1.0f, getHeightNorm() * (-1.0f), 0.0f};
        FloatBuffer vertexBuf = ExtendedGlSurfaceView.allocFloatBuffer(VERTEX_BACKGROUND);
        updateVertexBuffer(vertexBuf);
    }

    private void updateVertexBuffer(FloatBuffer vertexBuf) {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, vertexBuf.limit() * 4, vertexBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}