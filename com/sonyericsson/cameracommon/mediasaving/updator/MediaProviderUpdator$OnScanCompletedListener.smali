.class Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;
.super Ljava/lang/Object;
.source "MediaProviderUpdator.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScanCompletedListener"
.end annotation


# instance fields
.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mScanResult:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 136
    return-void
.end method


# virtual methods
.method public getScanResult()Landroid/net/Uri;
    .registers 6

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 159
    const-string v1, "MediaProviderUpdator"

    const-string v2, "getScanResult is timeout."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_16

    .line 165
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->mScanResult:Landroid/net/Uri;

    return-object v1

    .line 161
    :catch_16
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MediaProviderUpdator"

    const-string v2, "scan file failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 144
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->mScanResult:Landroid/net/Uri;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator$OnScanCompletedListener;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    return-void
.end method
