package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import android.graphics.PointF;
import android.graphics.RectF;
import com.sonymobile.cameracommon.multiframerenderer.Vector2dUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class SplitLayoutHelperBase {
    private static final float EXPANSION_SIZE = 0.01f;
    public static final int INVALID_INDEX = -1;
    private float mControlPointDraggingLimitBottom;
    private float mControlPointDraggingLimitLeft;
    private float mControlPointDraggingLimitRight;
    private float mControlPointDraggingLimitTop;
    private final RectF mLayoutSize;
    private SplitLayoutHelperNode mRootNode;
    private final Vertex[] mVertexArray = {new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex()};
    private final Vertex[] mSplitLineVertexArray = {new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex(), new Vertex()};
    private float mControlPointTouchRange = 0.0f;
    private float mLineTouchRange = 0.0f;

    public abstract void moveControlPointPivot(int i, float f, float f2);

    public abstract boolean needToMoveParallel(int i, float f, float f2);

    public static class Vertex extends PointF {
        public Vertex() {
        }

        public Vertex(float x, float y) {
            super(x, y);
        }

        public Vertex(Vertex vertex) {
            super(vertex.x, vertex.y);
        }
    }

    public static class Segment {
        public final int pointVertexIndex0;
        public final int pointVertexIndex1;

        public Segment(int pointVertexIndex0, int pointVertexIndex1) {
            this.pointVertexIndex0 = pointVertexIndex0;
            this.pointVertexIndex1 = pointVertexIndex1;
        }
    }

    public static class Area {
        private final int[] mVertextIndexArray = new int[4];

        public Area(int leftTopVertexIndex, int rightTopVertexIndex, int rightBottomVertexIndex, int leftBottomVertexIndex) {
            this.mVertextIndexArray[0] = leftTopVertexIndex;
            this.mVertextIndexArray[1] = rightTopVertexIndex;
            this.mVertextIndexArray[2] = rightBottomVertexIndex;
            this.mVertextIndexArray[3] = leftBottomVertexIndex;
        }

        public String toString() {
            return "(" + this.mVertextIndexArray[0] + "," + this.mVertextIndexArray[1] + "," + this.mVertextIndexArray[2] + "," + this.mVertextIndexArray[3] + ")";
        }
    }

    public SplitLayoutHelperBase(RectF layoutSize) {
        this.mLayoutSize = new RectF(layoutSize);
        init();
    }

    public void init() {
        if (getRootNode() != null) {
            getRootNode().clearFrame();
        }
        initVertexArray();
    }

    public void initVertexArray() {
        this.mVertexArray[0].set(this.mLayoutSize.left, this.mLayoutSize.top);
        this.mVertexArray[1].set(this.mLayoutSize.centerX(), this.mLayoutSize.top);
        this.mVertexArray[2].set(this.mLayoutSize.right, this.mLayoutSize.top);
        this.mVertexArray[3].set(this.mLayoutSize.left, this.mLayoutSize.centerY());
        this.mVertexArray[4].set(this.mLayoutSize.centerX(), this.mLayoutSize.centerY());
        this.mVertexArray[5].set(this.mLayoutSize.right, this.mLayoutSize.centerY());
        this.mVertexArray[6].set(this.mLayoutSize.left, this.mLayoutSize.bottom);
        this.mVertexArray[7].set(this.mLayoutSize.centerX(), this.mLayoutSize.bottom);
        this.mVertexArray[8].set(this.mLayoutSize.right, this.mLayoutSize.bottom);
    }

    private void initCenterHorizontalVertexArray() {
        this.mVertexArray[3].set(this.mLayoutSize.left, this.mLayoutSize.centerY());
        this.mVertexArray[4].set(this.mLayoutSize.centerX(), this.mLayoutSize.centerY());
        this.mVertexArray[5].set(this.mLayoutSize.right, this.mLayoutSize.centerY());
        updateCenterVertexWithLimit();
    }

    protected void setRootNode(SplitLayoutHelperNode rootNode) {
        this.mRootNode = rootNode;
    }

    public void setControlPointDraggingLimit(float left, float top, float right, float bottom) {
        this.mControlPointDraggingLimitLeft = left;
        this.mControlPointDraggingLimitTop = top;
        this.mControlPointDraggingLimitRight = right;
        this.mControlPointDraggingLimitBottom = bottom;
    }

    public void setControlPointTouchRange(float range) {
        this.mControlPointTouchRange = range;
    }

    public void setLineTouchRange(float range) {
        this.mLineTouchRange = range;
    }

    public void addFrame(String frameId) {
        initCenterHorizontalVertexArray();
        getRootNode().addFrame(frameId);
    }

    public void deleteFrame(String frameId) {
        getRootNode().deleteFrame(frameId);
    }

    public List<String> swapFrame(String fromFrameId, String toFrameId) {
        List<String> changedLayoutFrameIdList = getRootNode().swapFrame(fromFrameId, toFrameId);
        if (changedLayoutFrameIdList.size() >= 3) {
            initCenterHorizontalVertexArray();
        }
        return changedLayoutFrameIdList;
    }

    protected RectF getLayoutSize() {
        return this.mLayoutSize;
    }

    protected SplitLayoutHelperNode getRootNode() {
        return this.mRootNode;
    }

    protected List<String> getFrameIdList() {
        return getRootNode().getFrameIdList();
    }

    public Set<Integer> getControlPointVertexIndexList() {
        return getRootNode().getControlPointVertexIndexSet();
    }

    protected Set<Segment> getMovableSegmentList() {
        return getRootNode().getMovableSegmentSet();
    }

    public Vertex getVertex(int index) {
        return this.mVertexArray[index];
    }

    public Vertex[] copyVertexArray() {
        return (Vertex[]) this.mVertexArray.clone();
    }

    public Vertex[] getRootAreaVertexArray() {
        Area rootArea = getRootNode().getArea();
        return new Vertex[]{getVertex(rootArea.mVertextIndexArray[0]), getVertex(rootArea.mVertextIndexArray[1]), getVertex(rootArea.mVertextIndexArray[2]), getVertex(rootArea.mVertextIndexArray[3])};
    }

    public Vertex[] getAreaVertexArray(String frameId) {
        SplitLayoutHelperNode node = getRootNode().findNode(frameId);
        if (node == null) {
            return null;
        }
        Area area = node.getArea();
        return new Vertex[]{getVertex(area.mVertextIndexArray[0]), getVertex(area.mVertextIndexArray[1]), getVertex(area.mVertextIndexArray[2]), getVertex(area.mVertextIndexArray[3])};
    }

    public int getControlPointIndex(float x, float y) {
        for (Integer index : getControlPointVertexIndexList()) {
            float dx = x - this.mVertexArray[index.intValue()].x;
            float dy = y - this.mVertexArray[index.intValue()].y;
            if (Math.abs(dx) < this.mControlPointTouchRange && Math.abs(dy) < this.mControlPointTouchRange) {
                return index.intValue();
            }
        }
        return -1;
    }

    public String getAreaFrameId(float x, float y) {
        String frameId;
        SplitLayoutHelperNode node;
        Iterator<String> it = getRootNode().getFrameIdList().iterator();
        while (it.hasNext() && (node = getRootNode().findNode((frameId = it.next()))) != null) {
            Area area = node.getArea();
            if (inArea(area, x, y)) {
                return frameId;
            }
        }
        return null;
    }

    public void moveControlPointParallel(float x, float y) {
        float newCenterX = Vector2dUtil.limit(x, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
        float newCenterY = Vector2dUtil.limit(y, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
        Vertex newCenterVertex = new Vertex(newCenterX, newCenterY);
        float dx = newCenterX - this.mVertexArray[4].x;
        float dy = newCenterY - this.mVertexArray[4].y;
        Set<Integer> indexSet = getRootNode().getControlPointVertexIndexSet();
        Iterator<Integer> it = indexSet.iterator();
        while (it.hasNext()) {
            int index = it.next().intValue();
            this.mVertexArray[index].x += dx;
            this.mVertexArray[index].y += dy;
            Segment seg = getRelatedSegment(index);
            if (seg != null) {
                Vector2dUtil.getCrossPoint(this.mVertexArray[index], newCenterVertex, this.mVertexArray[seg.pointVertexIndex0], this.mVertexArray[seg.pointVertexIndex1], this.mVertexArray[index]);
            }
        }
        Iterator<Integer> it2 = indexSet.iterator();
        while (it2.hasNext()) {
            limitVertex(it2.next().intValue());
        }
        updateCenterVertexWithLimit();
    }

    protected void pivotControlPoint(int pivotPointIndex, int movePointIndex, float x, float y) {
        Segment relatedSegment = getRelatedSegment(movePointIndex);
        if (relatedSegment != null) {
            Vertex a1 = this.mVertexArray[pivotPointIndex];
            Vertex a2 = new Vertex(x, y);
            Vertex b1 = this.mVertexArray[relatedSegment.pointVertexIndex0];
            Vertex b2 = this.mVertexArray[relatedSegment.pointVertexIndex1];
            Vector2dUtil.getCrossPoint(a1, a2, b1, b2, this.mVertexArray[movePointIndex]);
            limitVertex(movePointIndex);
            updateCenterVertexWithLimit();
        }
    }

    protected void rotateControlPointWithCenterVertex(int reversePointIndex, int movePointIndex, float x, float y) {
        Segment relatedSegmentIndexForMove = getRelatedSegment(movePointIndex);
        Segment relatedSegmentIndexForReverse = getRelatedSegment(reversePointIndex);
        if (relatedSegmentIndexForMove != null && relatedSegmentIndexForReverse != null) {
            Vertex a1 = getVertex(4);
            Vertex a2 = new Vertex(x, y);
            Vertex b1 = this.mVertexArray[relatedSegmentIndexForMove.pointVertexIndex0];
            Vertex b2 = this.mVertexArray[relatedSegmentIndexForMove.pointVertexIndex1];
            Vector2dUtil.getCrossPoint(a1, a2, b1, b2, this.mVertexArray[movePointIndex]);
            limitVertex(movePointIndex);
            Vertex a12 = this.mVertexArray[4];
            Vertex a22 = this.mVertexArray[movePointIndex];
            Vertex b12 = this.mVertexArray[relatedSegmentIndexForReverse.pointVertexIndex0];
            Vertex b22 = this.mVertexArray[relatedSegmentIndexForReverse.pointVertexIndex1];
            Vector2dUtil.getCrossPoint(a12, a22, b12, b22, this.mVertexArray[reversePointIndex]);
            limitVertex(reversePointIndex);
            Vertex a13 = this.mVertexArray[4];
            Vertex a23 = this.mVertexArray[reversePointIndex];
            Vertex b13 = this.mVertexArray[relatedSegmentIndexForMove.pointVertexIndex0];
            Vertex b23 = this.mVertexArray[relatedSegmentIndexForMove.pointVertexIndex1];
            Vector2dUtil.getCrossPoint(a13, a23, b13, b23, this.mVertexArray[movePointIndex]);
            limitVertex(movePointIndex);
            updateCenterVertexWithLimit();
        }
    }

    private void updateCenterVertexWithLimit() {
        updateCenterVertex(this.mVertexArray, true);
    }

    protected void updateCenterVertex(Vertex[] vertexArray, boolean needTolimit) {
        Vertex hSeg1;
        Vertex hSeg2;
        Vertex vSeg1 = vertexArray[1];
        Vertex vSeg2 = vertexArray[7];
        Set<Integer> indexSet = getRootNode().getControlPointVertexIndexSet();
        boolean existCenterLeft = indexSet.contains(3);
        boolean existCenterRight = indexSet.contains(5);
        if (existCenterLeft && !existCenterRight) {
            hSeg1 = vertexArray[3];
            hSeg2 = vertexArray[4];
        } else if (!existCenterLeft && existCenterRight) {
            hSeg1 = vertexArray[4];
            hSeg2 = vertexArray[5];
        } else {
            hSeg1 = vertexArray[3];
            hSeg2 = vertexArray[5];
        }
        Vector2dUtil.getCrossPoint(hSeg1, hSeg2, vSeg1, vSeg2, vertexArray[4]);
        if (needTolimit) {
            float topLimit = this.mLayoutSize.top - this.mControlPointDraggingLimitTop;
            float bottomLimit = this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom;
            if (vertexArray[4].y > topLimit) {
                Vector2dUtil.getCrossPoint(vSeg1, vSeg2, new Vertex(this.mLayoutSize.left, topLimit), new Vertex(this.mLayoutSize.right, topLimit), vertexArray[4]);
            } else if (vertexArray[4].y < bottomLimit) {
                Vector2dUtil.getCrossPoint(vSeg1, vSeg2, new Vertex(this.mLayoutSize.left, bottomLimit), new Vertex(this.mLayoutSize.right, bottomLimit), vertexArray[4]);
            }
        }
    }

    protected boolean inLine(Segment segment, float x, float y) {
        float distance = Vector2dUtil.getDistanceFromSegment(getVertex(segment.pointVertexIndex0), getVertex(segment.pointVertexIndex1), x, y);
        return this.mLineTouchRange >= Math.abs(distance);
    }

    protected boolean inArea(Area area, float x, float y) {
        return (Vector2dUtil.isLeftSide(getVertex(area.mVertextIndexArray[0]), getVertex(area.mVertextIndexArray[1]), x, y) || Vector2dUtil.isLeftSide(getVertex(area.mVertextIndexArray[1]), getVertex(area.mVertextIndexArray[2]), x, y) || Vector2dUtil.isLeftSide(getVertex(area.mVertextIndexArray[2]), getVertex(area.mVertextIndexArray[3]), x, y) || Vector2dUtil.isLeftSide(getVertex(area.mVertextIndexArray[3]), getVertex(area.mVertextIndexArray[0]), x, y)) ? false : true;
    }

    protected int searchPivotPointIndex(int movePointIndex) {
        if (movePointIndex == -1) {
            return -1;
        }
        for (Segment seg : getMovableSegmentList()) {
            if (movePointIndex == seg.pointVertexIndex0) {
                int pivotPointIndex = seg.pointVertexIndex1;
                return pivotPointIndex;
            }
            if (movePointIndex == seg.pointVertexIndex1) {
                int pivotPointIndex2 = seg.pointVertexIndex0;
                return pivotPointIndex2;
            }
        }
        return -1;
    }

    protected Segment getRelatedSegment(int index) {
        switch (index) {
            case 1:
                return new Segment(0, 2);
            case 2:
            case 6:
            default:
                return null;
            case 3:
                return new Segment(0, 6);
            case 4:
                return new Segment(1, 7);
            case 5:
                return new Segment(2, 8);
            case 7:
                return new Segment(6, 8);
        }
    }

    private void limitVertex(int index) {
        switch (index) {
            case 1:
                this.mVertexArray[1].x = Vector2dUtil.limit(this.mVertexArray[1].x, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
                this.mVertexArray[1].y = this.mLayoutSize.top;
                break;
            case 3:
                this.mVertexArray[3].x = this.mLayoutSize.left;
                this.mVertexArray[3].y = Vector2dUtil.limit(this.mVertexArray[3].y, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
                break;
            case 5:
                this.mVertexArray[5].x = this.mLayoutSize.right;
                this.mVertexArray[5].y = Vector2dUtil.limit(this.mVertexArray[5].y, this.mLayoutSize.bottom + this.mControlPointDraggingLimitBottom, this.mLayoutSize.top - this.mControlPointDraggingLimitTop);
                break;
            case 7:
                this.mVertexArray[7].x = Vector2dUtil.limit(this.mVertexArray[7].x, this.mLayoutSize.left + this.mControlPointDraggingLimitLeft, this.mLayoutSize.right - this.mControlPointDraggingLimitRight);
                this.mVertexArray[7].y = this.mLayoutSize.bottom;
                break;
        }
    }

    public void updateExpandedVertexArray() {
        this.mSplitLineVertexArray[0].x = this.mLayoutSize.left - EXPANSION_SIZE;
        this.mSplitLineVertexArray[0].y = this.mLayoutSize.top + EXPANSION_SIZE;
        this.mSplitLineVertexArray[2].x = this.mLayoutSize.right + EXPANSION_SIZE;
        this.mSplitLineVertexArray[2].y = this.mLayoutSize.top + EXPANSION_SIZE;
        this.mSplitLineVertexArray[6].x = this.mLayoutSize.left - EXPANSION_SIZE;
        this.mSplitLineVertexArray[6].y = this.mLayoutSize.bottom - EXPANSION_SIZE;
        this.mSplitLineVertexArray[8].x = this.mLayoutSize.right + EXPANSION_SIZE;
        this.mSplitLineVertexArray[8].y = this.mLayoutSize.bottom - EXPANSION_SIZE;
        Vertex vertex4 = getVertex(4);
        this.mSplitLineVertexArray[4].x = vertex4.x;
        this.mSplitLineVertexArray[4].y = vertex4.y;
        Vertex vertex1 = getVertex(1);
        Vector2dUtil.getCrossPoint(vertex1, vertex4, this.mSplitLineVertexArray[0], this.mSplitLineVertexArray[2], this.mSplitLineVertexArray[1]);
        Vertex vertex3 = getVertex(3);
        Vector2dUtil.getCrossPoint(vertex3, vertex4, this.mSplitLineVertexArray[0], this.mSplitLineVertexArray[6], this.mSplitLineVertexArray[3]);
        Vertex vertex5 = getVertex(5);
        Vector2dUtil.getCrossPoint(vertex5, vertex4, this.mSplitLineVertexArray[2], this.mSplitLineVertexArray[8], this.mSplitLineVertexArray[5]);
        Vertex vertex7 = getVertex(7);
        Vector2dUtil.getCrossPoint(vertex7, vertex4, this.mSplitLineVertexArray[6], this.mSplitLineVertexArray[8], this.mSplitLineVertexArray[7]);
    }

    public Vertex getExpandedVertex(int index) {
        return this.mSplitLineVertexArray[index];
    }

    public void replaceId(String target, String replacement) {
        getRootNode().replaceNodeId(target, replacement);
    }
}