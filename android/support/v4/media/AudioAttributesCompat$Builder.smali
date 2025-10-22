.class public Landroid/support/v4/media/AudioAttributesCompat$Builder;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioAttributesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAAObject:Ljava/lang/Object;

.field private mContentType:I

.field private mFlags:I

.field private mLegacyStream:Ljava/lang/Integer;

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 398
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 399
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 412
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/AudioAttributesCompat;)V
    .registers 3
    .param p1, "aa"    # Landroid/support/v4/media/AudioAttributesCompat;

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 398
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 399
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 420
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 421
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 422
    iget v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 423
    iget-object v0, p1, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    .line 424
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    .line 425
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/AudioAttributesCompat;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 434
    # getter for: Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z
    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v2

    if-nez v2, :cond_45

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_45

    .line 436
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    if-eqz v2, :cond_18

    .line 438
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mAAObject:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    .line 460
    :goto_17
    return-object v0

    .line 441
    :cond_18
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    .line 443
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 444
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 445
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 446
    .local v1, "api21Builder":Landroid/media/AudioAttributes$Builder;
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v2, :cond_3c

    .line 448
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 450
    :cond_3c
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/AudioAttributesCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    goto :goto_17

    .line 454
    .end local v1    # "api21Builder":Landroid/media/AudioAttributes$Builder;
    :cond_45
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0, v4}, Landroid/support/v4/media/AudioAttributesCompat;-><init>(Landroid/support/v4/media/AudioAttributesCompat$1;)V

    .line 455
    .local v0, "aac":Landroid/support/v4/media/AudioAttributesCompat;
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 456
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 457
    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    iput v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    .line 458
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    iput-object v2, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    .line 459
    # setter for: Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    invoke-static {v0, v4}, Landroid/support/v4/media/AudioAttributesCompat;->access$202(Landroid/support/v4/media/AudioAttributesCompat;Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    goto :goto_17
.end method

.method public setContentType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 3
    .param p1, "contentType"    # I

    .prologue
    .line 532
    packed-switch p1, :pswitch_data_a

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 543
    :goto_6
    return-object p0

    .line 538
    :pswitch_7
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mContentType:I

    goto :goto_6

    .line 532
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public setFlags(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 556
    and-int/lit16 p1, p1, 0x3ff

    .line 557
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mFlags:I

    .line 558
    return-object p0
.end method

.method public setLegacyStreamType(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 4
    .param p1, "streamType"    # I

    .prologue
    .line 569
    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mLegacyStream:Ljava/lang/Integer;

    .line 575
    # invokes: Landroid/support/v4/media/AudioAttributesCompat;->usageForStreamType(I)I
    invoke-static {p1}, Landroid/support/v4/media/AudioAttributesCompat;->access$300(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 576
    return-object p0
.end method

.method public setUsage(I)Landroid/support/v4/media/AudioAttributesCompat$Builder;
    .registers 4
    .param p1, "usage"    # I

    .prologue
    .line 487
    packed-switch p1, :pswitch_data_1e

    .line 514
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    .line 516
    :goto_6
    return-object p0

    .line 504
    :pswitch_7
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_6

    .line 507
    :pswitch_a
    # getter for: Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z
    invoke-static {}, Landroid/support/v4/media/AudioAttributesCompat;->access$000()Z

    move-result v0

    if-nez v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_19

    .line 508
    iput p1, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_6

    .line 510
    :cond_19
    const/16 v0, 0xc

    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat$Builder;->mUsage:I

    goto :goto_6

    .line 487
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
