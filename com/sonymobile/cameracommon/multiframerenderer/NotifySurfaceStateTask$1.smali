.class synthetic Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;
.super Ljava/lang/Object;
.source "NotifySurfaceStateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->values()[Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;->$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I

    :try_start_9
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;->$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CREATED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;->$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CHANGED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$1;->$SwitchMap$com$sonymobile$cameracommon$multiframerenderer$NotifySurfaceStateTask$NotifyType:[I

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->DESTROYED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
