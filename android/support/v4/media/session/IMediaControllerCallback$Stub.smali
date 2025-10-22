.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onShuffleModeChanged:I = 0xc

.field static final TRANSACTION_onShuffleModeChangedDeprecated:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_104

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 47
    :sswitch_a
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 52
    :sswitch_10
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 57
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_27
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    .line 60
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_27

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2d
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    goto :goto_9

    .line 73
    :sswitch_36
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 76
    sget-object v4, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 81
    .local v0, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_49
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_9

    .line 79
    .end local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_4d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_49

    .line 86
    .end local v0    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_4f
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    .line 89
    sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 94
    .local v0, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :goto_62
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :cond_66
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_62

    .line 99
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_68
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    sget-object v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    goto :goto_9

    .line 107
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_77
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    .line 110
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 115
    .local v0, "_arg0":Ljava/lang/CharSequence;
    :goto_8a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 113
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :cond_8f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_8a

    .line 120
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_91
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a9

    .line 123
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 128
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_a4
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_a9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a4

    .line 133
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_ab
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    .line 136
    sget-object v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 141
    .local v0, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_be
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_c3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_be

    .line 146
    .end local v0    # "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_c5
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    goto/16 :goto_9

    .line 154
    .end local v0    # "_arg0":I
    :sswitch_d3
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_df

    move v0, v3

    .line 157
    .local v0, "_arg0":Z
    :cond_df
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChangedDeprecated(Z)V

    goto/16 :goto_9

    .line 162
    .end local v0    # "_arg0":Z
    :sswitch_e4
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f0

    move v0, v3

    .line 165
    .restart local v0    # "_arg0":Z
    :cond_f0
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    goto/16 :goto_9

    .line 170
    .end local v0    # "_arg0":Z
    :sswitch_f5
    const-string v4, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(I)V

    goto/16 :goto_9

    .line 43
    nop

    :sswitch_data_104
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_68
        0x6 -> :sswitch_77
        0x7 -> :sswitch_91
        0x8 -> :sswitch_ab
        0x9 -> :sswitch_c5
        0xa -> :sswitch_d3
        0xb -> :sswitch_e4
        0xc -> :sswitch_f5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
