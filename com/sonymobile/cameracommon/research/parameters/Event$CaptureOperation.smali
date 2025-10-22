.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;


# instance fields
.field private final mIsShooting:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 129
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 131
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v7, v7, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 133
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING"

    const/4 v2, 0x3

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 135
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v8, v8, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 137
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST"

    const/4 v2, 0x5

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 139
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 141
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST"

    const/4 v2, 0x7

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "VIEWER"

    invoke-direct {v0, v1, v9, v9, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 145
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_VIEWER"

    const/16 v2, 0x9

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 147
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_VIEWER"

    const/16 v2, 0xa

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 149
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_VIEWER"

    const/16 v2, 0xb

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 151
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "BURST_VIEWER"

    const/16 v2, 0xc

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 153
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST_VIEWER"

    const/16 v2, 0xd

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 155
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST_VIEWER"

    const/16 v2, 0xe

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 157
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST_VIEWER"

    const/16 v2, 0xf

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p3, "value"    # I
    .param p4, "isShooting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    .line 166
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mIsShooting:Z

    .line 167
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .registers 2

    .prologue
    .line 186
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    return v0
.end method

.method public getViewer()Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .registers 2

    .prologue
    .line 181
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    return-object v0
.end method

.method public isShooting()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mIsShooting:Z

    return v0
.end method

.method public updateOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .registers 9
    .param p1, "currentOperation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .prologue
    .line 192
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getValue()I

    move-result v2

    .line 193
    .local v2, "updatedOperationValue":I
    iget v3, p0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v2, v3

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "updatedOperation":Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->values()[Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v5, :cond_17

    aget-object v0, v4, v3

    .line 198
    .local v0, "co":Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    iget v6, v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->mValue:I

    if-ne v6, v2, :cond_18

    .line 199
    move-object v1, v0

    .line 203
    .end local v0    # "co":Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    :cond_17
    return-object v1

    .line 197
    .restart local v0    # "co":Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method
