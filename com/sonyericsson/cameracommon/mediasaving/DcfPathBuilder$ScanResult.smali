.class Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanResult"
.end annotation


# instance fields
.field final resultDirNo:I

.field final resultFileNo:I

.field final resultState:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;II)V
    .registers 4
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    .param p2, "dirNo"    # I
    .param p3, "fileNo"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultState:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    .line 106
    iput p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultDirNo:I

    .line 107
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;->resultFileNo:I

    .line 108
    return-void
.end method
