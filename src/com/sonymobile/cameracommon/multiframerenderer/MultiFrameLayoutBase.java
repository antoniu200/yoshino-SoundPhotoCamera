package com.sonymobile.cameracommon.multiframerenderer;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import com.sonymobile.cameracommon.multiframerenderer.FrameStruct;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.FrameData;
import com.sonymobile.cameracommon.opengl.RenderBase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class MultiFrameLayoutBase {
    private final Context mContext;
    private float[] mLookAtPosition;
    private float[] mProjectionMatrix;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private int[] mViewPort;
    private Map<String, float[]> mFrameMvpMatrixMap = new HashMap();
    private Map<String, FrameStruct> mFrameStructMap = new HashMap();
    private List<FrameStruct> mSortedFrameStructList = new ArrayList();

    protected abstract void disableFunctions();

    protected abstract void enableFunctions();

    protected abstract void onObjectCoordTransformRequested(String str, RenderBase renderBase);

    protected abstract void onObjectVertexUpdateRequested(String str, FrameBase frameBase);

    public abstract void releaseGlEglRelatedInstances();

    public MultiFrameLayoutBase(Context context) {
        this.mContext = context;
    }

    public void onSurfaceChanged(int width, int height) {
        this.mSurfaceWidth = width;
        this.mSurfaceHeight = height;
    }

    List<FrameStruct> getFrameStructList() {
        return this.mSortedFrameStructList;
    }

    protected Context getContext() {
        return this.mContext;
    }

    protected int getSurfaceWidth() {
        return this.mSurfaceWidth;
    }

    protected int getSurfaceHeight() {
        return this.mSurfaceHeight;
    }

    protected float getNormalizedWidth() {
        if (this.mSurfaceHeight < this.mSurfaceWidth) {
            return 2.0f;
        }
        return (2.0f * this.mSurfaceWidth) / this.mSurfaceHeight;
    }

    protected float getNormalizedHeight() {
        if (this.mSurfaceHeight < this.mSurfaceWidth) {
            return (2.0f * this.mSurfaceHeight) / this.mSurfaceWidth;
        }
        return 2.0f;
    }

    protected synchronized void registerFrameInfo(String frameId, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean needToTextureUpdate, FrameStruct.FrameStructVisibility visibility) {
        this.mFrameStructMap.put(frameId, new FrameStruct(frameId, frameData, frameBaseFactory, needToTextureUpdate, visibility));
    }

    protected void registerFrameInfo(String frameId, FrameData frameData, FrameBaseFactory frameBaseFactory, boolean needToTextureUpdate) {
        registerFrameInfo(frameId, frameData, frameBaseFactory, needToTextureUpdate, FrameStruct.FrameStructVisibility.COMMON);
    }

    protected synchronized void unregisterFrameInfo(String frameId) {
        this.mFrameStructMap.remove(frameId);
    }

    public synchronized void updateFrameData(String frameId, FrameData frameData) {
        FrameStruct frameStruct = this.mFrameStructMap.get(frameId);
        if (frameStruct != null) {
            frameStruct.updateFrameData(frameData);
        }
    }

    public synchronized void setFrameStructVisibility(String frameId, FrameStruct.FrameStructVisibility visibility) {
        FrameStruct frameStruct = this.mFrameStructMap.get(frameId);
        if (frameStruct != null) {
            frameStruct.setVisibility(visibility);
        }
    }

    public synchronized void setMirrored(String frameId, boolean isMirrored) {
        FrameStruct frameStruct = this.mFrameStructMap.get(frameId);
        if (frameStruct != null) {
            frameStruct.setMirrored(isMirrored);
        }
    }

    protected boolean isMirroredFrameStruct(String frameId) {
        return this.mFrameStructMap.get(frameId).isMirrored();
    }

    protected float[] mirroringTextureCoordinate(float[] texCoord) {
        float xLeftSide = texCoord[0];
        if (texCoord[2] < texCoord[0]) {
            xLeftSide = texCoord[2];
        }
        float xRightSide = texCoord[4];
        if (texCoord[4] < texCoord[6]) {
            xRightSide = texCoord[6];
        }
        float xCenter = ((xRightSide - xLeftSide) / 2.0f) + xLeftSide;
        float[] mirroredTexCoord = {(xCenter * 2.0f) - texCoord[0], texCoord[1], (xCenter * 2.0f) - texCoord[2], texCoord[3], (xCenter * 2.0f) - texCoord[4], texCoord[5], (xCenter * 2.0f) - texCoord[6], texCoord[7]};
        return mirroredTexCoord;
    }

    protected synchronized void setSortOrder(List<String> frameIdList) {
        List<FrameStruct> newFrameStructList = new ArrayList<>();
        for (String frameId : frameIdList) {
            FrameStruct frameStruct = this.mFrameStructMap.get(frameId);
            if (frameStruct != null) {
                newFrameStructList.add(frameStruct);
            }
        }
        this.mSortedFrameStructList = newFrameStructList;
    }

    void setMatrix(int[] viewPort, float[] lookAtPosition, float[] projectionMatrix) {
        this.mViewPort = viewPort;
        this.mLookAtPosition = lookAtPosition;
        this.mProjectionMatrix = projectionMatrix;
    }

    void setFrameMvpMatrix(String frameId, float[] mvpMatrix) {
        this.mFrameMvpMatrixMap.put(frameId, mvpMatrix);
    }

    protected PointF getObjectCoordFromWindowCoord(String frameId, Point point) {
        float[] mvpMatrix;
        if (!isMatrixAlreadySet() || point == null || (mvpMatrix = this.mFrameMvpMatrixMap.get(frameId)) == null) {
            return null;
        }
        return CoordConvertUtil.getObjectCoord(point.x, point.y, this.mProjectionMatrix, mvpMatrix, this.mViewPort, this.mLookAtPosition);
    }

    protected Point getWindowCoordFromObjectCoord(String frameId, PointF point) {
        float[] mvpMatrix;
        if (!isMatrixAlreadySet() || point == null || (mvpMatrix = this.mFrameMvpMatrixMap.get(frameId)) == null) {
            return null;
        }
        return CoordConvertUtil.getWindowCoord(point.x, point.y, 0.0f, mvpMatrix, this.mViewPort);
    }

    protected Point getWindowCoordFromClipCoord(PointF clipCoord) {
        if (!isMatrixAlreadySet()) {
            return null;
        }
        float winx = this.mViewPort[2] * ((clipCoord.x + 1.0f) / 2.0f);
        float screenY = this.mViewPort[3] * ((clipCoord.y + 1.0f) / 2.0f);
        float winy = (this.mViewPort[3] + (this.mViewPort[1] * 2)) - (this.mViewPort[1] + screenY);
        return new Point((int) winx, (int) winy);
    }

    private boolean isMatrixAlreadySet() {
        return (this.mViewPort == null || this.mLookAtPosition == null || this.mProjectionMatrix == null) ? false : true;
    }

    @Deprecated
    public boolean exsitFrameIdForDebug(String frameId) {
        return this.mFrameStructMap.containsKey(frameId);
    }

    @Deprecated
    public List<FrameStruct> getFrameStructListForDebug() {
        return this.mSortedFrameStructList;
    }

    @Deprecated
    public void updateFrameDataForDebug(String frameId, FrameData frameData) {
        updateFrameData(frameId, frameData);
    }
}