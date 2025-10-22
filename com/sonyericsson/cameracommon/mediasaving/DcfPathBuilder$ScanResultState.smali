.class final enum Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
.super Ljava/lang/Enum;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScanResultState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

.field public static final enum SCAN_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

.field public static final enum SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    const-string v1, "SCAN_SUCCEEDED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    const-string v1, "SCAN_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    return-object v0
.end method
