.class public final enum Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
.super Ljava/lang/Enum;
.source "SpfEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/spflib/SpfEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAC:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

.field private static final synthetic ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

.field public static final enum UNDEFINED:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

.field public static final enum WAV_LPCM:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    const-string v1, "WAV_LPCM"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->WAV_LPCM:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    .line 174
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    const-string v1, "AAC"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->AAC:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    .line 175
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v5, v3}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->UNDEFINED:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->WAV_LPCM:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->AAC:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->UNDEFINED:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput p3, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->code:I

    .line 181
    return-void
.end method

.method static synthetic access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;)I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->code:I

    return v0
.end method

.method static fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 184
    invoke-static {}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v3, :cond_b

    .line 189
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->UNDEFINED:Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    :cond_a
    return-object v0

    .line 184
    :cond_b
    aget-object v0, v2, v1

    .line 185
    .local v0, "i":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    iget v4, v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->code:I

    if-eq v4, p0, :cond_a

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    array-length v1, v0

    new-array v2, v1, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
