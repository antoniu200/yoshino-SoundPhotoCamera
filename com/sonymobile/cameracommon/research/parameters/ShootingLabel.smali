.class public Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.super Ljava/lang/Object;
.source "ShootingLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveCaptureNum;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;,
        Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    }
.end annotation


# static fields
.field public static final RECOGNIZED_SCENE_ACTION:Ljava/lang/String; = "action"

.field public static final RECOGNIZED_SCENE_AUTO:Ljava/lang/String; = "auto"

.field public static final RECOGNIZED_SCENE_BABY:Ljava/lang/String; = "baby"

.field public static final RECOGNIZED_SCENE_BACKLIGHT:Ljava/lang/String; = "backlight"

.field public static final RECOGNIZED_SCENE_BACKLIGHT_PORTRAIT:Ljava/lang/String; = "backlight-portrait"

.field public static final RECOGNIZED_SCENE_BEACH:Ljava/lang/String; = "beach"

.field public static final RECOGNIZED_SCENE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final RECOGNIZED_SCENE_DARK:Ljava/lang/String; = "dark"

.field public static final RECOGNIZED_SCENE_DISH:Ljava/lang/String; = "dish"

.field public static final RECOGNIZED_SCENE_DOCUMENT:Ljava/lang/String; = "document"

.field public static final RECOGNIZED_SCENE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final RECOGNIZED_SCENE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final RECOGNIZED_SCENE_MACRO:Ljava/lang/String; = "macro"

.field public static final RECOGNIZED_SCENE_NIGHT:Ljava/lang/String; = "night"

.field public static final RECOGNIZED_SCENE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final RECOGNIZED_SCENE_PARTY:Ljava/lang/String; = "party"

.field public static final RECOGNIZED_SCENE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final RECOGNIZED_SCENE_SNOW:Ljava/lang/String; = "snow"

.field public static final RECOGNIZED_SCENE_SPORTS:Ljava/lang/String; = "sports"

.field public static final RECOGNIZED_SCENE_SPOTLIGHT:Ljava/lang/String; = "spot-light"

.field public static final RECOGNIZED_SCENE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final RECOGNIZED_SCENE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final RECOGNIZED_SCENE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final SEMI_AUTO_OFF:I = 0x1

.field public static final SEMI_AUTO_ON:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ShootingLabel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertParameterToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 111
    .local v1, "p":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    invoke-interface {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;->getConvertedCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 113
    .end local v1    # "p":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAfDoneKeepingTimeParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$AfDoneKeepingTime;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptureTriggerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "trigger"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$CaptureTrigger;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "num"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "flash"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Flash;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getHandSignLostParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "num"    # I

    .prologue
    .line 51
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 6
    .param p0, "intVal"    # I
    .param p1, "params"    # [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;

    .prologue
    .line 91
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p1, v1

    .line 92
    .local v0, "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;
    invoke-interface {v0, p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;->equals(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 96
    .end local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;
    :goto_c
    return-object v0

    .line 91
    .restart local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    .end local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getObjectTrackingParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "objectTracking"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ObjectTracking;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "orientation"    # I

    .prologue
    .line 43
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getPredictiveCaptureNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "predictiveCaptureNum"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveCaptureNum;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$PredictiveCaptureNum;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getRecognizedSceneParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "scene"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$RecognizedScene;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getSelfTimerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "selfTimer"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SelfTimer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getSemiAutoParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "semiAuto"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$SemiAuto;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method

.method public static getStringParameter(Ljava/lang/String;[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 6
    .param p0, "stringVal"    # Ljava/lang/String;
    .param p1, "params"    # [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;

    .prologue
    .line 100
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p1, v1

    .line 101
    .local v0, "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;
    invoke-interface {v0, p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;->equals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 105
    .end local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;
    :goto_c
    return-object v0

    .line 100
    .restart local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    .end local v0    # "val":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2
    .param p0, "zoom"    # I

    .prologue
    .line 47
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getIntParameter(I[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    return-object v0
.end method
