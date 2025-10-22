.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final FOCUSING:I

.field public static final LOST:I

.field public static final SUCCESS:I

.field public static final TOUCH:I

.field public static final TOUCH_RECORDING:I

.field public static final TRACKING:I

.field public static final TRACKING_RECORDING:I

.field public static final TRACKING_SEARCHING:I

.field public static final TRACKING_SEARCHING_RECORDING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_1_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING_SEARCHING:I

    .line 67
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_1_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING_SEARCHING_RECORDING:I

    .line 69
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_2_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    .line 71
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_2_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING_RECORDING:I

    .line 73
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_2_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    .line 74
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_1_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TOUCH:I

    .line 76
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_1_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TOUCH_RECORDING:I

    .line 78
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_2_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->FOCUSING:I

    .line 79
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_object_tracking_lost_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->LOST:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
