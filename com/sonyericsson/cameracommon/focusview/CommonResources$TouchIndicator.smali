.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final FOCUSING:I

.field public static final NORMAL:I

.field public static final RELEASE:I

.field public static final SUCCESS:I

.field public static final TOUCH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->NORMAL:I

    .line 45
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_animation_touch_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->TOUCH:I

    .line 46
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->RELEASE:I

    .line 47
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->SUCCESS:I

    .line 48
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->FOCUSING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
