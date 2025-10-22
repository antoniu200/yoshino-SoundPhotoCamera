.class public Landroid/support/v4/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompat$AttributeContentType;,
        Landroid/support/v4/media/AudioAttributesCompat$AttributeUsage;,
        Landroid/support/v4/media/AudioAttributesCompat$AudioManagerHidden;,
        Landroid/support/v4/media/AudioAttributesCompat$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field private static final FLAG_ALL:I = 0x3ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field private static final FLAG_BEACON:I = 0x8

.field private static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field private static final FLAG_BYPASS_MUTE:I = 0x80

.field private static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field private static final FLAG_HW_HOTWORD:I = 0x20

.field private static final FLAG_LOW_LATENCY:I = 0x100

.field private static final FLAG_SCO:I = 0x4

.field private static final FLAG_SECURE:I = 0x2

.field private static final SDK_USAGES:[I

.field private static final SUPPRESSIBLE_CALL:I = 0x2

.field private static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field private static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field private static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field private static sForceLegacyBehavior:Z


# instance fields
.field private mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

.field mContentType:I

.field mFlags:I

.field mLegacyStream:Ljava/lang/Integer;

.field mUsage:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 169
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Landroid/support/v4/media/AudioAttributesCompat;->SDK_USAGES:[I

    return-void

    :array_3a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    .line 231
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 232
    iput v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/AudioAttributesCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/v4/media/AudioAttributesCompat$1;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 64
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v4/media/AudioAttributesCompat;Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/media/AudioAttributesCompat;
    .param p1, "x1"    # Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    return-object p1
.end method

.method static synthetic access$300(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 64
    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompat;->usageForStreamType(I)I

    move-result v0

    return v0
.end method

.method public static setForceLegacyBehavior(Z)V
    .registers 1
    .param p0, "force"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 695
    sput-boolean p0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    .line 696
    return-void
.end method

.method static toVolumeStreamType(ZII)I
    .registers 8
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "flags"    # I
    .param p2, "usage"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v0, :cond_d

    .line 706
    if-eqz p0, :cond_b

    .line 752
    :goto_a
    :pswitch_a
    return v0

    .line 706
    :cond_b
    const/4 v0, 0x7

    goto :goto_a

    .line 710
    :cond_d
    and-int/lit8 v4, p1, 0x4

    if-ne v4, v3, :cond_17

    .line 711
    if-eqz p0, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    const/4 v0, 0x6

    goto :goto_a

    .line 717
    :cond_17
    packed-switch p2, :pswitch_data_58

    .line 748
    :pswitch_1a
    if-eqz p0, :cond_56

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    move v0, v2

    .line 722
    goto :goto_a

    :pswitch_3d
    move v0, v1

    .line 726
    goto :goto_a

    .line 728
    :pswitch_3f
    if-eqz p0, :cond_43

    :goto_41
    move v0, v1

    goto :goto_a

    :cond_43
    const/16 v1, 0x8

    goto :goto_41

    :pswitch_46
    move v0, v3

    .line 732
    goto :goto_a

    .line 734
    :pswitch_48
    const/4 v0, 0x2

    goto :goto_a

    .line 740
    :pswitch_4a
    const/4 v0, 0x5

    goto :goto_a

    .line 742
    :pswitch_4c
    const/16 v0, 0xa

    goto :goto_a

    .line 744
    :pswitch_4f
    if-eqz p0, :cond_54

    const/high16 v0, -0x80000000

    goto :goto_a

    :cond_54
    move v0, v2

    goto :goto_a

    :cond_56
    move v0, v2

    .line 752
    goto :goto_a

    .line 717
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_3b
        :pswitch_3d
        :pswitch_3f
        :pswitch_46
        :pswitch_4a
        :pswitch_48
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4c
        :pswitch_3b
        :pswitch_a
        :pswitch_3b
        :pswitch_1a
        :pswitch_3b
    .end packed-switch
.end method

.method static toVolumeStreamType(ZLandroid/support/v4/media/AudioAttributesCompat;)I
    .registers 4
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/support/v4/media/AudioAttributesCompat;

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method private static usageForStreamType(I)I
    .registers 2
    .param p0, "streamType"    # I

    .prologue
    const/4 v0, 0x2

    .line 662
    packed-switch p0, :pswitch_data_16

    .line 684
    :pswitch_4
    const/4 v0, 0x0

    :goto_5
    :pswitch_5
    return v0

    .line 667
    :pswitch_6
    const/16 v0, 0xd

    goto :goto_5

    .line 669
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_5

    .line 671
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_5

    .line 673
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_5

    .line 675
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_5

    .line 679
    :pswitch_11
    const/4 v0, 0x3

    goto :goto_5

    .line 681
    :pswitch_13
    const/16 v0, 0xb

    goto :goto_5

    .line 662
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_5
        :pswitch_6
        :pswitch_11
        :pswitch_4
        :pswitch_13
    .end packed-switch
.end method

.method static usageToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "usage"    # I

    .prologue
    .line 616
    packed-switch p0, :pswitch_data_9c

    .line 650
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b
    return-object v0

    .line 618
    :pswitch_1c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 620
    :pswitch_24
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 622
    :pswitch_2c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 624
    :pswitch_34
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 626
    :pswitch_3c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 628
    :pswitch_44
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 630
    :pswitch_4c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 632
    :pswitch_54
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 634
    :pswitch_5c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 636
    :pswitch_64
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 638
    :pswitch_6c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 640
    :pswitch_74
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 642
    :pswitch_7c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 644
    :pswitch_84
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 646
    :pswitch_8c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 648
    :pswitch_94
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 616
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_54
        :pswitch_5c
        :pswitch_64
        :pswitch_6c
        :pswitch_74
        :pswitch_7c
        :pswitch_84
        :pswitch_8c
        :pswitch_3
        :pswitch_94
    .end packed-switch
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v4/media/AudioAttributesCompat;
    .registers 4
    .param p0, "aa"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_18

    sget-boolean v1, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v1, :cond_18

    .line 316
    new-instance v0, Landroid/support/v4/media/AudioAttributesCompat;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesCompat;-><init>()V

    .line 317
    .local v0, "aac":Landroid/support/v4/media/AudioAttributesCompat;
    check-cast p0, Landroid/media/AudioAttributes;

    .line 318
    .end local p0    # "aa":Ljava/lang/Object;
    invoke-static {p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->wrap(Landroid/media/AudioAttributes;)Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    .line 321
    .end local v0    # "aac":Landroid/support/v4/media/AudioAttributesCompat;
    :goto_17
    return-object v0

    .restart local p0    # "aa":Ljava/lang/Object;
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 759
    if-ne p0, p1, :cond_5

    .line 773
    :cond_4
    :goto_4
    return v1

    .line 760
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 762
    check-cast v0, Landroid/support/v4/media/AudioAttributesCompat;

    .line 764
    .local v0, "that":Landroid/support/v4/media/AudioAttributesCompat;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_33

    sget-boolean v3, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v3, :cond_33

    iget-object v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v3, :cond_33

    .line 767
    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v1}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 770
    :cond_33
    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v4

    if-ne v3, v4, :cond_59

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 771
    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getFlags()I

    move-result v4

    if-ne v3, v4, :cond_59

    iget v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    .line 772
    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v4

    if-ne v3, v4, :cond_59

    iget-object v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    iget-object v4, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    .line 773
    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_59
    move v1, v2

    goto :goto_4

    :cond_5b
    iget-object v3, v0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-nez v3, :cond_59

    goto :goto_4
.end method

.method public getContentType()I
    .registers 3

    .prologue
    .line 332
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_19

    .line 335
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    .line 337
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    goto :goto_18
.end method

.method public getFlags()I
    .registers 5

    .prologue
    .line 362
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_19

    sget-boolean v2, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v2, :cond_19

    .line 365
    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v2}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    .line 374
    :goto_18
    return v2

    .line 367
    :cond_19
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 368
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v1

    .line 369
    .local v1, "legacyStream":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_27

    .line 370
    or-int/lit8 v0, v0, 0x4

    .line 374
    :cond_24
    :goto_24
    and-int/lit16 v2, v0, 0x111

    goto :goto_18

    .line 371
    :cond_27
    const/4 v2, 0x7

    if-ne v1, v2, :cond_24

    .line 372
    or-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public getLegacyStreamType()I
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 290
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    :goto_a
    return v0

    .line 296
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 297
    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_1c

    .line 298
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21;->toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I

    move-result v0

    goto :goto_a

    .line 304
    :cond_1c
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    goto :goto_a
.end method

.method public getUsage()I
    .registers 3

    .prologue
    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_19

    .line 350
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    .line 352
    :goto_18
    return v0

    :cond_19
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    goto :goto_18
.end method

.method public getVolumeControlStream()I
    .registers 3

    .prologue
    .line 253
    if-nez p0, :cond_a

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null audio attributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_25

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    .line 261
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZLandroid/support/v4/media/AudioAttributesCompat;)I

    move-result v0

    goto :goto_24
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    sget-boolean v0, Landroid/support/v4/media/AudioAttributesCompat;->sForceLegacyBehavior:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_19

    .line 585
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->hashCode()I

    move-result v0

    .line 588
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 595
    const-string v1, " audioattributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 597
    :cond_1f
    iget-object v1, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    if-eqz v1, :cond_33

    .line 598
    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mLegacyStream:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_33
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    .line 603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mContentType:I

    .line 604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/AudioAttributesCompat;->mFlags:I

    .line 606
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mAudioAttributesWrapper:Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 277
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method usageToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget v0, p0, Landroid/support/v4/media/AudioAttributesCompat;->mUsage:I

    invoke-static {v0}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
