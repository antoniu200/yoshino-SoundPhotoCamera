package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class TextureMappingFrame extends YuvFrame {
    public static final String TAG = "TextureMappingFrame";
    protected int[] mIndexBuffers;
    protected int mIndicesNumber;
    protected int[] mVertexAlphaBuffers;
    protected int mVertexAlphaInGLSL;

    public TextureMappingFrame(Context context, View rootView) {
        super(context, rootView);
        this.mVertexAlphaBuffers = new int[1];
        this.mIndexBuffers = new int[1];
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.FrameBase
    protected void initializeShaderProgram() throws OpenGlException {
        this.mVertexAlphaInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_VERTEX_ALPHA);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void initializeVertexAndTextureCoordinatesBuffer() {
        byte[] indices = {0, 1, 2, 3, 2, 1};
        float[] vertexAlpha = {1.0f, 1.0f, 1.0f, 1.0f};
        GLES20.glGenBuffers(this.mIndexBuffers.length, this.mIndexBuffers, 0);
        GLES20.glGenBuffers(this.mVertexAlphaBuffers.length, this.mVertexAlphaBuffers, 0);
        updateIndexBuffer(indices);
        updateVertexAlphaBuffer(vertexAlpha);
        super.initializeVertexAndTextureCoordinatesBuffer();
    }

    public void updateIndexBuffer(byte[] indices) {
        this.mIndicesNumber = indices.length;
        ByteBuffer indexBuf = ExtendedGlSurfaceView.allocByteBuffer(indices);
        GLES20.glBindBuffer(34963, this.mIndexBuffers[0]);
        GLES20.glBufferData(34963, indexBuf.limit() * 1, indexBuf, 35048);
        GLES20.glBindBuffer(34963, 0);
    }

    public void updateVertexAlphaBuffer(float[] vertex) {
        FloatBuffer vertexBuf = ExtendedGlSurfaceView.allocFloatBuffer(vertex);
        GLES20.glBindBuffer(34962, this.mVertexAlphaBuffers[0]);
        GLES20.glBufferData(34962, vertexBuf.limit() * 4, vertexBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        renderYuvFrame();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected boolean enableLocalFunctions() {
        GLES20.glEnableVertexAttribArray(this.mVertexAlphaInGLSL);
        return super.enableLocalFunctions();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected boolean disableLocalFunctions() {
        GLES20.glDisableVertexAttribArray(this.mVertexAlphaInGLSL);
        return super.enableLocalFunctions();
    }

    protected boolean renderYuvFrame() {
        GLES20.glBindBuffer(34962, this.mVertexAlphaBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexAlphaInGLSL, 1, 5126, false, 0, 0);
        if (!setupTexture(this.mVertexBuffers[0], this.mTexCoordBuffers[0], this.mFrameTextures)) {
            return false;
        }
        setupParameter(this.mShaderProgram);
        setupMvpMatrix();
        GLES20.glBindBuffer(34963, this.mIndexBuffers[0]);
        GLES20.glDrawElements(4, this.mIndicesNumber, 5121, 0);
        GLES20.glBindBuffer(34963, 0);
        if (!ExtendedGlSurfaceView.isGlErrorOccured()) {
            return true;
        }
        CameraLogger.e(TAG, ".render():[Draw frame Error]");
        return false;
    }
}