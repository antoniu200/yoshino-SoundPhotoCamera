.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final FOCUSING:I

.field public static final NORMAL:I

.field public static final SUCCESS:I

.field public static final TOUCH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    .line 32
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    .line 33
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_circle_focusing_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->FOCUSING:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
