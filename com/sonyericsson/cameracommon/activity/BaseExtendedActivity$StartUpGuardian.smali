.class abstract Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
.super Ljava/lang/Object;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartUpGuardian"
.end annotation


# instance fields
.field private mIsAlreadyResumed:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 74
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_25

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsKeyguardAvailable:Z

    .line 82
    :goto_24
    return-void

    .line 80
    :cond_25
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iput-boolean v3, v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsKeyguardAvailable:Z

    goto :goto_24
.end method

.method protected tryToResumeAll()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsKeyguardAvailable:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    if-nez v0, :cond_2a

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->mIsAlreadyResumed:Z

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->showAndConfirmDisclaimer()V

    .line 98
    :cond_1a
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->pauseAudioPlayback()V

    .line 106
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->resumeAll()V

    .line 108
    :cond_2a
    return-void
.end method
