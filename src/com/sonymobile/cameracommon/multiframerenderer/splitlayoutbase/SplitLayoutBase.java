package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.view.MotionEvent;
import android.view.View;
import com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory;
import com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase;
import com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter;
import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import com.sonymobile.cameracommon.opengl.FrameBase;
import com.sonymobile.cameracommon.opengl.RenderBase;
import com.sonymobile.cameracommon.opengl.RgbFrame;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.YuvFrame;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class SplitLayoutBase extends MultiFrameLayoutBase implements MultiFramePresenter {
    protected static final float CONTROLPOINT_Z_ORDER = 4.0E-5f;
    private static final int DRAGGING_MODE_PARALLEL = 1;
    private static final int DRAGGING_MODE_PIVOT = 2;
    private static final int DRAGGING_MODE_UNKNOWN = 0;
    protected static final String FRAMEID_CONTROLPOINT_0 = "FRAMEID_CONTROLPOINT_0";
    protected static final String FRAMEID_CONTROLPOINT_1 = "FRAMEID_CONTROLPOINT_1";
    protected static final String FRAMEID_CONTROLPOINT_2 = "FRAMEID_CONTROLPOINT_2";
    protected static final String FRAMEID_CONTROLPOINT_3 = "FRAMEID_CONTROLPOINT_3";
    protected static final String FRAMEID_CONTROLPOINT_4 = "FRAMEID_CONTROLPOINT_4";
    protected static final String FRAMEID_CONTROLPOINT_5 = "FRAMEID_CONTROLPOINT_5";
    protected static final String FRAMEID_CONTROLPOINT_6 = "FRAMEID_CONTROLPOINT_6";
    protected static final String FRAMEID_CONTROLPOINT_7 = "FRAMEID_CONTROLPOINT_7";
    protected static final String FRAMEID_CONTROLPOINT_8 = "FRAMEID_CONTROLPOINT_8";
    protected static final String FRAMEID_OVERLAY = "FRAMEID_OVERLAY";
    protected static final String FRAMEID_VIDEO_OVERLAY = "FRAMEID_VIDEO_OVERLAY";
    protected static final float OVERLAY_BITMAP_SCALE = 0.5f;
    protected static final int OVERLAY_HIGHLIGHT_DEAULT_COLOR = -2130706433;
    protected static final float OVERLAY_Z_ORDER = 2.0E-5f;
    protected static final float PREVIEW_Z_ORDER = 0.0f;
    public static final String TAG = "SplitLayoutBase";
    protected static final List<String> sControlPointFrameIdList = new ArrayList();
    private float mControlPointAlpha;
    private float mControlPointBaseScaleX;
    private float mControlPointBaseScaleY;
    private ControlPointFrameBaseFactory mControlPointFrameBaseFactory;
    private int mControlPointResourceId;
    private float mControlPointScale;
    private int mDraggingMode;
    private int mDraggingVertexIndex;
    private boolean mIsAdjustingLayout;
    private boolean mIsEnabledOutline;
    private boolean mIsReady;
    private Paint mOutLinePaint;
    private Bitmap mOverlayBitmap;
    private Canvas mOverlayCanvas;
    private OverlayFrameBaseFactory mOverlayFrameBaseFactory;
    private Map<String, PreviewFrameBaseFactory> mPreviewFrameBaseFactoryMap;
    private int mPreviewFrameBaseFactoryShader;
    private Paint mSplitLinePaint;
    private List<String> mStreamFrameIdList;
    private Paint mVideoOutLinePaint;
    private Bitmap mVideoOverlayBitmap;
    private Canvas mVideoOverlayCanvas;
    private OverlayFrameBaseFactory mVideoOverlayFrameBaseFactory;
    private Paint mVideoSplitLinePaint;

    protected abstract SplitLayoutHelperBase getSplitLayoutHelper();

    protected abstract void updateSortOrder();

    static {
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_0);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_1);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_2);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_3);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_4);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_5);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_6);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_7);
        sControlPointFrameIdList.add(FRAMEID_CONTROLPOINT_8);
    }

    public SplitLayoutBase(Context context) {
        super(context);
        this.mStreamFrameIdList = new ArrayList();
        this.mIsReady = false;
        this.mIsAdjustingLayout = false;
        this.mPreviewFrameBaseFactoryMap = new HashMap();
        this.mPreviewFrameBaseFactoryShader = 0;
        this.mSplitLinePaint = new Paint();
        this.mOutLinePaint = new Paint();
        this.mIsEnabledOutline = false;
        this.mVideoSplitLinePaint = new Paint();
        this.mVideoOutLinePaint = new Paint();
        this.mControlPointAlpha = 1.0f;
        this.mControlPointBaseScaleX = 1.0f;
        this.mControlPointBaseScaleY = 1.0f;
        this.mControlPointScale = 1.0f;
        this.mDraggingVertexIndex = -1;
        this.mDraggingMode = 0;
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public List<String> getFrameIdList() {
        return this.mStreamFrameIdList;
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public synchronized void addFrameId(String frameId) {
        PreviewFrameBaseFactory factory;
        if (frameId != null) {
            if (!this.mStreamFrameIdList.contains(frameId)) {
                this.mStreamFrameIdList.add(frameId);
                if (this.mPreviewFrameBaseFactoryMap.containsKey(frameId)) {
                    factory = this.mPreviewFrameBaseFactoryMap.get(frameId);
                } else {
                    factory = new PreviewFrameBaseFactory();
                    this.mPreviewFrameBaseFactoryMap.put(frameId, factory);
                }
                registerFrameInfo(frameId, null, factory, true);
                if (getSplitLayoutHelper() != null) {
                    getSplitLayoutHelper().addFrame(frameId);
                    drawLines();
                }
                updateSortOrder();
            }
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public synchronized void deleteFrameId(String frameId) {
        if (this.mStreamFrameIdList.contains(frameId)) {
            this.mStreamFrameIdList.remove(frameId);
            if (getSplitLayoutHelper() != null) {
                getSplitLayoutHelper().deleteFrame(frameId);
                drawLines();
            }
            unregisterFrameInfo(frameId);
            updateSortOrder();
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void onResume() {
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void onPause() {
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    protected void enableFunctions() {
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    protected void disableFunctions() {
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    protected void onObjectCoordTransformRequested(String frameId, RenderBase renderbase) {
        if (FRAMEID_OVERLAY.equals(frameId) || FRAMEID_VIDEO_OVERLAY.equals(frameId)) {
            renderOverlay(frameId, renderbase);
        } else if (sControlPointFrameIdList.contains(frameId)) {
            renderControPoints(frameId, renderbase);
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    protected void onObjectVertexUpdateRequested(String frameId, FrameBase frameBase) {
        if (this.mStreamFrameIdList.contains(frameId)) {
            renderPreview(frameId, frameBase, 0.0f);
        }
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    public void onSurfaceChanged(int width, int height) {
        super.onSurfaceChanged(width, height);
        setupSplitLayoutInstances();
        this.mIsReady = true;
        updateSortOrder();
        drawLines();
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFrameLayoutBase
    public void releaseGlEglRelatedInstances() {
        this.mIsReady = false;
        synchronized (this) {
            for (PreviewFrameBaseFactory factory : this.mPreviewFrameBaseFactoryMap.values()) {
                factory.release();
            }
            Iterator<String> itr = this.mPreviewFrameBaseFactoryMap.keySet().iterator();
            while (itr.hasNext()) {
                String id = itr.next();
                if (!this.mStreamFrameIdList.contains(id)) {
                    itr.remove();
                }
            }
        }
        if (this.mPreviewFrameBaseFactoryShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mPreviewFrameBaseFactoryShader);
            this.mPreviewFrameBaseFactoryShader = 0;
        }
        this.mOverlayFrameBaseFactory.release();
        this.mOverlayFrameBaseFactory = null;
        this.mOverlayCanvas.setBitmap(null);
        this.mOverlayCanvas = null;
        if (this.mOverlayBitmap != null && !this.mOverlayBitmap.isRecycled()) {
            this.mOverlayBitmap.recycle();
        }
        this.mOverlayBitmap = null;
        this.mControlPointFrameBaseFactory.release();
        this.mControlPointFrameBaseFactory = null;
        this.mVideoOverlayFrameBaseFactory.release();
        this.mVideoOverlayFrameBaseFactory = null;
        this.mVideoOverlayCanvas.setBitmap(null);
        this.mVideoOverlayCanvas = null;
        if (this.mVideoOverlayBitmap != null && !this.mVideoOverlayBitmap.isRecycled()) {
            this.mVideoOverlayBitmap.recycle();
        }
        this.mVideoOverlayBitmap = null;
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void startAdjustLayout(boolean withTransition) {
        this.mIsAdjustingLayout = true;
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void endAdjustLayout(boolean withTransition) {
        this.mIsAdjustingLayout = false;
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void release() {
    }

    @Override // com.sonymobile.cameracommon.multiframerenderer.MultiFramePresenter
    public void swapSortOrder(String frameId0, String frameId1) {
        int index0 = this.mStreamFrameIdList.indexOf(frameId0);
        int index1 = this.mStreamFrameIdList.indexOf(frameId1);
        Collections.swap(this.mStreamFrameIdList, index0, index1);
        updateSortOrder();
    }

    protected void setupSplitLayoutInstances() {
        setupOverlay();
        setupControlPoint();
        setupSplitLayoutHelper();
    }

    protected void setupSplitLayoutHelper() {
        float touchArea = Math.min(this.mControlPointBaseScaleX, this.mControlPointBaseScaleY);
        getSplitLayoutHelper().setControlPointTouchRange(touchArea);
        getSplitLayoutHelper().setLineTouchRange(touchArea);
        for (String frameId : this.mStreamFrameIdList) {
            getSplitLayoutHelper().addFrame(frameId);
        }
        drawLines();
    }

    protected boolean isAdjustingLayout() {
        return this.mIsAdjustingLayout;
    }

    protected boolean isReady() {
        return this.mIsReady;
    }

    protected void renderPreview(String frameId, FrameBase frameBase, float zOrder) {
        PointF[] vertexArray = getSplitLayoutHelper().getAreaVertexArray(frameId);
        if (vertexArray != null) {
            PointF leftTop = vertexArray[0];
            PointF rightTop = vertexArray[1];
            PointF rightBottom = vertexArray[2];
            PointF leftBottom = vertexArray[3];
            frameBase.updateVertexBuffer(new float[]{leftTop.x, leftTop.y, zOrder, leftBottom.x, leftBottom.y, zOrder, rightTop.x, rightTop.y, zOrder, rightBottom.x, rightBottom.y, zOrder});
            float[] texCoord = getTexCoord(leftTop, leftBottom, rightTop, rightBottom);
            if (isMirroredFrameStruct(frameId)) {
                texCoord = mirroringTextureCoordinate(texCoord);
            }
            frameBase.updateTextureBuffer(texCoord);
        }
    }

    protected float[] getTexCoord(PointF leftTop, PointF leftBottom, PointF rightTop, PointF rightBottom) {
        float nw = getNormalizedWidth() / 2.0f;
        float nh = getNormalizedHeight() / 2.0f;
        PointF[] pointArray = {new PointF(leftTop.x / nw, leftTop.y / nh), new PointF(leftBottom.x / nw, leftBottom.y / nh), new PointF(rightTop.x / nw, rightTop.y / nh), new PointF(rightBottom.x / nw, rightBottom.y / nh)};
        float left = Float.MAX_VALUE;
        float right = Float.MIN_VALUE;
        float top = Float.MIN_VALUE;
        float bottom = Float.MAX_VALUE;
        for (PointF point : pointArray) {
            if (point.x < left) {
                left = point.x;
            }
            if (point.x > right) {
                right = point.x;
            }
            if (point.y > top) {
                top = point.y;
            }
            if (point.y < bottom) {
                bottom = point.y;
            }
        }
        float dx = right - left;
        float dy = top - bottom;
        float cx = (dx / 2.0f) + left;
        float cy = (dy / 2.0f) + bottom;
        float size = Math.max(dx, dy);
        float[] texCoord = {((pointArray[0].x - cx) / size) + OVERLAY_BITMAP_SCALE, (-((pointArray[0].y - cy) / size)) + OVERLAY_BITMAP_SCALE, ((pointArray[1].x - cx) / size) + OVERLAY_BITMAP_SCALE, (-((pointArray[1].y - cy) / size)) + OVERLAY_BITMAP_SCALE, ((pointArray[2].x - cx) / size) + OVERLAY_BITMAP_SCALE, (-((pointArray[2].y - cy) / size)) + OVERLAY_BITMAP_SCALE, ((pointArray[3].x - cx) / size) + OVERLAY_BITMAP_SCALE, (-((pointArray[3].y - cy) / size)) + OVERLAY_BITMAP_SCALE};
        return texCoord;
    }

    private class PreviewFrameBaseFactory implements FrameBaseFactory {
        private YuvFrame mFrame;

        private PreviewFrameBaseFactory() {
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void initialize(View rootView) {
            Context context = rootView.getContext();
            this.mFrame = new YuvFrame(context, rootView, true);
            if (SplitLayoutBase.this.mPreviewFrameBaseFactoryShader == 0) {
                SplitLayoutBase.this.mPreviewFrameBaseFactoryShader = ShaderProgramFactory.createYuvFrameShaderProgram(context);
            }
            this.mFrame.setShaderProgram(SplitLayoutBase.this.mPreviewFrameBaseFactoryShader);
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public FrameBase obtain() {
            return this.mFrame;
        }
    }

    protected synchronized void setEnableDrawingOutline(boolean enabled) {
        this.mIsEnabledOutline = enabled;
    }

    protected synchronized void setLineColor(int color) {
        this.mSplitLinePaint.setColor(color);
        this.mOutLinePaint.setColor(color);
    }

    protected synchronized void setLineColorForVideo(int color) {
        this.mVideoSplitLinePaint.setColor(color);
        this.mVideoOutLinePaint.setColor(color);
    }

    protected synchronized void setLineWidth(float width) {
        this.mSplitLinePaint.setStrokeWidth(width * OVERLAY_BITMAP_SCALE);
        this.mOutLinePaint.setStrokeWidth(this.mSplitLinePaint.getStrokeWidth() * 2.0f);
        this.mVideoSplitLinePaint.setStrokeWidth(width * OVERLAY_BITMAP_SCALE);
        this.mVideoOutLinePaint.setStrokeWidth(this.mVideoSplitLinePaint.getStrokeWidth() * 2.0f);
    }

    protected synchronized void drawLines() {
        if (this.mIsReady) {
            drawLinesToCanvas(this.mOverlayCanvas, this.mSplitLinePaint, this.mOutLinePaint, this.mIsEnabledOutline);
            this.mOverlayFrameBaseFactory.updateBitmap(this.mOverlayBitmap);
            drawLinesToCanvas(this.mVideoOverlayCanvas, this.mVideoSplitLinePaint, this.mVideoOutLinePaint, this.mIsEnabledOutline);
            this.mVideoOverlayFrameBaseFactory.updateBitmap(this.mVideoOverlayBitmap);
        }
    }

    private final void drawLinesToCanvas(Canvas canvas, Paint splitLinePaint, Paint outLinePaint, boolean isEnabledOutline) {
        SplitLayoutHelperBase layoutHelper = getSplitLayoutHelper();
        clearCanvasLines(canvas);
        getSplitLayoutHelper().updateExpandedVertexArray();
        for (SplitLayoutHelperBase.Segment segment : getSplitLayoutHelper().getMovableSegmentList()) {
            Point winP0 = getWindowCoordFromClipCoord(layoutHelper.getExpandedVertex(segment.pointVertexIndex0));
            Point winP1 = getWindowCoordFromClipCoord(layoutHelper.getExpandedVertex(segment.pointVertexIndex1));
            if (winP0 != null && winP1 != null) {
                canvas.drawLine(OVERLAY_BITMAP_SCALE * winP0.x, OVERLAY_BITMAP_SCALE * winP0.y, OVERLAY_BITMAP_SCALE * winP1.x, OVERLAY_BITMAP_SCALE * winP1.y, splitLinePaint);
            }
        }
        if (isEnabledOutline) {
            SplitLayoutHelperBase.Vertex[] rootAreaVertexArray = layoutHelper.getRootAreaVertexArray();
            Point winP02 = getWindowCoordFromClipCoord(rootAreaVertexArray[0]);
            Point winP12 = getWindowCoordFromClipCoord(rootAreaVertexArray[1]);
            Point winP2 = getWindowCoordFromClipCoord(rootAreaVertexArray[2]);
            Point winP3 = getWindowCoordFromClipCoord(rootAreaVertexArray[3]);
            if (winP02 != null && winP12 != null && winP2 != null && winP3 != null) {
                canvas.drawLine(OVERLAY_BITMAP_SCALE * winP02.x, OVERLAY_BITMAP_SCALE * winP02.y, OVERLAY_BITMAP_SCALE * winP12.x, OVERLAY_BITMAP_SCALE * winP12.y, outLinePaint);
                canvas.drawLine(OVERLAY_BITMAP_SCALE * winP12.x, OVERLAY_BITMAP_SCALE * winP12.y, OVERLAY_BITMAP_SCALE * winP2.x, OVERLAY_BITMAP_SCALE * winP2.y, outLinePaint);
                canvas.drawLine(OVERLAY_BITMAP_SCALE * winP2.x, OVERLAY_BITMAP_SCALE * winP2.y, OVERLAY_BITMAP_SCALE * winP3.x, OVERLAY_BITMAP_SCALE * winP3.y, outLinePaint);
                canvas.drawLine(OVERLAY_BITMAP_SCALE * winP3.x, OVERLAY_BITMAP_SCALE * winP3.y, OVERLAY_BITMAP_SCALE * winP02.x, OVERLAY_BITMAP_SCALE * winP02.y, outLinePaint);
            }
        }
    }

    protected synchronized void drawHighlightFrame(String frameId) {
        drawHighlightFrameToCanvas(frameId, this.mOverlayCanvas);
        this.mOverlayFrameBaseFactory.updateBitmap(this.mOverlayBitmap);
        drawHighlightFrameToCanvas(frameId, this.mVideoOverlayCanvas);
        this.mVideoOverlayFrameBaseFactory.updateBitmap(this.mVideoOverlayBitmap);
    }

    private final void drawHighlightFrameToCanvas(String frameId, Canvas canvas) {
        Point[] pointArray = getVertexArrayAsWindowCoord(frameId);
        if (pointArray != null) {
            for (Point point : pointArray) {
                point.x = (int) (point.x * OVERLAY_BITMAP_SCALE);
                point.y = (int) (point.y * OVERLAY_BITMAP_SCALE);
            }
            Path outSidepath = new Path();
            outSidepath.moveTo(pointArray[0].x, pointArray[0].y);
            outSidepath.lineTo(pointArray[1].x, pointArray[1].y);
            outSidepath.lineTo(pointArray[2].x, pointArray[2].y);
            outSidepath.lineTo(pointArray[3].x, pointArray[3].y);
            outSidepath.close();
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setColor(OVERLAY_HIGHLIGHT_DEAULT_COLOR);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawPath(outSidepath, paint);
        }
    }

    protected synchronized void clearLines() {
        clearCanvasLines(this.mOverlayCanvas);
        clearCanvasLines(this.mVideoOverlayCanvas);
    }

    private void clearCanvasLines(Canvas canvas) {
        if (canvas != null) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
    }

    private void renderOverlay(String frameId, RenderBase renderbase) {
        renderbase.translate(0.0f, 0.0f, 2.0E-5f);
    }

    private void setupOverlay() {
        if (getSurfaceWidth() > 0 && getSurfaceHeight() > 0) {
            this.mSplitLinePaint.setAntiAlias(true);
            this.mOutLinePaint.set(this.mSplitLinePaint);
            this.mOutLinePaint.setStrokeWidth(this.mSplitLinePaint.getStrokeWidth() * 2.0f);
            this.mOverlayBitmap = Bitmap.createBitmap((int) (getSurfaceWidth() * OVERLAY_BITMAP_SCALE), (int) (getSurfaceHeight() * OVERLAY_BITMAP_SCALE), Bitmap.Config.ARGB_8888);
            this.mOverlayCanvas = new Canvas(this.mOverlayBitmap);
            this.mOverlayFrameBaseFactory = new OverlayFrameBaseFactory();
            registerFrameInfo(FRAMEID_OVERLAY, null, this.mOverlayFrameBaseFactory, false);
            this.mVideoSplitLinePaint.setAntiAlias(true);
            this.mVideoOutLinePaint.set(this.mVideoSplitLinePaint);
            this.mVideoOutLinePaint.setStrokeWidth(this.mVideoSplitLinePaint.getStrokeWidth() * 2.0f);
            this.mVideoOverlayBitmap = Bitmap.createBitmap((int) (getSurfaceWidth() * OVERLAY_BITMAP_SCALE), (int) (getSurfaceHeight() * OVERLAY_BITMAP_SCALE), Bitmap.Config.ARGB_8888);
            this.mVideoOverlayCanvas = new Canvas(this.mVideoOverlayBitmap);
            this.mVideoOverlayFrameBaseFactory = new OverlayFrameBaseFactory();
            registerFrameInfo(FRAMEID_VIDEO_OVERLAY, null, this.mVideoOverlayFrameBaseFactory, false);
        }
    }

    private static class OverlayFrameBaseFactory implements FrameBaseFactory {
        private Bitmap mBitmap;
        private RgbFrame mFrame;
        private int mShader;

        private OverlayFrameBaseFactory() {
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void initialize(View rootView) {
            Context context = rootView.getContext();
            this.mFrame = new RgbFrame(context, rootView, this.mBitmap);
            this.mShader = ShaderProgramFactory.createRgbFrameShaderProgram(context);
            this.mFrame.setShaderProgram(this.mShader);
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
            if (this.mShader != 0) {
                ShaderProgramFactory.deleteShaderProgram(this.mShader);
                this.mShader = 0;
            }
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public FrameBase obtain() {
            if (this.mFrame != null && this.mBitmap != null) {
                this.mFrame.updataTexture(this.mBitmap);
                this.mBitmap = null;
            }
            return this.mFrame;
        }

        public void updateBitmap(Bitmap bitmap) {
            this.mBitmap = bitmap;
        }
    }

    public void setControlPointResourceId(int resId) {
        this.mControlPointResourceId = resId;
    }

    protected void setControlPointAlpha(float alpha) {
        this.mControlPointAlpha = alpha;
    }

    protected void setControlPointScale(float scale) {
        this.mControlPointScale = scale;
    }

    private void renderControPoints(String frameId, RenderBase renderbase) {
        int index = sControlPointFrameIdList.lastIndexOf(frameId);
        SplitLayoutHelperBase.Vertex vertex = getSplitLayoutHelper().getVertex(index);
        float scaleX = this.mControlPointBaseScaleX * this.mControlPointScale;
        float scaleY = this.mControlPointBaseScaleY * this.mControlPointScale;
        renderbase.scale(scaleX, scaleY, 1.0f);
        renderbase.translate(vertex.x, vertex.y, CONTROLPOINT_Z_ORDER);
        ((FrameBase) renderbase).setAlpha(this.mControlPointAlpha);
    }

    private void setupControlPoint() {
        this.mControlPointFrameBaseFactory = new ControlPointFrameBaseFactory(this.mControlPointResourceId);
        for (String frameId : sControlPointFrameIdList) {
            registerFrameInfo(frameId, null, this.mControlPointFrameBaseFactory, false);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getContext().getResources(), this.mControlPointResourceId, options);
        int imageWidth = options.outWidth;
        int imageHeight = options.outHeight;
        this.mControlPointBaseScaleX = imageWidth / getSurfaceWidth();
        this.mControlPointBaseScaleY = imageHeight / getSurfaceHeight();
    }

    private static class ControlPointFrameBaseFactory implements FrameBaseFactory {
        private int mControlPointResourceId;
        private RgbFrame mFrame;
        private int mShader;

        public ControlPointFrameBaseFactory(int controlPointResourceId) {
            this.mControlPointResourceId = controlPointResourceId;
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void initialize(View rootView) {
            Context context = rootView.getContext();
            this.mFrame = new RgbFrame(context, rootView, this.mControlPointResourceId);
            this.mShader = ShaderProgramFactory.createRgbFrameShaderProgram(context);
            this.mFrame.setShaderProgram(this.mShader);
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public void release() {
            if (this.mFrame != null) {
                this.mFrame.release();
                this.mFrame = null;
            }
            if (this.mShader != 0) {
                ShaderProgramFactory.deleteShaderProgram(this.mShader);
                this.mShader = 0;
            }
        }

        @Override // com.sonymobile.cameracommon.multiframerenderer.FrameBaseFactory
        public FrameBase obtain() {
            return this.mFrame;
        }
    }

    protected Point convertToPoint(MotionEvent event) {
        return new Point((int) event.getX(), (int) event.getY());
    }

    protected PointF getObjectCoordFromWindowCoord(Point point) {
        if (this.mStreamFrameIdList.size() > 0) {
            return getObjectCoordFromWindowCoord(this.mStreamFrameIdList.get(0), point);
        }
        return null;
    }

    protected Point[] getVertexArrayAsWindowCoord(String frameId) {
        SplitLayoutHelperBase.Vertex[] vertexArray = getSplitLayoutHelper().getAreaVertexArray(frameId);
        if (vertexArray == null) {
            return null;
        }
        Point leftTop = getWindowCoordFromClipCoord(vertexArray[0]);
        Point rightTop = getWindowCoordFromClipCoord(vertexArray[1]);
        Point rightBottom = getWindowCoordFromClipCoord(vertexArray[2]);
        Point leftBottom = getWindowCoordFromClipCoord(vertexArray[3]);
        if (leftTop == null || leftBottom == null || rightTop == null || rightBottom == null) {
            return null;
        }
        return new Point[]{leftTop, rightTop, rightBottom, leftBottom};
    }

    protected void startDraggingControlPoint(Point point) {
        PointF coord = getObjectCoordFromWindowCoord(point);
        if (coord != null) {
            this.mDraggingVertexIndex = getSplitLayoutHelper().getControlPointIndex(coord.x, coord.y);
        }
    }

    protected void dragControlPoint(Point point) {
        PointF coord = getObjectCoordFromWindowCoord(point);
        if (coord != null) {
            if (needToMoveParallel(this.mDraggingVertexIndex, coord.x, coord.y)) {
                getSplitLayoutHelper().moveControlPointParallel(coord.x, coord.y);
            } else {
                getSplitLayoutHelper().moveControlPointPivot(this.mDraggingVertexIndex, coord.x, coord.y);
            }
            drawLines();
        }
    }

    protected void finishDraggingControlPoint(Point point) {
        dragControlPoint(point);
        this.mDraggingVertexIndex = -1;
        this.mDraggingMode = 0;
    }

    protected boolean isDraggingControlPoint() {
        return this.mDraggingVertexIndex != -1;
    }

    private boolean needToMoveParallel(int movePointIndex, float x, float y) {
        if (this.mDraggingMode == 0) {
            if (getSplitLayoutHelper().needToMoveParallel(movePointIndex, x, y)) {
                this.mDraggingMode = 1;
            } else {
                this.mDraggingMode = 2;
            }
        }
        return this.mDraggingMode == 1;
    }

    public synchronized void replaceFrameId(String target, String replacement) {
        PreviewFrameBaseFactory factory;
        if (this.mStreamFrameIdList.contains(target)) {
            getSplitLayoutHelper().replaceId(target, replacement);
            int index = this.mStreamFrameIdList.indexOf(target);
            this.mStreamFrameIdList.set(index, replacement);
            unregisterFrameInfo(target);
            if (this.mPreviewFrameBaseFactoryMap.containsKey(replacement)) {
                factory = this.mPreviewFrameBaseFactoryMap.get(replacement);
            } else {
                factory = new PreviewFrameBaseFactory();
                this.mPreviewFrameBaseFactoryMap.put(replacement, factory);
            }
            registerFrameInfo(replacement, null, factory, true);
            updateSortOrder();
        }
    }
}