package com.sonymobile.android.addoncamera.soundphoto.view;

import com.sonyericsson.cameracommon.viewfinder.InflateItem;
import com.sonymobile.android.addoncamera.soundphoto.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LayoutAsyncInflateItems {
    private static final List<InflateItem> INFLATE_ITEMS = new ArrayList();

    public enum CameraInflateItem implements InflateItem {
        HEAD_UP_DISPLAY(R.layout.viewfinder_layout, 1),
        RECTANGLE_FACE(R.layout.face_rectangle, 5),
        RECTANGLE_SINGLE(R.layout.fast_capturing_auto_focus_rectangles, 1),
        RECTANGLE_TOUCH(R.layout.fast_capturing_auto_focus_rectangles, 1),
        RECTANGLE_OBJECT_TRACKING(R.layout.face_rectangle, 1),
        AUTO_REVIEW(R.layout.auto_review, 1),
        PREVIEW_OVERLAY(R.layout.preview_overlay, 1),
        SOUND_INDICATOR(R.layout.sound_level_indicator, 1),
        AUDIO_PLAYER(R.layout.audio_player, 1);

        protected final int mInflateId;
        protected final int mViewCount;

        CameraInflateItem(int inflateId, int viewCount) {
            this.mInflateId = inflateId;
            this.mViewCount = viewCount;
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.InflateItem
        public int getLayoutId() {
            return this.mInflateId;
        }

        @Override // com.sonyericsson.cameracommon.viewfinder.InflateItem
        public int getViewCount() {
            return this.mViewCount;
        }
    }

    public static List<InflateItem> getInflateItems() {
        if (INFLATE_ITEMS.size() == 0) {
            INFLATE_ITEMS.add(CameraInflateItem.HEAD_UP_DISPLAY);
            INFLATE_ITEMS.add(CameraInflateItem.RECTANGLE_FACE);
            INFLATE_ITEMS.add(CameraInflateItem.RECTANGLE_SINGLE);
            INFLATE_ITEMS.add(CameraInflateItem.RECTANGLE_TOUCH);
            INFLATE_ITEMS.add(CameraInflateItem.RECTANGLE_OBJECT_TRACKING);
            INFLATE_ITEMS.add(CameraInflateItem.PREVIEW_OVERLAY);
            INFLATE_ITEMS.add(CameraInflateItem.SOUND_INDICATOR);
            INFLATE_ITEMS.add(CameraInflateItem.AUDIO_PLAYER);
        }
        return INFLATE_ITEMS;
    }
}