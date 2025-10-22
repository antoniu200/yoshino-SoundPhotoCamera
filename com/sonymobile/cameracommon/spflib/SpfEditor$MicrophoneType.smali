.class public final enum Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
.super Ljava/lang/Enum;
.source "SpfEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/spflib/SpfEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MicrophoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

.field public static final enum EXTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

.field public static final enum INTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

.field public static final enum UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    .line 216
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->INTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    .line 217
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->EXTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->INTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->EXTERNAL:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput p3, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->code:I

    .line 221
    return-void
.end method

.method static synthetic access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;)I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->code:I

    return v0
.end method

.method static fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 224
    invoke-static {}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v3, :cond_b

    .line 229
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    :cond_a
    return-object v0

    .line 224
    :cond_b
    aget-object v0, v2, v1

    .line 225
    .local v0, "i":Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
    iget v4, v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->code:I

    if-eq v4, p0, :cond_a

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    array-length v1, v0

    new-array v2, v1, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
