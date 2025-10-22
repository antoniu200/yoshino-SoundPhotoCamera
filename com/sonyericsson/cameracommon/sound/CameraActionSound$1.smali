.class Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/sound/CameraActionSound;->releaseDelay(Landroid/media/MediaActionSound;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

.field final synthetic val$sound:Landroid/media/MediaActionSound;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/sound/CameraActionSound;Landroid/media/MediaActionSound;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;->this$0:Lcom/sonyericsson/cameracommon/sound/CameraActionSound;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;->val$sound:Landroid/media/MediaActionSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/CameraActionSound$1;->val$sound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 146
    return-void
.end method
