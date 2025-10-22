.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;

.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 3
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1378
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 10
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .prologue
    .line 1463
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v2

    .line 1464
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_20

    .line 1465
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 1469
    .end local v2    # "flags":J
    :catch_17
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in addQueueItem."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1472
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 1468
    .restart local v2    # "flags":J
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17

    goto :goto_1f
.end method

.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .registers 11
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;
    .param p2, "index"    # I

    .prologue
    .line 1477
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v2

    .line 1478
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_20

    .line 1479
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 1483
    .end local v2    # "flags":J
    :catch_17
    move-exception v0

    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in addQueueItemAt."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 1482
    .restart local v2    # "flags":J
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17

    goto :goto_1f
.end method

.method public adjustVolume(II)V
    .registers 6
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1617
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1621
    :goto_6
    return-void

    .line 1618
    :catch_7
    move-exception v0

    .line 1619
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1410
    if-nez p1, :cond_a

    .line 1411
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1414
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 1418
    :goto_f
    const/4 v1, 0x0

    return v1

    .line 1415
    :catch_11
    move-exception v0

    .line 1416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in dispatchMediaButtonEvent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 1515
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1519
    :goto_6
    return-object v1

    .line 1516
    :catch_7
    move-exception v0

    .line 1517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getExtras."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1519
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getFlags()J
    .registers 5

    .prologue
    .line 1575
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 1579
    :goto_6
    return-wide v2

    .line 1576
    :catch_7
    move-exception v0

    .line 1577
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    const-wide/16 v2, 0x0

    goto :goto_6
.end method

.method public getMediaController()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1645
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .registers 4

    .prologue
    .line 1443
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1447
    :goto_6
    return-object v1

    .line 1444
    :catch_7
    move-exception v0

    .line 1445
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1636
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1640
    :goto_6
    return-object v1

    .line 1637
    :catch_7
    move-exception v0

    .line 1638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPackageName."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .registers 9

    .prologue
    .line 1585
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v7

    .line 1586
    .local v7, "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    iget v1, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v2, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v3, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v4, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v5, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 1592
    .end local v7    # "info":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_15
    return-object v0

    .line 1589
    :catch_16
    move-exception v6

    .line 1590
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackInfo."

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 4

    .prologue
    .line 1433
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1437
    :goto_6
    return-object v1

    .line 1434
    :catch_7
    move-exception v0

    .line 1435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getQueue()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1453
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1457
    :goto_6
    return-object v1

    .line 1454
    :catch_7
    move-exception v0

    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueue."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 1505
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1509
    :goto_6
    return-object v1

    .line 1506
    :catch_7
    move-exception v0

    .line 1507
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueueTitle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRatingType()I
    .registers 4

    .prologue
    .line 1525
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1529
    :goto_6
    return v1

    .line 1526
    :catch_7
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1529
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRepeatMode()I
    .registers 4

    .prologue
    .line 1545
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRepeatMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1549
    :goto_6
    return v1

    .line 1546
    :catch_7
    move-exception v0

    .line 1547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1549
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    .line 1598
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1602
    :goto_6
    return-object v1

    .line 1599
    :catch_7
    move-exception v0

    .line 1600
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getSessionActivity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getShuffleMode()I
    .registers 4

    .prologue
    .line 1565
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getShuffleMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1569
    :goto_6
    return v1

    .line 1566
    :catch_7
    move-exception v0

    .line 1567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getShuffleMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 3

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    if-nez v0, :cond_d

    .line 1424
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 1427
    :cond_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    return-object v0
.end method

.method public isCaptioningEnabled()Z
    .registers 4

    .prologue
    .line 1535
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->isCaptioningEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1539
    :goto_6
    return v1

    .line 1536
    :catch_7
    move-exception v0

    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isCaptioningEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isShuffleModeEnabled()Z
    .registers 4

    .prologue
    .line 1555
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->isShuffleModeEnabledDeprecated()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1559
    :goto_6
    return v1

    .line 1556
    :catch_7
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1382
    if-nez p1, :cond_a

    .line 1383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1386
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1387
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_20

    .line 1392
    :goto_1f
    return-void

    .line 1388
    :catch_20
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_1f
.end method

.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 10
    .param p1, "description"    # Landroid/support/v4/media/MediaDescriptionCompat;

    .prologue
    .line 1491
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v2

    .line 1492
    .local v2, "flags":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_20

    .line 1493
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 1497
    .end local v2    # "flags":J
    :catch_17
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v4, "Dead object in removeQueueItem."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void

    .line 1496
    .restart local v2    # "flags":J
    :cond_20
    :try_start_20
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17

    goto :goto_1f
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1626
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1631
    :goto_a
    return-void

    .line 1628
    :catch_b
    move-exception v0

    .line 1629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public setVolumeTo(II)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1608
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1612
    :goto_6
    return-void

    .line 1609
    :catch_7
    move-exception v0

    .line 1610
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .prologue
    .line 1396
    if-nez p1, :cond_a

    .line 1397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1401
    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$000(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1400
    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 1402
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_20

    .line 1406
    :goto_1f
    return-void

    .line 1403
    :catch_20
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in unregisterCallback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
