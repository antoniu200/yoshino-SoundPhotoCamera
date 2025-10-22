.class public final enum Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
.super Ljava/lang/Enum;
.source "SpfEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/spflib/SpfEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShutterSoundStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

.field public static final enum EXISTING:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

.field public static final enum NONE:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

.field public static final enum UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    .line 195
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    const-string v1, "EXISTING"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->EXISTING:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    .line 196
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->NONE:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->EXISTING:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->NONE:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p3, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->code:I

    .line 200
    return-void
.end method

.method static synthetic access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;)I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->code:I

    return v0
.end method

.method static fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v3, :cond_b

    .line 208
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->UNKNOWN:Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    :cond_a
    return-object v0

    .line 203
    :cond_b
    aget-object v0, v2, v1

    .line 204
    .local v0, "i":Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
    iget v4, v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->code:I

    if-eq v4, p0, :cond_a

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->ENUM$VALUES:[Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
