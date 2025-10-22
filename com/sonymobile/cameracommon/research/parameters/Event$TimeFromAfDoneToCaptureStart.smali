.class public final enum Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeFromAfDoneToCaptureStart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

.field public static final enum WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_10_MS"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 256
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_50_MS"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 257
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_100_MS"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 258
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_200_MS"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 259
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_500_MS"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 260
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_1000_MS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 261
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_1500_MS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 262
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "WITHIN_2000_MS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 263
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "OVER_2000_MS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 264
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "CONTINUOUS_CAPTURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 265
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    const-string v1, "NOT_TARGET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 254
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->CONTINUOUS_CAPTURE:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

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
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(J)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 269
    const-wide/16 v0, 0x7d0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    .line 270
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->OVER_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    .line 286
    :goto_8
    return-object v0

    .line 271
    :cond_9
    const-wide/16 v0, 0x5dc

    cmp-long v0, p0, v0

    if-ltz v0, :cond_12

    .line 272
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_2000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 273
    :cond_12
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1b

    .line 274
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 275
    :cond_1b
    const-wide/16 v0, 0x1f4

    cmp-long v0, p0, v0

    if-ltz v0, :cond_24

    .line 276
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_1000_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 277
    :cond_24
    const-wide/16 v0, 0xc8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2d

    .line 278
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_500_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 279
    :cond_2d
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-ltz v0, :cond_36

    .line 280
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_200_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 281
    :cond_36
    const-wide/16 v0, 0x32

    cmp-long v0, p0, v0

    if-ltz v0, :cond_3f

    .line 282
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_100_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 283
    :cond_3f
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-ltz v0, :cond_48

    .line 284
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_50_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8

    .line 286
    :cond_48
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->WITHIN_10_MS:Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;
    .registers 1

    .prologue
    .line 254
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/Event$TimeFromAfDoneToCaptureStart;

    return-object v0
.end method
