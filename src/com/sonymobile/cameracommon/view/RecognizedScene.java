package com.sonymobile.cameracommon.view;

import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameraextension.CameraExtension;

/* loaded from: classes.dex */
public class RecognizedScene {
    final int mIconId;
    final CameraExtension.SceneMode mSceneMode;
    final int mTextId;

    private RecognizedScene(CameraExtension.SceneMode scene, int iconId, int textId) {
        this.mSceneMode = scene;
        this.mIconId = iconId;
        this.mTextId = textId;
    }

    public static RecognizedScene create(CameraExtension.SceneMode scene) {
        if (scene == null) {
            return new RecognizedScene(null, -1, -1);
        }
        switch (AnonymousClass1.$SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[scene.ordinal()]) {
            case 1:
                return new RecognizedScene(scene, -1, -1);
            case 2:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_softsnap_icn, R.string.cam_strings_scenes_auto_recog_softsnap_cy_txt);
            case 3:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_landscape_icn, R.string.cam_strings_scenes_auto_recog_landscape_txt);
            case 4:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_night_icn, R.string.cam_strings_scenes_auto_recog_twilight_txt);
            case 5:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_night_portrait_icn, R.string.cam_strings_scenes_auto_recog_twilight_portrait_cy_txt);
            case 6:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_backlight_icn, R.string.cam_strings_scenes_auto_recog_backlight_txt);
            case 7:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_backlight_portrait_icn, R.string.cam_strings_scenes_auto_recog_backlight_portrait_cy_txt);
            case 8:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_document_icn, R.string.cam_strings_scenes_auto_recog_text_txt);
            case 9:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_super_low_light_icn, R.string.cam_strings_scenes_auto_recog_low_light_cy_txt);
            case 10:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_infant_icn, R.string.cam_strings_scenes_auto_recog_infant_cy_txt);
            case 11:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_spotlight_icn, R.string.cam_strings_scenes_auto_recog_spotlight_cy_txt);
            case 12:
                return new RecognizedScene(scene, R.drawable.cam_scene_recog_gourmet_icn, R.string.cam_strings_scenes_auto_recog_gourmet_txt);
            default:
                return new RecognizedScene(scene, -1, -1);
        }
    }

    /* renamed from: com.sonymobile.cameracommon.view.RecognizedScene$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode = new int[CameraExtension.SceneMode.values().length];

        static {
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.LANDSCAPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.NIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.NIGHT_PORTRAIT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.BACKLIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.BACKLIGHT_PORTRAIT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.DOCUMENT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.DARK.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.BABY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.SPOTLIGHT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.DISH.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.SNOW.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.SPORTS.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.PARTY.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.ACTION.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.THEATRE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.BEACH.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.SUNSET.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.STEADYPHOTO.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$sonyericsson$cameraextension$CameraExtension$SceneMode[CameraExtension.SceneMode.FIREWORKS.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
        }
    }

    public CameraExtension.SceneMode getSceneMode() {
        return this.mSceneMode;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }
}