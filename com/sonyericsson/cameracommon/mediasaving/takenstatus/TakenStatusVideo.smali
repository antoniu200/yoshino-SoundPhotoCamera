.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;
.super Ljava/lang/Object;
.source "TakenStatusVideo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TakenStatusVideo"


# instance fields
.field protected mDuration:J

.field public final maxDurationMills:J

.field public final maxFileSizeBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 8
    .param p1, "maxDurationMills_in"    # J
    .param p3, "maxFileSizeBytes_in"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 37
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    .line 38
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V
    .registers 4
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 47
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->mDuration:J

    .line 48
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    .line 49
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    .line 50
    return-void
.end method


# virtual methods
.method public log()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method
