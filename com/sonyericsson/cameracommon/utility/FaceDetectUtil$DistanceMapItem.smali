.class Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceMapItem"
.end annotation


# instance fields
.field private final mArrayIndex:I

.field private final mDistance:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "arrayIndex"    # I
    .param p2, "distance"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mArrayIndex:I

    .line 32
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mDistance:I

    .line 33
    return-void
.end method


# virtual methods
.method public getArrayIndex()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mArrayIndex:I

    return v0
.end method

.method public getDistance()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->mDistance:I

    return v0
.end method
