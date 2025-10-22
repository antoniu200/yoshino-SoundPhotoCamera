.class public Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;
.super Ljava/lang/Object;
.source "PredictiveCapturePathBuilder.java"


# static fields
.field private static final BURST_COVER_FILE_NAME_LENGTH:I

.field private static final BURST_FILE_NAME_LENGTH:I

.field public static final CAPTURE_ID_STRING_LENGTH:I = 0x4

.field public static final DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

.field public static final DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE:Ljava/lang/String; = "DSCPDC"

.field public static final DCF_FILE_NAME_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSS"

.field public static final DCF_FILE_NAME_FREE_WORD_BURST:Ljava/lang/String; = "BURST"

.field public static final DCF_FILE_NAME_FREE_WORD_COVER:Ljava/lang/String; = "COVER"

.field private static final FILE_TIMESTAMP_END_POS:I

.field private static final FILE_TIMESTAMP_START_POS:I

.field public static final TAG:Ljava/lang/String; = "PredictiveCapturePathBuilder"

.field private static final mBurstCoverDetector:Ljava/util/regex/Pattern;

.field private static final mBurstDetector:Ljava/util/regex/Pattern;

.field private static final mBurstDirectoryDetector:Ljava/util/regex/Pattern;

.field private static final mBurstLastDetector:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XPERIA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PREDICTIVE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

    .line 51
    const-string v0, "DSCPDC"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_"

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    const-string v1, "_"

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "BURST"

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_START_POS:I

    .line 59
    sget v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_START_POS:I

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_END_POS:I

    .line 63
    const-string v0, "DSCPDC"

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_"

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    const-string v1, "_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "BURST"

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, ".JPG"

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->BURST_FILE_NAME_LENGTH:I

    .line 71
    const-string v0, "DSCPDC"

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_"

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    const-string v1, "_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "BURST"

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "_"

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "COVER"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, ".JPG"

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->BURST_COVER_FILE_NAME_LENGTH:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/DSCPDC_\\d{4}_BURST\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(|_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".(JPE?G|jpe?g)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstDetector:Ljava/util/regex/Pattern;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/DSCPDC_\\d{4}_BURST\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "COVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".(JPE?G|jpe?g)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstCoverDetector:Ljava/util/regex/Pattern;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/DSCPDC_0000_BURST\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".(JPE?G|jpe?g)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstLastDetector:Ljava/util/regex/Pattern;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\ADSC_)(\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyyMMddHHmmssSSS"

    .line 125
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\\z)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstDirectoryDetector:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->BURST_COVER_FILE_NAME_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->BURST_FILE_NAME_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static getParentDirectoryTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v3, ""

    .line 207
    .local v3, "timeStamp":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "parentName":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstDirectoryDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 210
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 211
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    :cond_20
    return-object v3
.end method

.method public static getPhotoPath(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .param p0, "rootPath"    # Ljava/lang/String;
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DSC_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "addPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "dirPath":Ljava/lang/String;
    const-string v1, ""

    .line 141
    .local v1, "cover":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_46

    .line 143
    const-string v1, "_COVER"

    .line 145
    :cond_46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DSCPDC_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%04d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 146
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BURST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".JPG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-eq v7, v8, :cond_c8

    .line 154
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_10c

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_10c

    .line 157
    const-string v7, "PredictiveCapturePathBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhotoPath create dir failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v7, 0x0

    .line 173
    .end local v2    # "dir":Ljava/io/File;
    :goto_c7
    return-object v7

    .line 163
    :cond_c8
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 164
    .local v5, "parentUri":Landroid/net/Uri;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isExistDcimDirectory(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 167
    :goto_d2
    invoke-static {p2, v5, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 168
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_10c

    .line 169
    const-string v7, "PredictiveCapturePathBuilder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhotoPath create dir failed for sd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v7, 0x0

    goto :goto_c7

    .line 164
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_f2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d2

    .line 173
    .end local v5    # "parentUri":Landroid/net/Uri;
    :cond_10c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c7
.end method

.method public static getPredictiveCaptureGroupIdPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "fileName":Ljava/lang/String;
    sget v1, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_START_POS:I

    sget v2, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_END_POS:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isPredictiveCaptureCoverImage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstCoverDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 224
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 225
    const/4 v1, 0x1

    .line 227
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isPredictiveCaptureImage(Ljava/lang/String;)Z
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 184
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 185
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "fileTimeStamp":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->getParentDirectoryTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "parentTimeStamp":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 188
    const/4 v3, 0x1

    .line 191
    .end local v0    # "fileTimeStamp":Ljava/lang/String;
    .end local v2    # "parentTimeStamp":Ljava/lang/String;
    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public static isPredictiveCaptureLastImage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/PredictiveCapturePathBuilder;->mBurstLastDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 238
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 239
    const/4 v1, 0x1

    .line 241
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
