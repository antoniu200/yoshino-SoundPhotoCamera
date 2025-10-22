.class public Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionResult"
.end annotation


# instance fields
.field public faceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Face;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    .line 243
    return-void
.end method


# virtual methods
.method public addFaceResult(Landroid/hardware/Camera$Face;)V
    .registers 3
    .param p1, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method
