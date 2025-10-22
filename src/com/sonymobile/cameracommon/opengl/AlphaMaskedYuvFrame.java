package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class AlphaMaskedYuvFrame extends YuvFrame {
    private static final float[] MASKTEXCOORD = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    public static final String TAG = "AlphaMaskedYuvFrame";
    private static final int TEXTURE_INDEX_MASK = 3;
    private Bitmap mMaskBmp;
    private int[] mMaskTexCoordBuffer;
    private int mMaskTexCoordInGLSL;
    private int[] mMaskTexture;

    public AlphaMaskedYuvFrame(Context context, View rootView, int maskResId) {
        super(context, rootView);
        this.mMaskTexture = new int[1];
        this.mMaskTexCoordInGLSL = 0;
        this.mMaskTexCoordBuffer = new int[1];
        this.mMaskBmp = null;
        initializeMaskTexture(maskResId);
    }

    public AlphaMaskedYuvFrame(Context context, View rootView, Bitmap maskImage) {
        super(context, rootView);
        this.mMaskTexture = new int[1];
        this.mMaskTexCoordInGLSL = 0;
        this.mMaskTexCoordBuffer = new int[1];
        this.mMaskBmp = null;
        initializeMaskTexture(maskImage);
    }

    public AlphaMaskedYuvFrame(Context context, View rootView, Bitmap maskImage, boolean shouldKeepAspect) {
        super(context, rootView, shouldKeepAspect);
        this.mMaskTexture = new int[1];
        this.mMaskTexCoordInGLSL = 0;
        this.mMaskTexCoordBuffer = new int[1];
        this.mMaskBmp = null;
        initializeMaskTexture(maskImage);
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    public void setShaderProgram(int shaderProgram) {
        super.setShaderProgram(shaderProgram);
        try {
            this.mMaskTexCoordInGLSL = GLES20.glGetAttribLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_MASK_TEXTURE_COORD);
            ExtendedGlSurfaceView.checkGlErrorWithException();
        } catch (OpenGlException e) {
            CameraLogger.e(TAG, "OpenGL initialize Error.", e);
        }
        GLES20.glGenBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
        updateMaskTextureBuffer(MASKTEXCOORD);
    }

    public void updateMaskTextureBuffer(float[] maskTex) {
        FloatBuffer maskTexCoordBuf = ExtendedGlSurfaceView.allocFloatBuffer(maskTex);
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glBufferData(34962, maskTexCoordBuf.limit() * 4, maskTexCoordBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeMaskTexture();
        if (this.mMaskBmp != null) {
            if (!this.mMaskBmp.isRecycled()) {
                this.mMaskBmp.recycle();
            }
            this.mMaskBmp = null;
        }
        GLES20.glDeleteBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected boolean enableLocalFunctions() {
        GLES20.glEnableVertexAttribArray(this.mMaskTexCoordInGLSL);
        return super.enableLocalFunctions();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected boolean disableLocalFunctions() {
        GLES20.glDisableVertexAttribArray(this.mMaskTexCoordInGLSL);
        return super.disableLocalFunctions();
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        prepareMaskTexture();
        super.doRender();
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame
    protected boolean setupTexture(int vertexBufObj, int texCoordBufObj, int[] yuvTextures) {
        if (!super.setupTexture(vertexBufObj, texCoordBufObj, yuvTextures)) {
            return false;
        }
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glVertexAttribPointer(this.mMaskTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, ".draw():[Texture binder Error]");
            return false;
        }
        return true;
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame
    protected void setupParameter(int shaderProgramObject) {
        super.setupParameter(shaderProgramObject);
        int textureMask = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_ALPHA_MASK_TEXTURE);
        GLES20.glUniform1i(textureMask, 3);
    }

    private void initializeMaskTexture(int maskResId) {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inScaled = false;
        option.inPreferredConfig = Bitmap.Config.ARGB_8888;
        this.mMaskBmp = BitmapFactory.decodeResource(getContext().getResources(), maskResId, option);
        prepareMaskTexture();
    }

    private void initializeMaskTexture(Bitmap bitmap) {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
        this.mMaskBmp = bitmap;
        prepareMaskTexture();
    }

    private void prepareMaskTexture() {
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mMaskTexture[0], this.mMaskBmp);
        GLES20.glBindTexture(3553, this.mMaskTexture[0]);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        GLES20.glBindTexture(3553, 0);
    }

    private void finalizeMaskTexture() {
        GLES20.glDeleteTextures(1, this.mMaskTexture, 0);
    }
}