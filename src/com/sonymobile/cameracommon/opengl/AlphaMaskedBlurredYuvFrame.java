package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.nio.FloatBuffer;

/* loaded from: classes.dex */
public class AlphaMaskedBlurredYuvFrame extends YuvFrame {
    private static final float BLUR_SPREAD_LEVEL = 8.444f;
    private static final float CENTER_WEIGHT = 1.0f;
    private static final float LOD = 4.2660003f;
    private static final float SPREAD_OFFSET = 0.5688f;
    public static final String TAG = "AlphaMaskedBlurredYuvFrame";
    private static final int TEXTURE_INDEX_MASK = 2;
    private float mBlurLevel;
    private int mImageHeight;
    private int mImageWidth;
    private int[] mMaskTexCoordBuffer;
    private int mMaskTexCoordInGLSL;
    private int[] mMaskTexture;
    private Bitmap mShaderMaskBmp;

    public AlphaMaskedBlurredYuvFrame(Context context, View rootView) {
        super(context, rootView);
        this.mImageWidth = 0;
        this.mImageHeight = 0;
        this.mMaskTexCoordInGLSL = 0;
        this.mMaskTexCoordBuffer = new int[1];
        this.mMaskTexture = new int[1];
        this.mShaderMaskBmp = null;
        this.mBlurLevel = 1.0f;
        initializeMaskTexture();
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
        float[] TEXCOORD = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        FloatBuffer texCoordBuf = ExtendedGlSurfaceView.allocFloatBuffer(TEXCOORD);
        GLES20.glGenBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glBufferData(34962, texCoordBuf.limit() * 4, texCoordBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeMaskTexture();
        this.mShaderMaskBmp = null;
        GLES20.glDeleteBuffers(this.mMaskTexCoordBuffer.length, this.mMaskTexCoordBuffer, 0);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame
    public void setTextureYvu(int width, int height, byte[] byteArray, int offsetY, int offsetVu) {
        this.mImageWidth = width;
        this.mImageHeight = height;
        super.setTextureYvu(width, height, byteArray, offsetY, offsetVu);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame, com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        GLES20.glEnableVertexAttribArray(this.mMaskTexCoordInGLSL);
        super.doRender();
        GLES20.glDisableVertexAttribArray(this.mMaskTexCoordInGLSL);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame
    protected boolean setupTexture(int vertexBufObj, int texCoordBufObj, int[] yuvTextures) {
        if (!super.setupTexture(vertexBufObj, texCoordBufObj, yuvTextures)) {
            return false;
        }
        GLES20.glBindBuffer(34962, this.mMaskTexCoordBuffer[0]);
        GLES20.glVertexAttribPointer(this.mMaskTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33986);
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
        int textureWidth = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH);
        GLES20.glUniform1i(textureWidth, this.mImageWidth);
        int textureHeight = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT);
        GLES20.glUniform1i(textureHeight, this.mImageHeight);
        int blurSpread = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD);
        GLES20.glUniform1f(blurSpread, BLUR_SPREAD_LEVEL * this.mBlurLevel);
        int lod = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD);
        GLES20.glUniform1f(lod, LOD * this.mBlurLevel);
        int spreadOffset = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET);
        GLES20.glUniform1f(spreadOffset, SPREAD_OFFSET);
        int centerWeight = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT);
        GLES20.glUniform1f(centerWeight, 1.0f);
        int textureMask = GLES20.glGetUniformLocation(shaderProgramObject, ShaderProgramFactory.GLSL_FIELD_ID_ALPHA_MASK_TEXTURE);
        GLES20.glUniform1i(textureMask, 2);
    }

    public void setBlurArea(Rect blurArea, Rect baseArea, Bitmap maskBmp) {
        if (blurArea.left < baseArea.left) {
            blurArea.left = baseArea.left;
        }
        if (blurArea.top < baseArea.top) {
            blurArea.top = baseArea.top;
        }
        if (baseArea.right < blurArea.right) {
            blurArea.right = baseArea.right;
        }
        if (baseArea.bottom < blurArea.bottom) {
            blurArea.bottom = baseArea.bottom;
        }
        updateTexCoord(blurArea, baseArea);
        updateVertex(blurArea, baseArea);
        if (!maskBmp.equals(this.mShaderMaskBmp)) {
            this.mShaderMaskBmp = maskBmp;
            prepareMaskTexture(this.mShaderMaskBmp);
        }
    }

    private void updateTexCoord(Rect targetArea, Rect root) {
        float top = targetArea.top / root.height();
        float bottom = targetArea.bottom / root.height();
        float left = targetArea.left / root.width();
        float right = targetArea.right / root.width();
        float[] TEXCOORD = {left, top, left, bottom, right, top, right, bottom};
        FloatBuffer texCoordBuf = ExtendedGlSurfaceView.allocFloatBuffer(TEXCOORD);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glBufferData(34962, texCoordBuf.limit() * 4, texCoordBuf, 35048);
        GLES20.glBindBuffer(34962, 0);
    }

    private void updateVertex(Rect targetArea, Rect root) {
        float scaleX = targetArea.width() / root.width();
        float scaleY = targetArea.height() / root.height();
        scale(scaleX, scaleY, 1.0f);
        int difPixX = targetArea.centerX() - root.centerX();
        int difPixY = (targetArea.centerY() - root.centerY()) * (-1);
        float difNormX = difPixX / (this.mRootView.getWidth() / 2.0f);
        float difNormY = difPixY / (this.mRootView.getWidth() / 2.0f);
        translate(difNormX, difNormY, 0.1f);
    }

    @Override // com.sonymobile.cameracommon.opengl.YuvFrame
    protected void createTextureAndSetTo(int textureId, int width, int height, byte[] byteArray, int offset, YuvFrame.TextureDataType dataType) {
        if (byteArray != null) {
            GLES20.glBindTexture(3553, textureId);
            GLES20.glHint(33170, 4354);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9987.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            nativeGlTexImage2D(dataType.type, width, height, byteArray, offset);
            GLES20.glGenerateMipmap(3553);
            GLES20.glBindTexture(3553, 0);
        }
    }

    private void initializeMaskTexture() {
        GLES20.glGenTextures(1, this.mMaskTexture, 0);
    }

    private void prepareMaskTexture(Bitmap maskBmp) {
        if (maskBmp != null) {
            ExtendedGlSurfaceView.bindTextureAndBitmap(this.mMaskTexture[0], maskBmp);
            GLES20.glBindTexture(3553, this.mMaskTexture[0]);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glBindTexture(3553, 0);
        }
    }

    private void finalizeMaskTexture() {
        GLES20.glDeleteTextures(1, this.mMaskTexture, 0);
    }

    public void setBlurLevel(float blurLevel) {
        this.mBlurLevel = blurLevel;
    }

    public static class BlurIncrementalController {
        private float mActualBlurLevel;
        private final float mInitialBlurLevel;
        private final float mStep;
        private AlphaMaskedBlurredYuvFrame mTarget = null;
        private float mTargetBlurLevel;

        public BlurIncrementalController(float initialBlurLevel, float step) {
            this.mInitialBlurLevel = initialBlurLevel;
            resetActual();
            this.mTargetBlurLevel = this.mInitialBlurLevel;
            this.mStep = step;
        }

        public void setTargetElement(AlphaMaskedBlurredYuvFrame target) {
            this.mTarget = target;
        }

        public void resetActual() {
            this.mActualBlurLevel = this.mInitialBlurLevel;
        }

        public void updateTarget(float targetAlpha) {
            this.mTargetBlurLevel = targetAlpha;
        }

        public void applyActual() {
            this.mTarget.setBlurLevel(this.mActualBlurLevel);
        }

        public void update() {
            float dif = this.mTargetBlurLevel - this.mActualBlurLevel;
            if (0.0f < dif) {
                this.mActualBlurLevel += this.mStep;
            } else if (dif < 0.0f) {
                this.mActualBlurLevel -= this.mStep;
            }
            if (this.mActualBlurLevel < 0.0f) {
                this.mActualBlurLevel = 0.0f;
            }
            if (1.0f < this.mActualBlurLevel) {
                this.mActualBlurLevel = 1.0f;
            }
            applyActual();
        }
    }
}