package com.sonyericsson.cameracommon.focusview;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import java.util.List;

/* loaded from: classes.dex */
public class RectangleTouchEventDispatcher implements View.OnTouchListener {
    public static final String TAG = "RectangleTouchEventDispatcher";
    private FaceInformationList mFacetList;
    private List<TaggedRectangle> mRectangles;
    private TaggedRectangle mTargetRect;

    public RectangleTouchEventDispatcher(List<TaggedRectangle> rectangles) {
        this.mRectangles = rectangles;
    }

    public void updateFaceList(FaceInformationList list) {
        this.mFacetList = list;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View arg0, MotionEvent event) {
        if (this.mFacetList != null) {
            Rectangle rect = null;
            int action = event.getAction();
            if (action == 0) {
                this.mTargetRect = updateTouchView(this.mFacetList, event);
            }
            if (this.mTargetRect != null) {
                rect = (Rectangle) this.mTargetRect.findViewById(R.id.rect);
            }
            if (action == 1 || action == 3) {
                this.mTargetRect = null;
            }
            if (rect != null) {
                return rect.onTouchEvent(event);
            }
        }
        return false;
    }

    private TaggedRectangle updateTouchView(FaceInformationList faceList, MotionEvent event) {
        NamedFace namedFace;
        TaggedRectangle targetRect = null;
        if (faceList == null) {
            return null;
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        for (int i = 0; i < 5; i++) {
            if (i < faceList.getNamedFaceList().size() && (namedFace = faceList.getNamedFace(i)) != null) {
                Rect viewRect = PositionConverter.getInstance().convertToView(namedFace.mFacePosition);
                if (viewRect.contains(x, y)) {
                    TaggedRectangle targetRect2 = this.mRectangles.get(i);
                    targetRect = targetRect2;
                }
            }
        }
        return targetRect;
    }
}