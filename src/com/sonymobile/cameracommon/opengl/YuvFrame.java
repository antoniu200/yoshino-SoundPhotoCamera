package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class YuvFrame extends FrameBase {
    private static final int NUM_OF_FRAME_TEXTURES = 2;
    public static final String TAG = "YuvFrame";
    protected static final int TEXTURE_INDEX_VU = 1;
    protected static final int TEXTURE_INDEX_Y = 0;
    private int mAlphaInGLSL;
    private float mFrameAspectRatio;
    protected int[] mFrameTextures;
    private boolean mShouldKeepAspect;
    private int mTextureVuInGLSL;
    private int mTextureYInGLSL;

    protected static final native int nativeGlTexImage2D(int i, int i2, int i3, byte[] bArr, int i4);

    static {
        System.loadLibrary("yuvframe");
    }

    public YuvFrame(Context context, View rootView) {
        super(context, rootView);
        this.mShouldKeepAspect = false;
        initializeTextures();
    }

    public YuvFrame(Context context, View rootView, boolean shouldKeepAspect) {
        super(context, rootView);
        this.mShouldKeepAspect = false;
        this.mShouldKeepAspect = shouldKeepAspect;
        initializeTextures();
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeShaderProgram();
        finalizeTextures();
    }

    public void setTextureYvu(int width, int height, byte[] byteArray, int offsetY, int offsetVu) {
        initializeTextures();
        setFrameTextures(byteArray, offsetY, offsetVu, width, height);
        this.mFrameAspectRatio = height / width;
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void initializeShaderProgram() throws OpenGlException {
        this.mTextureYInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_TEXTURE_Y);
        this.mTextureVuInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_TEXTURE_VU);
        this.mAlphaInGLSL = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_UNIFORM_ALPHA);
        ExtendedGlSurfaceView.checkGlErrorWithException();
        super.initializeShaderProgram();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        renderYuvFrame(this.mVertexBuffers[0], this.mTexCoordBuffers[0], this.mFrameTextures, this.mShaderProgram);
    }

    protected boolean renderYuvFrame(int vertexBufObj, int texCoordBufObj, int[] yuvTextures, int shaderProgramObject) {
        if (!setupTexture(vertexBufObj, texCoordBufObj, yuvTextures)) {
            return false;
        }
        setupParameter(shaderProgramObject);
        setupMvpMatrix();
        GLES20.glDrawArrays(5, 0, 4);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".render():[Draw frame Error]");
            return false;
        }
        return true;
    }

    protected boolean setupTexture(int vertexBufObj, int texCoordBufObj, int[] yuvTextures) {
        GLES20.glBindBuffer(34962, vertexBufObj);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, texCoordBufObj);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, yuvTextures[0]);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, yuvTextures[1]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".draw():[Texture binder Error]");
            return false;
        }
        GLES20.glUniform1i(this.mTextureYInGLSL, 0);
        GLES20.glUniform1i(this.mTextureVuInGLSL, 1);
        return true;
    }

    protected void setupParameter(int shaderProgramObject) {
        GLES20.glUniform1f(this.mAlphaInGLSL, this.mAlpha);
    }

    protected void setupMvpMatrix() {
        float[] mvpMatrix = new float[16];
        Matrix.setIdentityM(mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mSequencedLocalMatrix, 0, mvpMatrix, 0);
        Matrix.multiplyMM(mvpMatrix, 0, this.mGlobalMatrix, 0, mvpMatrix, 0);
        GLES20.glUniformMatrix4fv(this.mMvpMatrixInGLSL, 1, false, mvpMatrix, 0);
    }

    private void initializeTextures() {
        if (this.mFrameTextures == null) {
            this.mFrameTextures = new int[2];
            GLES20.glGenTextures(2, this.mFrameTextures, 0);
        }
    }

    public void finalizeTextures() {
        if (this.mFrameTextures != null) {
            GLES20.glDeleteTextures(2, this.mFrameTextures, 0);
        }
        this.mFrameTextures = null;
    }

    private void setFrameTextures(byte[] byteArray, int offsetY, int offsetVu, int width, int height) {
        createTextureAndSetTo(this.mFrameTextures[0], width, height, byteArray, offsetY, TextureDataType.LUMINANCE);
        createTextureAndSetTo(this.mFrameTextures[1], width / 2, height / 2, byteArray, offsetVu, TextureDataType.LUMINANCE_ALPHA);
    }

    protected void createTextureAndSetTo(int textureId, int width, int height, byte[] byteArray, int offset, TextureDataType dataType) {
        if (byteArray != null) {
            GLES20.glBindTexture(3553, textureId);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            nativeGlTexImage2D(dataType.type, width, height, byteArray, offset);
            GLES20.glBindTexture(3553, 0);
        }
    }

    protected enum TextureDataType {
        LUMINANCE(0),
        LUMINANCE_ALPHA(1);

        public final int type;

        TextureDataType(int type) {
            this.type = type;
        }
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    public void updateTextureBuffer(float[] tex) {
        if (this.mShouldKeepAspect) {
            if (this.mRootView.getWidth() != 0) {
                float rootViewAspectRatio = this.mRootView.getHeight() / this.mRootView.getWidth();
                int i = 0;
                if (!isNearlyEquals(rootViewAspectRatio, this.mFrameAspectRatio)) {
                    for (float f : tex) {
                        if (i % 2 == 1) {
                            tex[i] = (((f - 0.5f) * rootViewAspectRatio) / this.mFrameAspectRatio) + 0.5f;
                        }
                        i++;
                    }
                }
            } else {
                return;
            }
        }
        super.updateTextureBuffer(tex);
    }

    private static boolean isNearlyEquals(float target, float actual) {
        return Math.abs(target - actual) < 0.001f;
    }
}