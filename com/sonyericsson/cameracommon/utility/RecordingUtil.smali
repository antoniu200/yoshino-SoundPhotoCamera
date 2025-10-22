.class public Lcom/sonyericsson/cameracommon/utility/RecordingUtil;
.super Ljava/lang/Object;
.source "RecordingUtil.java"


# static fields
.field public static final ERROR_CORRUPTED_SD_PHOTO:I = -0x3e6

.field public static final ERROR_CORRUPTED_SD_VIDEO:I = -0x3e7

.field public static final ERROR_SIZE_LIMIT:I = -0x1

.field private static final FIELD_DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "DISALLOW_RECORD_AUDIO"

.field public static final SDCARD_RAW_PATH:Ljava/lang/String; = "/mnt/media_rw/sdcard1"

.field public static final TAG:Ljava/lang/String; = "RecordingUtil"

.field public static final UPDATE_REMAIN_INTERVAL:I = 0xa

.field public static final VIDEO_PROGRESS_BAR_UPDATE_INTERVAL:I = 0x64

.field public static final VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationMillsFromAverage(JJ)J
    .registers 12
    .param p0, "availableSizeKbyte"    # J
    .param p2, "averageSizeKBytePerMin"    # J

    .prologue
    .line 126
    long-to-double v4, p0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    long-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 129
    .local v2, "durationSec":J
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 130
    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 140
    .local v0, "durationMills":J
    return-wide v0
.end method

.method public static getMaxDurationMillisecond(JLcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .registers 21
    .param p0, "averageSizeKBytePerMin"    # J
    .param p2, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 84
    .line 85
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v8, v14, v16

    .line 88
    .local v8, "recordableStorageSizeByte":J
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v14

    .line 87
    move-wide/from16 v0, p0

    invoke-static {v14, v15, v0, v1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getDurationMillsFromAverage(JJ)J

    move-result-wide v4

    .line 92
    .local v4, "maxDurationMills":J
    move-wide v10, v4

    .line 95
    .local v10, "retDurationMills":J
    const-wide/16 v14, 0x3e8

    div-long v6, v10, v14

    .line 96
    .local v6, "maxDurationSec":J
    const-wide/16 v14, 0x400

    mul-long v14, v14, p0

    const-wide/16 v16, 0x3c

    div-long v12, v14, v16

    .line 97
    .local v12, "sizeBytePerSec":J
    mul-long v2, v6, v12

    .line 98
    .local v2, "fileSizeByteFromDuration":J
    cmp-long v14, v8, v2

    if-gez v14, :cond_2a

    .line 100
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v8

    div-long v10, v14, v12

    .line 109
    :cond_2a
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v14, v10

    if-gez v14, :cond_34

    .line 110
    const-wide/32 v10, 0x7fffffff

    .line 113
    :cond_34
    return-wide v10
.end method

.method public static getMaxRecordingDuration(Landroid/media/CamcorderProfile;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .registers 14
    .param p0, "profile"    # Landroid/media/CamcorderProfile;
    .param p1, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    const-wide/16 v10, 0x400

    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x8

    .line 175
    iget v4, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    div-long/2addr v4, v10

    div-long v2, v4, v6

    .line 176
    .local v2, "videoBitRateKBytesPerMin":J
    iget v4, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    div-long/2addr v4, v10

    div-long v0, v4, v6

    .line 179
    .local v0, "audioBitRateKBytesPerMin":J
    add-long v4, v2, v0

    invoke-static {v4, v5, p1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getMaxDurationMillisecond(JLcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getOutputFile(Ljava/lang/String;Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;)Ljava/lang/String;
    .registers 8
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .prologue
    const/16 v4, 0x1e

    .line 47
    const-string v0, "/dev/null"

    .line 48
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, "sleepCnt":I
    :goto_5
    if-ge v1, v4, :cond_1b

    .line 50
    invoke-virtual {p2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v2, "/dev/null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 54
    const-wide/16 v2, 0x64

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_20

    .line 49
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_1b
    if-lt v1, v4, :cond_1f

    .line 66
    const-string v0, "/dev/null"

    .line 70
    :cond_1f
    return-object v0

    .line 55
    :catch_20
    move-exception v2

    goto :goto_18
.end method

.method public static getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .registers 7
    .param p0, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v2

    const-wide/32 v4, 0xf000

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c00

    add-long v0, v2, v4

    .line 159
    .local v0, "recordableSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_14

    .line 160
    const-wide/16 v0, 0x0

    .line 162
    :cond_14
    return-wide v0
.end method
