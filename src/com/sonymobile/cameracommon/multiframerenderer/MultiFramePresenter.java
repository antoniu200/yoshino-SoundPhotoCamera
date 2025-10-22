package com.sonymobile.cameracommon.multiframerenderer;

import com.sonyericsson.cameracommon.interaction.TouchActionTranslator;
import java.util.List;

/* loaded from: classes.dex */
public interface MultiFramePresenter {
    void addFrameId(String str);

    void deleteFrameId(String str);

    void endAdjustLayout(boolean z);

    List<String> getFrameIdList();

    TouchActionTranslator.TouchActionListener getTouchActionListener();

    void onPause();

    void onResume();

    void release();

    void startAdjustLayout(boolean z);

    void swapSortOrder(String str, String str2);
}