package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import java.util.Locale;

/* loaded from: classes.dex */
public class BurstShotContent extends Content {
    public static final int COUNT_UP_MAX_NUM = 999;

    public BurstShotContent(Content.ContentInfo info) {
        super(info, ExtraIconResources.get(info.mContentType), PlayIconResources.get(info.mContentType));
        this.mCountText = createCountText(info.mGroupedImage);
    }

    @Override // com.sonyericsson.cameracommon.contentsview.contents.Content
    public boolean shouldShowPlayableIcon() {
        return false;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.contents.Content
    public boolean shouldShowExtraIcon() {
        return true;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.contents.Content
    public int getExtraIconResourceId() {
        return R.drawable.cam_photo_stack_burst_icn;
    }

    private String createCountText(int count) {
        if (count > 0 && count <= 999) {
            String countText = String.valueOf(count);
            return countText;
        }
        if (999 >= count) {
            return null;
        }
        String countText2 = 999 + String.format(Locale.US, "+", new Object[0]);
        return countText2;
    }
}