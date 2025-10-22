.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;
.super Landroid/widget/FrameLayout;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;
    }
.end annotation


# static fields
.field private static final OFFSET_IN_BYTES:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioDataArray:[B

.field private mAudioFormat:I

.field private mAudioPlayIcon:Landroid/view/View;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

.field private mBitPerSampleForCalculation:I

.field private mChannelConfig:I

.field private mChannels:I

.field private mEnabled:Z

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mMinBufferSizeInBytes:I

.field private mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

.field private mPictureImage:Landroid/view/View;

.field private mPlayThread:Ljava/lang/Thread;

.field private mProgressBar:Landroid/view/View;

.field private mSampleRate:I

.field private mSizeInBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mEnabled:Z

    .line 52
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    .line 54
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    .line 55
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    .line 56
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    .line 57
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mProgressBar:Landroid/view/View;

    .line 58
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 60
    const v0, 0xbb80

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSampleRate:I

    .line 61
    const/16 v0, 0xc

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannelConfig:I

    .line 62
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannels:I

    .line 63
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioFormat:I

    .line 64
    iput v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mBitPerSampleForCalculation:I

    .line 65
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mMinBufferSizeInBytes:I

    .line 66
    iput v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSizeInBytes:I

    .line 68
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioDataArray:[B

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Landroid/media/AudioTrack;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)[B
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioDataArray:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSizeInBytes:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    return-object v0
.end method

.method private play()V
    .registers 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    :cond_6
    :goto_6
    return-void

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    .line 271
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 274
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 276
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_1a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->showRightIcons(Ljava/lang/Boolean;)V

    goto :goto_6
.end method

.method private setup()V
    .registers 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$1;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    .line 251
    return-void
.end method

.method private setupAudioData([BIIII)V
    .registers 12
    .param p1, "audioData"    # [B
    .param p2, "dataSize"    # I
    .param p3, "sampleRate"    # I
    .param p4, "channels"    # I
    .param p5, "bitPerSample"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 190
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioDataArray:[B

    .line 191
    iput p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSizeInBytes:I

    .line 192
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSampleRate:I

    .line 194
    if-ne p4, v4, :cond_84

    .line 195
    const/4 v1, 0x4

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannelConfig:I

    .line 200
    :goto_d
    const/16 v1, 0x8

    if-ne p5, v1, :cond_89

    .line 201
    const/4 v1, 0x3

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioFormat:I

    .line 202
    iput v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mBitPerSampleForCalculation:I

    .line 208
    :goto_16
    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSampleRate:I

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannelConfig:I

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioFormat:I

    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mMinBufferSizeInBytes:I

    .line 211
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 213
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioFormat:I

    .line 217
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSampleRate:I

    .line 218
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannelConfig:I

    .line 219
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mMinBufferSizeInBytes:I

    .line 221
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 225
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mSizeInBytes:I

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannels:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mBitPerSampleForCalculation:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    move-result v0

    .line 227
    .local v0, "r":I
    if-eqz v0, :cond_7e

    .line 228
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v2, "setNotificationMarkerPosition:failed"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7e
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 232
    return-void

    .line 197
    .end local v0    # "r":I
    :cond_84
    const/16 v1, 0xc

    iput v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mChannelConfig:I

    goto :goto_d

    .line 204
    :cond_89
    iput v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioFormat:I

    .line 205
    iput v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mBitPerSampleForCalculation:I

    goto :goto_16
.end method

.method private stop()V
    .registers 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    :cond_6
    :goto_6
    return-void

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_10

    .line 295
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 297
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    .line 299
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setup()V

    .line 302
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 303
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 309
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->showRightIcons(Ljava/lang/Boolean;)V

    .line 312
    :cond_36
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$2;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method private translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    if-eqz v1, :cond_b

    .line 374
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 378
    :cond_b
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_c

    .line 436
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 437
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    .line 441
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 442
    :cond_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    :cond_27
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPlayThread:Ljava/lang/Thread;

    .line 448
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 449
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->enableAudioPlayer(Z)V

    .line 453
    return-void
.end method

.method public enableAudioPlayer(Z)V
    .registers 4
    .param p1, "bool"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mEnabled:Z

    .line 124
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mEnabled:Z

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_c
    return-void

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method

.method public isAudioPlayerEnabled()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mEnabled:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-ne p1, v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->play()V

    .line 334
    :cond_d
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 113
    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    .line 114
    const v0, 0x7f0e0081

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mProgressBar:Landroid/view/View;

    .line 118
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 385
    invoke-direct {p0, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 386
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    if-nez v0, :cond_9

    .line 416
    :cond_8
    :goto_8
    return v1

    .line 390
    :cond_9
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$3;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3a

    goto :goto_8

    .line 392
    :pswitch_15
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 393
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_24

    .line 394
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->stop()V

    :cond_24
    move v1, v2

    .line 396
    goto :goto_8

    :pswitch_26
    move v1, v2

    .line 403
    goto :goto_8

    .line 405
    :pswitch_28
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 406
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 407
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->stop()V

    move v1, v2

    .line 408
    goto :goto_8

    .line 390
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_26
        :pswitch_28
    .end packed-switch
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .registers 2
    .param p1, "at"    # Landroid/media/AudioTrack;

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->stop()V

    .line 358
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .registers 2
    .param p1, "at"    # Landroid/media/AudioTrack;

    .prologue
    .line 364
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    if-ne p1, v0, :cond_d

    .line 344
    :cond_8
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->stop()V

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setAudioData(Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;Ljava/nio/ByteBuffer;Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;)V
    .registers 10
    .param p1, "sender"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;
    .param p2, "audioData"    # Ljava/nio/ByteBuffer;
    .param p3, "onPlayFinishedListener"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    .prologue
    .line 175
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/ByteBufferUtil;->array(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 176
    .local v1, "dataArray":[B
    array-length v2, v1

    .line 179
    .local v2, "arraySize":I
    iget v3, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->sampleRate:I

    iget v4, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->channels:I

    iget v5, p1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/AudioData;->bitPerSample:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setupAudioData([BIIII)V

    .line 182
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mOnPlayFinishedListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer$OnPlayFinishedListener;

    .line 183
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->setup()V

    .line 184
    return-void
.end method

.method public setKeyEventTranslator(Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V
    .registers 2
    .param p1, "keyEventTranslator"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 368
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 424
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 426
    :cond_d
    return-void
.end method

.method public setupViews()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 140
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAudioPlayIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_f
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v0, :cond_34

    .line 149
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mAutoReviewBase:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 154
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mPictureImage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    :cond_34
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/AudioPlayer;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    return-void
.end method
