.class public final enum Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
.super Ljava/lang/Enum;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FOUR_K_UHD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1717
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "FOUR_K_UHD"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_UHD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1718
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "FULL_HD"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1719
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "FULL_HD_60FPS"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1720
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "HD"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1721
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "VGA"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1722
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "FWVGA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1723
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "QVGA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1724
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "MMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1716
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_UHD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

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
    .line 1716
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 2
    .param p0, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 1728
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1716
    const-class v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 1

    .prologue
    .line 1716
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    return-object v0
.end method
