package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class SimpleFrame extends FrameBase {
    public static final String TAG = "SimpleFrame";
    private float[] mColor;
    private int mSimpleColorInGLSL;

    public SimpleFrame(Context context, View rootView) {
        super(context, rootView);
        this.mSimpleColorInGLSL = 0;
        this.mColor = new float[3];
    }

    public void setColor(float red, float green, float blue, float alpha) {
        this.mColor[0] = red;
        this.mColor[1] = green;
        this.mColor[2] = blue;
        this.mAlpha = alpha;
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeShaderProgram();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glUniform4f(this.mSimpleColorInGLSL, this.mColor[0], this.mColor[1], this.mColor[2], this.mAlpha);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "clearAndResetSurface():[Texture binder Error]");
        }
        float[] mvpMatrix = new float[16];
        Matrix.setIdentityM(mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mSequencedLocalMatrix, 0, mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mGlobalMatrix, 0, mvpMatrix, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, mvpMatrix, 0);
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "clearAndResetSurface():[Draw frame Error]");
        }
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void initializeShaderProgram() throws OpenGlException {
        this.mSimpleColorInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_SIMPLE_COLOR);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    public void updateVertexBuffer(float[] vertexBuffer) {
        FloatBuffer vertexBuf = ExtendedGlSurfaceView.allocFloatBuffer(vertexBuffer);
        GLES20.glGenBuffers(this.mVertexBuffers.length, this.mVertexBuffers, 0);
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glBufferData(34962, vertexBuf.limit() * 4, vertexBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }
}