package com.sonyericsson.cameracommon.setting.layoutcoordinator;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* loaded from: classes.dex */
class LayoutCoordinateUtil {
    LayoutCoordinateUtil() {
    }

    public static Rect coodinatePosition(int orientation, View target, Rect targetRect, Rect rotationSourceArea, Point rotationDestPosition) {
        int xOnRotationSourceArea = targetRect.left - rotationSourceArea.left;
        int yOnRotationSourceArea = targetRect.top - rotationSourceArea.top;
        target.setLeft(xOnRotationSourceArea);
        target.setRight(targetRect.width() + xOnRotationSourceArea);
        target.setTop(yOnRotationSourceArea);
        target.setBottom(targetRect.height() + yOnRotationSourceArea);
        target.setPivotX(-target.getLeft());
        target.setPivotY(-target.getTop());
        target.setRotation(RotationUtil.getAngle(orientation));
        if (orientation == 1) {
            int offsetX = rotationDestPosition.x;
            int offsetY = rotationDestPosition.y + rotationSourceArea.width();
            target.setTranslationX(0.0f);
            target.setTranslationY(0.0f);
            target.offsetLeftAndRight(offsetX);
            target.offsetTopAndBottom(offsetY);
            Rect rect = new Rect(0, 0, targetRect.height(), targetRect.width());
            rect.offset(offsetX, offsetY - rotationSourceArea.width());
            return rect;
        }
        int offsetX2 = rotationDestPosition.x;
        int offsetY2 = rotationDestPosition.y;
        target.setTranslationX(offsetX2);
        target.setTranslationY(offsetY2);
        Rect rect2 = new Rect(0, 0, targetRect.width(), targetRect.height());
        rect2.offset(target.getLeft() + offsetX2, target.getTop() + offsetY2);
        return rect2;
    }
}