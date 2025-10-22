.class public final Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants$AutoReviewForCameraUiValue;
.super Ljava/lang/Object;
.source "CommonSettingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoReviewForCameraUiValue"
.end annotation


# static fields
.field public static final ALWAYS:Ljava/lang/String; = "always"

.field public static final FRONT_ONLY:Ljava/lang/String; = "front_only"

.field static final KEY:Ljava/lang/String; = "auto_review_for_camera_ui"

.field public static final OFF:Ljava/lang/String; = "off"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
