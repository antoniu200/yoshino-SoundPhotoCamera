.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$MultiIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final NORMAL:I

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_inactive_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$MultiIndicator;->NORMAL:I

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$MultiIndicator;->SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
