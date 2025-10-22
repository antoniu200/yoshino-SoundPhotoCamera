package com.sonymobile.cameracommon.opengl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.View;
import com.sonyericsson.cameracommon.utility.CameraLogger;

/* loaded from: classes.dex */
public class RgbFrame extends FrameBase {
    public static final String TAG = "RgbFrame";
    private static final int TEXTURE_INDEX_0 = 0;
    private Bitmap mBitmap;
    private final Rect mNinePatchTextureRect;
    private final int mResId;
    private int[] mTexture;
    private final Type mType;

    private enum Type {
        PRE_LOADED_BITMAP,
        NORMAL_RESOURCE,
        NINE_PATCH_RESOURCE,
        PRE_LOADED_TEXTURE
    }

    public RgbFrame(Context context, View rootView, int resId) {
        super(context, rootView);
        this.mTexture = new int[1];
        this.mBitmap = null;
        this.mType = Type.NORMAL_RESOURCE;
        this.mResId = resId;
        this.mNinePatchTextureRect = null;
        initializeTextures();
        loadTexture();
    }

    public RgbFrame(Context context, View rootView, int resId, Rect textureRect) {
        super(context, rootView);
        this.mTexture = new int[1];
        this.mBitmap = null;
        this.mType = Type.NINE_PATCH_RESOURCE;
        this.mResId = resId;
        this.mNinePatchTextureRect = textureRect;
        initializeTextures();
        loadTexture();
    }

    public RgbFrame(Context context, View rootView, Bitmap bitmap) {
        super(context, rootView);
        this.mTexture = new int[1];
        this.mBitmap = null;
        this.mType = Type.PRE_LOADED_BITMAP;
        this.mResId = 0;
        this.mNinePatchTextureRect = null;
        this.mBitmap = bitmap;
        initializeTextures();
        loadTexture();
    }

    public RgbFrame(Context context, View rootView, int[] texture, Rect textureRect) {
        super(context, rootView);
        this.mTexture = new int[1];
        this.mBitmap = null;
        this.mType = Type.PRE_LOADED_TEXTURE;
        this.mResId = 0;
        this.mNinePatchTextureRect = textureRect;
        this.mBitmap = null;
        this.mTexture = texture;
    }

    public void updataTexture(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            this.mBitmap = bitmap;
            ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
        }
    }

    public Rect getOnScreenSize() {
        return this.mNinePatchTextureRect != null ? this.mNinePatchTextureRect : new Rect(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    @Override // com.sonymobile.cameracommon.opengl.FrameBase
    public void setShaderProgram(int shaderProgram) {
        super.setShaderProgram(shaderProgram);
        loadTexture();
    }

    @Override // com.sonymobile.cameracommon.opengl.RenderBase
    public void release() {
        super.release();
        finalizeShaderProgram();
        if (this.mType != Type.PRE_LOADED_TEXTURE) {
            finalizeTextures();
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
    }

    private void loadTexture() {
        switch (this.mType) {
            case PRE_LOADED_BITMAP:
                loadPreLoadedTexture();
                break;
            case NORMAL_RESOURCE:
                loadNormalTexture();
                break;
            case NINE_PATCH_RESOURCE:
                loadNinePatchTexture();
                break;
        }
    }

    private void loadPreLoadedTexture() {
        if (this.mBitmap != null && !this.mBitmap.isRecycled()) {
            ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
        }
    }

    private void loadNormalTexture() {
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inScaled = false;
        option.inPreferredConfig = Bitmap.Config.ARGB_8888;
        this.mBitmap = BitmapFactory.decodeResource(getContext().getResources(), this.mResId, option);
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
    }

    private void loadNinePatchTexture() {
        BitmapFactory.Options option = new BitmapFactory.Options();
        option.inScaled = false;
        option.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap rawBmp = BitmapFactory.decodeResource(getContext().getResources(), this.mResId, option);
        NinePatchDrawable npd = new NinePatchDrawable(getContext().getResources(), rawBmp, rawBmp.getNinePatchChunk(), null, null);
        npd.setBounds(this.mNinePatchTextureRect);
        this.mBitmap = Bitmap.createBitmap(this.mNinePatchTextureRect.width(), this.mNinePatchTextureRect.height(), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(this.mBitmap);
        npd.draw(c);
        rawBmp.recycle();
        ExtendedGlSurfaceView.bindTextureAndBitmap(this.mTexture[0], this.mBitmap);
    }

    private void finalizeTextures() {
        if (this.mTexture[0] != 0) {
            GLES20.glDeleteTextures(1, this.mTexture, 0);
            this.mTexture[0] = 0;
        }
        if (this.mBitmap != null && !this.mBitmap.isRecycled()) {
            this.mBitmap.recycle();
        }
        this.mBitmap = null;
    }
}