package com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase;

import com.sonymobile.cameracommon.multiframerenderer.splitlayoutbase.SplitLayoutHelperBase;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class SplitLayoutHelperNode {
    public static final String EMPTY = "EMPTY";
    public static final String FILL_CHILD = "FILL_CHILD";
    protected final SplitLayoutHelperBase.Area mArea;
    protected final SplitLayoutHelperNode mChildNode0;
    protected final SplitLayoutHelperNode mChildNode1;
    protected final SplitLayoutHelperBase.Segment mMovalbleSegment;
    protected String mNodeNameForDebug;
    protected SplitLayoutHelperNode mParentNode;
    private int mNest = -1;
    protected String mFrameId = EMPTY;
    protected String mTempFrameIdForCopy = EMPTY;

    public SplitLayoutHelperNode(SplitLayoutHelperNode childNode0, SplitLayoutHelperNode childNode1, SplitLayoutHelperBase.Area area, SplitLayoutHelperBase.Segment movalbleSegment) {
        this.mParentNode = null;
        this.mChildNode0 = childNode0;
        this.mChildNode1 = childNode1;
        this.mArea = area;
        this.mMovalbleSegment = movalbleSegment;
        if (hasChild()) {
            this.mChildNode0.mParentNode = this;
            this.mChildNode1.mParentNode = this;
        }
        setNodeNest(0);
    }

    public void setNodeNameForDebug(String nodeName) {
        this.mNodeNameForDebug = nodeName;
    }

    public boolean addFrame(String frameId) {
        if (frameId == null) {
            throw new IllegalArgumentException("Don't set null.");
        }
        if (this.mFrameId == EMPTY) {
            this.mFrameId = frameId;
            return true;
        }
        if (!hasChild()) {
            return false;
        }
        if (this.mFrameId == FILL_CHILD) {
            return this.mChildNode1.addFrame(frameId) || this.mChildNode0.addFrame(frameId);
        }
        if (this.mChildNode0.getFrameId() != EMPTY) {
            throw new IllegalStateException("Child node 0 is not empty : Frame id=" + this.mChildNode0.getFrameId());
        }
        if (this.mChildNode1.getFrameId() != EMPTY) {
            throw new IllegalStateException("Child node 1 is not empty : Frame id=" + this.mChildNode1.getFrameId());
        }
        this.mChildNode0.addFrame(this.mFrameId);
        this.mChildNode1.addFrame(frameId);
        this.mFrameId = FILL_CHILD;
        return true;
    }

    public SplitLayoutHelperNode deleteFrame(String frameId) {
        if (frameId == null) {
            throw new IllegalArgumentException("Don't set null.");
        }
        if (this.mFrameId == EMPTY) {
            throw new IllegalStateException("Empty node.");
        }
        if (this.mFrameId == FILL_CHILD) {
            SplitLayoutHelperNode deletedNode0 = this.mChildNode0.deleteFrame(frameId);
            if (deletedNode0 != null) {
                if (deletedNode0 == this.mChildNode0) {
                    if (this.mChildNode0.getFrameId() == EMPTY && this.mChildNode1.getFrameId() == FILL_CHILD) {
                        copyFrameIdTree(this.mChildNode1);
                        return deletedNode0;
                    }
                    this.mFrameId = this.mChildNode1.mFrameId;
                    this.mChildNode1.mFrameId = EMPTY;
                    return deletedNode0;
                }
                return deletedNode0;
            }
            SplitLayoutHelperNode deletedNode1 = this.mChildNode1.deleteFrame(frameId);
            if (deletedNode1 != null) {
                if (deletedNode1 == this.mChildNode1) {
                    if (this.mChildNode1.getFrameId() == EMPTY && this.mChildNode0.getFrameId() == FILL_CHILD) {
                        copyFrameIdTree(this.mChildNode0);
                    } else {
                        this.mFrameId = this.mChildNode0.mFrameId;
                        this.mChildNode0.mFrameId = EMPTY;
                    }
                }
                return deletedNode1;
            }
        } else if (this.mFrameId.equals(frameId)) {
            this.mFrameId = EMPTY;
            return this;
        }
        return null;
    }

    private void copyFrameIdTree(SplitLayoutHelperNode src) {
        prepareCopyFrameIdTree();
        doCopyFrameIdTree(src);
        finalizeCopyFrameIdTree();
    }

    private void prepareCopyFrameIdTree() {
        this.mTempFrameIdForCopy = this.mFrameId;
        this.mFrameId = EMPTY;
        if (hasChild()) {
            this.mChildNode0.prepareCopyFrameIdTree();
            this.mChildNode1.prepareCopyFrameIdTree();
        }
    }

    private void doCopyFrameIdTree(SplitLayoutHelperNode src) {
        this.mFrameId = src.mTempFrameIdForCopy;
        if (src.hasChild()) {
            this.mChildNode0.doCopyFrameIdTree(src.mChildNode0);
            this.mChildNode1.doCopyFrameIdTree(src.mChildNode1);
        }
    }

    private void finalizeCopyFrameIdTree() {
        this.mTempFrameIdForCopy = EMPTY;
        if (hasChild()) {
            this.mChildNode0.finalizeCopyFrameIdTree();
            this.mChildNode1.finalizeCopyFrameIdTree();
        }
    }

    public List<String> swapFrame(String fromFrameId, String toFrameId) {
        List<String> layoutChangedFrameId = new ArrayList<>();
        SplitLayoutHelperNode nodeFrom = findNode(fromFrameId);
        SplitLayoutHelperNode nodeTo = findNode(toFrameId);
        if (nodeFrom != null && nodeTo != null) {
            layoutChangedFrameId.add(fromFrameId);
            layoutChangedFrameId.add(toFrameId);
            if (nodeFrom.mNest <= nodeTo.mNest) {
                nodeFrom.mFrameId = toFrameId;
                nodeTo.mFrameId = fromFrameId;
            } else {
                nodeFrom.mParentNode.deleteFrame(fromFrameId);
                nodeTo.addFrame(fromFrameId);
                layoutChangedFrameId.add(nodeFrom.mParentNode.mFrameId);
            }
        }
        return layoutChangedFrameId;
    }

    public SplitLayoutHelperNode findNode(String frameId) {
        if (frameId == null) {
            return null;
        }
        if (frameId.equals(this.mFrameId)) {
            return this;
        }
        if (!hasChild()) {
            return null;
        }
        SplitLayoutHelperNode foundNode = this.mChildNode0.findNode(frameId);
        if (foundNode == null) {
            SplitLayoutHelperNode foundNode2 = this.mChildNode1.findNode(frameId);
            if (foundNode2 == null) {
                return null;
            }
            return foundNode2;
        }
        return foundNode;
    }

    public String getFrameId() {
        return this.mFrameId;
    }

    public SplitLayoutHelperBase.Area getArea() {
        return this.mArea;
    }

    public SplitLayoutHelperBase.Segment getSegmentVertexIndex() {
        return this.mMovalbleSegment;
    }

    public List<String> getFrameIdList() {
        return collectFrameId(new ArrayList());
    }

    public Set<Integer> getControlPointVertexIndexSet() {
        return collectControlPointVertexIndex(new HashSet());
    }

    public Set<SplitLayoutHelperBase.Segment> getMovableSegmentSet() {
        return collectMovableSegment(new HashSet());
    }

    public Set<SplitLayoutHelperBase.Area> getAreaSet() {
        return collectArea(new HashSet());
    }

    public void clearFrame() {
        this.mFrameId = EMPTY;
        if (hasChild()) {
            this.mChildNode0.clearFrame();
            this.mChildNode1.clearFrame();
        }
    }

    protected boolean hasChild() {
        return (this.mChildNode0 == null || this.mChildNode1 == null) ? false : true;
    }

    private List<String> collectFrameId(List<String> collector) {
        if (this.mFrameId != EMPTY) {
            if (this.mFrameId == FILL_CHILD) {
                this.mChildNode0.collectFrameId(collector);
                this.mChildNode1.collectFrameId(collector);
            } else {
                collector.add(this.mFrameId);
            }
        }
        return collector;
    }

    private Set<Integer> collectControlPointVertexIndex(Set<Integer> collector) {
        if (this.mFrameId != EMPTY) {
            if (this.mFrameId == FILL_CHILD) {
                this.mChildNode0.collectControlPointVertexIndex(collector);
                this.mChildNode1.collectControlPointVertexIndex(collector);
            }
            collector.add(Integer.valueOf(this.mMovalbleSegment.pointVertexIndex0));
            collector.add(Integer.valueOf(this.mMovalbleSegment.pointVertexIndex1));
        }
        return collector;
    }

    private Set<SplitLayoutHelperBase.Segment> collectMovableSegment(Set<SplitLayoutHelperBase.Segment> collector) {
        if (this.mFrameId != EMPTY) {
            if (this.mFrameId == FILL_CHILD) {
                this.mChildNode0.collectMovableSegment(collector);
                this.mChildNode1.collectMovableSegment(collector);
            }
            collector.add(this.mMovalbleSegment);
        }
        return collector;
    }

    private Set<SplitLayoutHelperBase.Area> collectArea(Set<SplitLayoutHelperBase.Area> collector) {
        if (this.mFrameId != EMPTY) {
            if (this.mFrameId == FILL_CHILD) {
                this.mChildNode0.collectArea(collector);
                this.mChildNode1.collectArea(collector);
            } else {
                collector.add(this.mArea);
            }
        }
        return collector;
    }

    private void setNodeNest(int nest) {
        this.mNest = nest;
        if (hasChild()) {
            this.mChildNode0.setNodeNest(nest + 1);
            this.mChildNode1.setNodeNest(nest + 1);
        }
    }

    public void replaceNodeId(String target, String replacement) {
        SplitLayoutHelperNode targetNode = findNode(target);
        if (targetNode != null) {
            targetNode.mFrameId = replacement;
        }
    }

    public String toString() {
        return "Node = " + this.mNodeNameForDebug + ", Frame Id = " + this.mFrameId + ", Area = " + this.mArea;
    }
}