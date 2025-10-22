.class public Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoConstants;
.super Ljava/lang/Object;
.source "SoundPhotoConstants.java"


# static fields
.field public static final ANIMATION_FRAMES:I = 0x1e

.field public static final ANIMATION_FRAME_QUALITY:I = 0x50

.field public static final CAPTURE_SOUND_DURATION_IN_SECOND:I = 0xa

.field public static final ENCODED_AUDIO_BITRATE:I = 0x3e800

.field public static final ENCODED_AUDIO_MIMETYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final POST_CAPTURE_SOUND_DURATION_IN_SECOND:I = 0x2

.field public static final PRE_CAPTURE_SOUND_DURATION_IN_SECOND:I = 0x8

.field public static final SOUND_BIT_PER_SECONDS:I

.field public static final SOUND_CHANNELS:I = 0x2

.field public static final SOUND_FORMAT:I = 0x2

.field public static final SOUND_SAMPLE_RATE:I = 0xbb80


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoConstants;->bitPerSecondsWithAudioFormat(I)I

    move-result v0

    sput v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoConstants;->SOUND_BIT_PER_SECONDS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitPerSecondsWithAudioFormat(I)I
    .registers 4
    .param p0, "format"    # I

    .prologue
    .line 35
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 36
    const/16 v0, 0x10

    .line 38
    :goto_5
    return v0

    .line 37
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 38
    const/16 v0, 0x8

    goto :goto_5

    .line 40
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified format is not supported. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
