package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.cameracommon.contentsview.contents.Content;

/* loaded from: classes.dex */
public class ContentFactory {
    public static final String TAG = "ContentFactory";

    public static Content create(Content.ContentInfo contentInfo) {
        switch (contentInfo.mContentType) {
            case BURST:
                return new BurstShotContent(contentInfo);
            default:
                return new Content(contentInfo, ExtraIconResources.get(contentInfo.mContentType), PlayIconResources.get(contentInfo.mContentType));
        }
    }
}