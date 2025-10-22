.class Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;
.super Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartUpGuardianUnlimited"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V
    .registers 3

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->pause()V

    .line 123
    return-void
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;->tryToResumeAll()V

    .line 117
    return-void
.end method
