.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;
.super Ljava/lang/Object;
.source "TakenStatusPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TakenStatusPhoto"


# instance fields
.field protected mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

.field protected mImage:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V
    .registers 3
    .param p1, "facing"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V
    .registers 3
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 45
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 46
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 47
    return-void
.end method


# virtual methods
.method public isFront()Z
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    if-ne v0, v1, :cond_8

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public log()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method
