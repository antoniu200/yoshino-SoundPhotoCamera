.class public Lcom/sonymobile/cameracommon/spflib/SpfEditor;
.super Ljava/lang/Object;
.source "SpfEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;,
        Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;,
        Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;,
        Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    }
.end annotation


# instance fields
.field private mHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "spf"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeInsertAppThreeMarkerToFile(Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeOpenWithFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    .line 110
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    if-nez v0, :cond_18

    .line 111
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SpfEditor could not read the specified data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_18
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "jpegDataBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeInsertAppThreeMarkerToBuffer(Ljava/nio/ByteBuffer;)V

    .line 74
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeOpenWithBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    .line 75
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    if-nez v0, :cond_18

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpfEditor could not read the specified data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_18
    return-void
.end method

.method private getSoundDataSize()I
    .registers 2

    .prologue
    .line 309
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeGetSoundDataSize(I)I

    move-result v0

    return v0
.end method

.method private static native nativeAddSoundData(IIIIIII[B)Z
.end method

.method private static native nativeClose(I)V
.end method

.method private static native nativeDeleteSoundData(I)Z
.end method

.method private static native nativeGetSoundCodec(I)I
.end method

.method private static native nativeGetSoundData(I[B)I
.end method

.method private static native nativeGetSoundDataSize(I)I
.end method

.method private static native nativeGetSoundMetadata(ILcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)Z
.end method

.method private static native nativeInsertAppThreeMarkerToBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method private static native nativeInsertAppThreeMarkerToFile(Ljava/lang/String;)V
.end method

.method private static native nativeIsSpfFile(I)Z
.end method

.method private static native nativeOpenWithBuffer(Ljava/nio/ByteBuffer;)I
.end method

.method private static native nativeOpenWithFile(Ljava/lang/String;)I
.end method

.method private static native nativeSucceedSoundDataTo(ILjava/lang/String;)Z
.end method


# virtual methods
.method public addSoundData(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;[B)Z
    .registers 12
    .param p1, "codec"    # Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    .param p2, "metaData"    # Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    .param p3, "sounddata"    # [B

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->isSpf()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    const/4 v0, 0x0

    .line 149
    :goto_7
    return v0

    .line 150
    :cond_8
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    .line 151
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->code:I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;)I

    move-result v1

    .line 152
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I
    invoke-static {p2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->access$0(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I

    move-result v2

    .line 153
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I
    invoke-static {p2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->access$1(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I

    move-result v3

    .line 154
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I
    invoke-static {p2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I

    move-result v4

    .line 155
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I
    invoke-static {p2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->access$3(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I

    move-result v5

    .line 156
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I
    invoke-static {p2}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->access$4(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I

    move-result v6

    move-object v7, p3

    .line 149
    invoke-static/range {v0 .. v7}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeAddSoundData(IIIIIII[B)Z

    move-result v0

    goto :goto_7
.end method

.method public deleteSoundData()Z
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeDeleteSoundData(I)Z

    move-result v0

    return v0
.end method

.method public getSoundCodec()Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeGetSoundCodec(I)I

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;->fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundCodec;

    move-result-object v0

    return-object v0
.end method

.method public getSoundData()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->getSoundDataSize()I

    move-result v3

    new-array v0, v3, [B

    .line 139
    .local v0, "buff":[B
    iget v3, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v3, v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeGetSoundData(I[B)I

    move-result v2

    .line 140
    .local v2, "size":I
    new-array v1, v2, [B

    .line 141
    .local v1, "result":[B
    array-length v3, v1

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object v1
.end method

.method public getSoundMetaData()Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;-><init>()V

    .line 130
    .local v0, "metadata":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    iget v1, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v1, v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeGetSoundMetadata(ILcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    .end local v0    # "metadata":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    :goto_d
    return-object v0

    .restart local v0    # "metadata":Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSpf()Z
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeIsSpfFile(I)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeClose(I)V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    .line 118
    return-void
.end method

.method public succeedSoundDataTo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->isSpf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_7
    return v0

    .line 164
    :cond_8
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeInsertAppThreeMarkerToFile(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->mHandle:I

    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor;->nativeSucceedSoundDataTo(ILjava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method
