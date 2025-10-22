.class public Lcom/sonymobile/cameracommon/research/parameters/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$Label;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$AddonFW;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$Action;,
        Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Event"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
