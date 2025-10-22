.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectCircleIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final FOCUSING:I

.field public static final SUCCESS:I

.field public static final TOUCH:I

.field public static final TOUCH_RECORDING:I

.field public static final TRACKING:I

.field public static final TRACKING_RECORDING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TRACKING:I

    .line 87
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TRACKING_RECORDING:I

    .line 89
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->SUCCESS:I

    .line 90
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TOUCH:I

    .line 92
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->TOUCH_RECORDING:I

    .line 94
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectCircleIndicator;->FOCUSING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
