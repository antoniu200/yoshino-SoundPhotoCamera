.class public Lcom/sonymobile/cameracommon/media/utility/NotificationStreamManager;
.super Ljava/lang/Object;
.source "NotificationStreamManager.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/NotificationStreamManager;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    return-void
.end method

.method private static isHigherThanLollipop()Z
    .registers 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public setStreamMuteIfVersionIsHigherThanLollipop(Z)V
    .registers 6
    .param p1, "mute"    # Z

    .prologue
    .line 37
    invoke-static {}, Lcom/sonymobile/cameracommon/media/utility/NotificationStreamManager;->isHigherThanLollipop()Z

    move-result v0

    if-nez v0, :cond_11

    .line 38
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/utility/NotificationStreamManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    if-eqz p1, :cond_12

    const/16 v0, -0x64

    :goto_d
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 43
    :cond_11
    return-void

    .line 38
    :cond_12
    const/16 v0, 0x64

    goto :goto_d
.end method
