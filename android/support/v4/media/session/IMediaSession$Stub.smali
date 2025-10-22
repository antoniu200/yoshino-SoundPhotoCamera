.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_addQueueItem:I = 0x29

.field static final TRANSACTION_addQueueItemAt:I = 0x2a

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getRepeatMode:I = 0x25

.field static final TRANSACTION_getShuffleMode:I = 0x2f

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isCaptioningEnabled:I = 0x2d

.field static final TRANSACTION_isShuffleModeEnabledDeprecated:I = 0x26

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x21

.field static final TRANSACTION_prepareFromMediaId:I = 0x22

.field static final TRANSACTION_prepareFromSearch:I = 0x23

.field static final TRANSACTION_prepareFromUri:I = 0x24

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_rateWithExtras:I = 0x33

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_removeQueueItem:I = 0x2b

.field static final TRANSACTION_removeQueueItemAt:I = 0x2c

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setCaptioningEnabled:I = 0x2e

.field static final TRANSACTION_setRepeatMode:I = 0x27

.field static final TRANSACTION_setShuffleMode:I = 0x30

.field static final TRANSACTION_setShuffleModeEnabledDeprecated:I = 0x28

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/support/v4/media/session/IMediaSession;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_4a0

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 46
    :sswitch_a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    .line 56
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 63
    sget-object v7, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 68
    .local v3, "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :goto_35
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :cond_3c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_27

    .line 66
    :cond_3e
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    goto :goto_35

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :sswitch_40
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_61

    .line 77
    sget-object v9, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 82
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 83
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_5d

    move v7, v8

    :cond_5d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_53

    .line 89
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_63
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_77
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 107
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_8c
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result v4

    .line 109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_9b

    move v7, v8

    :cond_9b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v4    # "_result":Z
    :sswitch_a0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b1
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c2
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_d8

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v4, p3, v8}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    :cond_d8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :sswitch_dd
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    move-result-wide v4

    .line 147
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 153
    .end local v4    # "_result":J
    :sswitch_ee
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 155
    .local v4, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_104

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 161
    :cond_104
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v4    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_109
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 180
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_122
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_13b
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    .line 195
    .local v4, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_151

    .line 197
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 201
    :cond_151
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 207
    .end local v4    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_156
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    .line 209
    .local v4, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_16c

    .line 211
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 215
    :cond_16c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 221
    .end local v4    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_171
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object v6

    .line 223
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 229
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_182
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 231
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v4, :cond_198

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-static {v4, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 237
    :cond_198
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 243
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :sswitch_19d
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 245
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v4, :cond_1b3

    .line 247
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 251
    :cond_1b3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1b8
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    move-result v4

    .line 259
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 265
    .end local v4    # "_result":I
    :sswitch_1c9
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isCaptioningEnabled()Z

    move-result v4

    .line 267
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v4, :cond_1d8

    move v7, v8

    :cond_1d8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 273
    .end local v4    # "_result":Z
    :sswitch_1dd
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRepeatMode()I

    move-result v4

    .line 275
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 281
    .end local v4    # "_result":I
    :sswitch_1ee
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isShuffleModeEnabledDeprecated()Z

    move-result v4

    .line 283
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v4, :cond_1fd

    move v7, v8

    :cond_1fd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 289
    .end local v4    # "_result":Z
    :sswitch_202
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getShuffleMode()I

    move-result v4

    .line 291
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 297
    .end local v4    # "_result":I
    :sswitch_213
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22e

    .line 300
    sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 305
    .local v0, "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_226
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 303
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :cond_22e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_226

    .line 311
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :sswitch_230
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24f

    .line 314
    sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 320
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    .end local v2    # "_arg1":I
    :cond_24f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_243

    .line 327
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :sswitch_251
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_26c

    .line 330
    sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 335
    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :goto_264
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 333
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :cond_26c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    goto :goto_264

    .line 341
    .end local v0    # "_arg0":Landroid/support/v4/media/MediaDescriptionCompat;
    :sswitch_26e
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 344
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItemAt(I)V

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 350
    .end local v0    # "_arg0":I
    :sswitch_27f
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepare()V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 357
    :sswitch_28c
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2ab

    .line 362
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 367
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_2a3
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 365
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2ab
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2a3

    .line 373
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2ad
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2cc

    .line 378
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 383
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_2c4
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 381
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2cc
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2c4

    .line 389
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2ce
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f7

    .line 392
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 398
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_2e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f9

    .line 399
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 404
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_2ef
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 395
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_2f7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_2e1

    .line 402
    :cond_2f9
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2ef

    .line 410
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_2fb
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 417
    :sswitch_308
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_327

    .line 422
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 427
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_31f
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 425
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_327
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_31f

    .line 433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_329
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_348

    .line 438
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 443
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_340
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 441
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_348
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_340

    .line 449
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_34a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_373

    .line 452
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 458
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_35d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_375

    .line 459
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 464
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_36b
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 455
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_373
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_35d

    .line 462
    :cond_375
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_36b

    .line 470
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_377
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 473
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 479
    .end local v0    # "_arg0":J
    :sswitch_388
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V

    .line 481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 486
    :sswitch_395
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 493
    :sswitch_3a2
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 500
    :sswitch_3af
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 507
    :sswitch_3bc
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 514
    :sswitch_3c9
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 521
    :sswitch_3d6
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 524
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 530
    .end local v0    # "_arg0":J
    :sswitch_3e7
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_402

    .line 533
    sget-object v7, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .line 538
    .local v0, "_arg0":Landroid/support/v4/media/RatingCompat;
    :goto_3fa
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 536
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :cond_402
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_3fa

    .line 544
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :sswitch_404
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_42d

    .line 547
    sget-object v7, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .line 553
    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :goto_417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_42f

    .line 554
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 559
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_425
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->rateWithExtras(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 550
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_42d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_417

    .line 557
    :cond_42f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_425

    .line 565
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_431
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_445

    move v0, v8

    .line 568
    .local v0, "_arg0":Z
    :goto_43d
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setCaptioningEnabled(Z)V

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_445
    move v0, v7

    .line 567
    goto :goto_43d

    .line 574
    :sswitch_447
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setRepeatMode(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 583
    .end local v0    # "_arg0":I
    :sswitch_458
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_46c

    move v0, v8

    .line 586
    .local v0, "_arg0":Z
    :goto_464
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleModeEnabledDeprecated(Z)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_46c
    move v0, v7

    .line 585
    goto :goto_464

    .line 592
    :sswitch_46e
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleMode(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 601
    .end local v0    # "_arg0":I
    :sswitch_47f
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_49e

    .line 606
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 611
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_496
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 609
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_49e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_496

    .line 42
    :sswitch_data_4a0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_40
        0x3 -> :sswitch_63
        0x4 -> :sswitch_77
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_dd
        0xa -> :sswitch_ee
        0xb -> :sswitch_109
        0xc -> :sswitch_122
        0xd -> :sswitch_2fb
        0xe -> :sswitch_308
        0xf -> :sswitch_329
        0x10 -> :sswitch_34a
        0x11 -> :sswitch_377
        0x12 -> :sswitch_388
        0x13 -> :sswitch_395
        0x14 -> :sswitch_3a2
        0x15 -> :sswitch_3af
        0x16 -> :sswitch_3bc
        0x17 -> :sswitch_3c9
        0x18 -> :sswitch_3d6
        0x19 -> :sswitch_3e7
        0x1a -> :sswitch_47f
        0x1b -> :sswitch_13b
        0x1c -> :sswitch_156
        0x1d -> :sswitch_171
        0x1e -> :sswitch_182
        0x1f -> :sswitch_19d
        0x20 -> :sswitch_1b8
        0x21 -> :sswitch_27f
        0x22 -> :sswitch_28c
        0x23 -> :sswitch_2ad
        0x24 -> :sswitch_2ce
        0x25 -> :sswitch_1dd
        0x26 -> :sswitch_1ee
        0x27 -> :sswitch_447
        0x28 -> :sswitch_458
        0x29 -> :sswitch_213
        0x2a -> :sswitch_230
        0x2b -> :sswitch_251
        0x2c -> :sswitch_26e
        0x2d -> :sswitch_1c9
        0x2e -> :sswitch_431
        0x2f -> :sswitch_202
        0x30 -> :sswitch_46e
        0x33 -> :sswitch_404
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
