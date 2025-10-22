package com.sonymobile.android.addoncamera.soundphoto.provider;

import com.sonyericsson.cameracommon.provider.AddOnSettingsProvider;

/* loaded from: classes.dex */
public class SoundPhotoSettingsProvider extends AddOnSettingsProvider {
    private static final String AUTHORITY = "com.sonymobile.android.addoncamera.soundphoto.provider";
    private static final String DATABASE_NAME = "soundphoto.db";

    @Override // com.sonyericsson.cameracommon.provider.AddOnSettingsProvider
    protected String getDataBaseName() {
        return DATABASE_NAME;
    }

    @Override // com.sonyericsson.cameracommon.provider.AddOnSettingsProvider
    public String getAuthority() {
        return AUTHORITY;
    }

    public static String getSpecificAuthority() {
        return AUTHORITY;
    }
}