package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class ContentsContainer extends LinearLayout {
    public static final String TAG = "ContentsContainer";

    public ContentsContainer(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setSensorOrientation(int orientation) {
        int rotationDegree = 0;
        if (orientation == 1) {
            rotationDegree = -90;
        }
        for (int index = 0; index < getChildCount(); index++) {
            getChildAt(index).setRotation(rotationDegree);
        }
    }

    public void pause() {
        for (int index = 0; index < getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) getChildAt(index);
            pallet.release();
        }
        removeAllViews();
    }

    public void enableClick() {
        for (int index = 0; index < getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) getChildAt(index);
            pallet.enableClick();
        }
    }

    public void disableClick() {
        for (int index = 0; index < getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) getChildAt(index);
            pallet.disableClick();
        }
    }

    public void hide() {
        for (int index = 0; index < getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) getChildAt(index);
            if (pallet.hasContent()) {
                pallet.setVisibility(4);
            } else {
                pallet.requestHide();
            }
        }
    }

    public void cancelRequestHide() {
        for (int index = 0; index < getChildCount(); index++) {
            ContentPallet pallet = (ContentPallet) getChildAt(index);
            pallet.cancelRequestHide();
        }
    }
}