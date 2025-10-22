.class public Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;
.super Ljava/lang/Object;
.source "SpfEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/spflib/SpfEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundMetaData"
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1


# instance fields
.field private mDuration:I

.field private mMicrophoneCount:I

.field private mMicrophoneType:I

.field private mPreDuration:I

.field private mShutterSoundStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I

    .line 246
    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I

    .line 247
    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I

    .line 248
    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I

    .line 249
    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I

    .line 250
    return-void
.end method

.method static synthetic access$0(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I

    return v0
.end method

.method static synthetic access$1(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I

    return v0
.end method

.method static synthetic access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I

    return v0
.end method

.method static synthetic access$3(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;)I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I

    return v0
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I

    return v0
.end method

.method public getMicrophoneCount()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I

    return v0
.end method

.method public getMicrophoneType()Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    move-result-object v0

    return-object v0
.end method

.method public getPreDuration()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I

    return v0
.end method

.method public getShutterSoundStatus()Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->fromCode(I)Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 260
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasMicrophoneCount()Z
    .registers 3

    .prologue
    .line 293
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasMicrophoneType()Z
    .registers 3

    .prologue
    .line 304
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasPreDuration()Z
    .registers 3

    .prologue
    .line 271
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasShutterSoundStatus()Z
    .registers 3

    .prologue
    .line 282
    iget v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mDuration:I

    .line 255
    return-void
.end method

.method public setMicrophoneCount(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneCount:I

    .line 288
    return-void
.end method

.method public setMicrophoneType(Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;)V
    .registers 3
    .param p1, "value"    # Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;

    .prologue
    .line 298
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->code:I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;->access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$MicrophoneType;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mMicrophoneType:I

    .line 299
    return-void
.end method

.method public setPreDuration(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mPreDuration:I

    .line 266
    return-void
.end method

.method public setShutterSoundStatus(Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;)V
    .registers 3
    .param p1, "value"    # Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;

    .prologue
    .line 276
    # getter for: Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->code:I
    invoke-static {p1}, Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;->access$2(Lcom/sonymobile/cameracommon/spflib/SpfEditor$ShutterSoundStatus;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/spflib/SpfEditor$SoundMetaData;->mShutterSoundStatus:I

    .line 277
    return-void
.end method
