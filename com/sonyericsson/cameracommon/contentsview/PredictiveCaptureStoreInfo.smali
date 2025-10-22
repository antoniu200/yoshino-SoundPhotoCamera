.class public Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
.super Ljava/lang/Object;
.source "PredictiveCaptureStoreInfo.java"


# instance fields
.field private final mCaptureNum:I

.field private final mCaptureTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "captureNum"    # I
    .param p2, "captureTime"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureNum:I

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureTime:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getCaptureNum()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureNum:I

    return v0
.end method

.method public getCaptureTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureTime:Ljava/lang/String;

    return-object v0
.end method
