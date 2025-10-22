.class Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundPhotoCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceExitRequestReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V
    .registers 2

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$1;

    .prologue
    .line 1123
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1127
    if-nez p2, :cond_3

    .line 1137
    :cond_2
    :goto_2
    return-void

    .line 1132
    :cond_3
    const-string v0, "com.sonymobile.cameracommon.intent.ACTION_FORCE_EXIT_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity$ForceExitRequestReceiver;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->finish()V

    goto :goto_2
.end method
