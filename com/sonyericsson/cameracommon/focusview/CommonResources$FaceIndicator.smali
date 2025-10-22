.class public Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;
.super Ljava/lang/Object;
.source "CommonResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/CommonResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceIndicator"
.end annotation


# static fields
.field public static final FAIL:I

.field public static final NORMAL:I

.field public static final PRIORITY:I

.field public static final SUCCESS:I

.field public static final TRANSPARENT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_inactive_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->NORMAL:I

    .line 55
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_focus_locked_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->SUCCESS:I

    .line 58
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_auto_focus_inactive_selected_icn:I

    sput v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$FaceIndicator;->PRIORITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
