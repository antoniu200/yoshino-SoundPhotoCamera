package com.sonymobile.android.addoncamera.soundphoto.setting;

import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.AutoReview;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.Flash;
import com.sonymobile.android.addoncamera.soundphoto.setting.parameters.SelfTimer;

/* loaded from: classes.dex */
public interface ParameterApplyer {
    void commit();

    void set(AutoReview autoReview);

    void set(Flash flash);

    void set(SelfTimer selfTimer);
}