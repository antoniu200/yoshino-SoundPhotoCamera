.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;
.super Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;
.source "SoundPhotoSavingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMpoData:[B

.field private mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;[B)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savingTaskManager"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .param p3, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p4, "mpoData"    # [B

    .prologue
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 46
    iput-object p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    return-void
.end method

.method private removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 143
    if-nez p1, :cond_4

    .line 144
    const/4 p1, 0x0

    .line 150
    .end local p1    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p1

    .line 146
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_4
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "point":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method


# virtual methods
.method protected getExpectedFileSize()I
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    if-nez v0, :cond_e

    .line 52
    :cond_c
    const/4 v0, 0x0

    .line 56
    :goto_d
    return v0

    .line 53
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    if-nez v0, :cond_1a

    .line 54
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_d

    .line 56
    :cond_1a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method protected register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V
    .registers 9
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 92
    if-nez p1, :cond_4b

    .line 93
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "jpegFilePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".MPO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "mpoFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    if-nez v2, :cond_39

    .line 96
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mContext:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v4

    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;

    invoke-direct {v4, p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;Ljava/lang/String;)V

    invoke-static {v2, v3, v5, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 114
    .end local v0    # "jpegFilePath":Ljava/lang/String;
    .end local v1    # "mpoFilePath":Ljava/lang/String;
    :goto_34
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 115
    iput-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    .line 118
    return-void

    .line 102
    .restart local v0    # "jpegFilePath":Ljava/lang/String;
    .restart local v1    # "mpoFilePath":Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v0, v3, v6

    new-instance v4, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;

    invoke-direct {v4, p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask$OnScanCompletedSoundPhotoContentListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;Ljava/lang/String;)V

    invoke-static {v2, v3, v5, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_34

    .line 111
    .end local v0    # "jpegFilePath":Ljava/lang/String;
    .end local v1    # "mpoFilePath":Ljava/lang/String;
    :cond_4b
    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    goto :goto_34
.end method

.method protected store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    .registers 7
    .param p1, "output"    # Landroid/net/Uri;

    .prologue
    .line 64
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 67
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 70
    :cond_15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "jpegFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->writeToStorage([BLandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 72
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    .line 85
    :goto_2e
    return-object v2

    .line 76
    :cond_2f
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    if-eqz v2, :cond_65

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".MPO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "mpoFilePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->mMpoData:[B

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/SoundPhotoSavingTask;->writeToStorage([BLandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 79
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    goto :goto_2e

    .line 85
    .end local v1    # "mpoFilePath":Ljava/lang/String;
    :cond_65
    const/4 v2, 0x0

    goto :goto_2e
.end method
