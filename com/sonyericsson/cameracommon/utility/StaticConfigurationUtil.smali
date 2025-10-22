.class public Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;
.super Ljava/lang/Object;
.source "StaticConfigurationUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StaticConfigurationUtil"

.field private static sCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;


# instance fields
.field private final mIsForceSound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v2, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_2d

    .line 40
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    if-nez v2, :cond_1b

    .line 41
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    sput-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 42
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 50
    :cond_1b
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2a

    .line 51
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget-boolean v2, v2, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-nez v2, :cond_28

    :goto_25
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    .line 67
    :goto_27
    return-void

    :cond_28
    move v0, v1

    .line 51
    goto :goto_25

    .line 56
    :cond_2a
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    goto :goto_27

    .line 62
    :cond_2d
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    goto :goto_27
.end method

.method public static isForceSound()Z
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    if-nez v0, :cond_b

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    .line 74
    :cond_b
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    return v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .registers 1
    .param p0, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 78
    sput-object p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 79
    return-void
.end method
