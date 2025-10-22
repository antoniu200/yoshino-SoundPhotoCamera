package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class TextFrame extends FrameBase {
    public static final String TAG = "TextFrame";
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mTextBitmap;
    private Rect mTextBounds;
    private Canvas mTextCanvas;
    private Paint mTextPaint;
    private final int[] mTexture;
    private Rect mTextureRect;

    public TextFrame(Context context, View rootView, Rect textureRect, Paint textPaint) {
        super(context, rootView);
        this.mTexture = new int[1];
        this.mTextureRect = null;
        this.mTextBitmap = null;
        this.mTextCanvas = null;
        this.mTextPaint = null;
        this.mTextBounds = new Rect();
        this.mTextureRect = textureRect;
        this.mTextPaint = textPaint;
        initializeTextures();
    }

    public void setText(String text) {
        int firstLineLength;
        this.mTextPaint.getTextBounds(text, 0, text.length(), this.mTextBounds);
        this.mTextCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        float anchorX = 0.0f;
        switch (this.mTextPaint.getTextAlign()) {
            case LEFT:
                anchorX = (this.mTextBitmap.getHeight() - this.mTextBounds.height()) / 2.0f;
                break;
            case CENTER:
                anchorX = this.mTextBitmap.getWidth() / 2.0f;
                break;
            case RIGHT:
                anchorX = this.mTextBitmap.getWidth() - ((this.mTextBitmap.getHeight() - this.mTextBounds.height()) / 2);
                break;
        }
        this.mTextPaint.breakText(text, true, this.mTextBitmap.getWidth(), null);
        if (text.contains("\n")) {
            firstLineLength = text.indexOf("\n") + 1;
            text = text.replaceAll("\n", "");
        } else {
            firstLineLength = this.mTextPaint.breakText(text, true, this.mTextBitmap.getWidth(), null);
        }
        if (firstLineLength == text.length()) {
            this.mTextCanvas.drawText(text, anchorX, (this.mTextBitmap.getHeight() / 2) + (this.mTextBounds.height() / 2), this.mTextPaint);
        } else {
            String line1 = text.substring(0, firstLineLength - 1);
            String line2 = text.substring(firstLineLength);
            this.mTextCanvas.drawText(line1, anchorX, ((this.mTextBitmap.getHeight() / 2) + (this.mTextBounds.height() / 2)) - (this.mTextBounds.height() / 2), this.mTextPaint);
            this.mTextCanvas.drawText(line2, anchorX, (this.mTextBitmap.getHeight() / 2) + (this.mTextBounds.height() / 2) + (this.mTextBounds.height() / 2), this.mTextPaint);
        }
        reloadBitmapToTexture();
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeShaderProgram();
        finalizeTextures();
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    protected void doRender() {
        GLES20.glBindBuffer(34962, this.mVertexBuffers[0]);
        GLES20.glVertexAttribPointer(this.mVertexInGLSL, 3, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glBindBuffer(34962, this.mTexCoordBuffers[0]);
        GLES20.glVertexAttribPointer(this.mTexCoordInGLSL, 2, 5126, false, 0, 0);
        GLES20.glBindBuffer(34962, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.mTexture[0]);
        if (ExtendedGlSurfaceView.isGlErrorOccured()) {
            CameraLogger.e(TAG, "doRender():[Texture binder Error]");
        }
        int textureRgb = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_TEXTURE_RGB);
        GLES20.glUniform1i(textureRgb, 0);
        int alpha = GLES20.glGetUniformLocation(this.mShaderProgram, ShaderProgramFactory.GLSL_FIELD_ID_UNIFORM_ALPHA);
        GLES20.glUniform1f(alpha, this.mAlpha);
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

    private void initializeTextures() {
        GLES20.glGenTextures(1, this.mTexture, 0);
        this.mTextBitmap = Bitmap.createBitmap(this.mTextureRect.width(), this.mTextureRect.height(), Bitmap.Config.ARGB_8888);
        this.mTextCanvas = new Canvas(this.mTextBitmap);
        this.mTextCanvas.drawColor(0);
        reloadBitmapToTexture();
    }

    private void reloadBitmapToTexture() {
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mTextBitmap);
    }

    private void finalizeTextures() {
        if (this.mTexture[0] != 0) {
            GLES20.glDeleteTextures(1, this.mTexture, 0);
            this.mTexture[0] = 0;
        }
        if (this.mTextBitmap != null && !this.mTextBitmap.isRecycled()) {
            this.mTextBitmap.recycle();
        }
        this.mTextBitmap = null;
        this.mTextCanvas = null;
        this.mTextureRect = null;
    }
}