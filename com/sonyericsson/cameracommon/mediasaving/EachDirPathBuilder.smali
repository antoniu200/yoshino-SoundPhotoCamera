.class public Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
.super Ljava/lang/Object;
.source "EachDirPathBuilder.java"


# static fields
.field private static final CURRENT_DIR_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSS"

.field private static final MAX_FILE_NAME:I = 0xf423f

.field private static final MAX_RETRY_TIMES_FOR_CREATING_CURRENT_DIR:I = 0x64

.field private static final MIN_FILE_NAME:I = 0x1

.field public static final TAG:Ljava/lang/String; = "EachDirPathBuilder"


# instance fields
.field private mDirPath:Ljava/lang/String;

.field private mFileNo:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "rootDirPath"    # Ljava/lang/String;
    .param p2, "subDirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->initDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private final getCurrentDirName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 194
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 195
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "currentDirName":Ljava/lang/String;
    return-object v0
.end method

.method private getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;
    .param p2, "subDirectoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchSubDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "subDir":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 96
    const-string v4, "EachDirPathBuilder"

    const-string v5, "initDirectory(): Fail to search sub dir is null"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fail to search sub dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_15
    const/4 v0, 0x0

    .line 103
    .local v0, "currentDir":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "searchNum":I
    :goto_17
    const/16 v4, 0x64

    if-ge v2, v4, :cond_4c

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->getCurrentDirName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "currentDirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0    # "currentDir":Ljava/io/File;
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .restart local v0    # "currentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 109
    const-string v4, "EachDirPathBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDirectory(): Already directory exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 117
    .end local v1    # "currentDirName":Ljava/lang/String;
    :cond_4c
    if-nez v0, :cond_5d

    .line 118
    const-string v4, "EachDirPathBuilder"

    const-string v5, "initDirectory(): Max retry times for creating current dir."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Max retry times for creating current dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_5d
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    if-nez v4, :cond_87

    .line 126
    const-string v4, "EachDirPathBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDirectory(): Fail to search current dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fail to search current dir."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    .line 133
    const/4 v4, 0x0

    iput v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 134
    return-void
.end method

.method private final searchDirectory(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_e

    .line 177
    const/4 v0, 0x0

    .line 180
    :cond_e
    if-eqz v0, :cond_15

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 184
    :goto_14
    return-object v1

    .line 183
    :cond_15
    const-string v1, "EachDirPathBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchDirectory() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private final searchSubDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "rootDirectoryPath"    # Ljava/lang/String;
    .param p2, "subDirectoryName"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "dcimDir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "dcimDirPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 150
    .local v3, "subDirPath":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 151
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v2, "subDir":Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->searchDirectory(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .end local v2    # "subDir":Ljava/io/File;
    :cond_19
    return-object v3
.end method


# virtual methods
.method public assignImageFilePath()Ljava/lang/String;
    .registers 7

    .prologue
    .line 67
    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    .line 68
    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    const v2, 0xf423f

    if-le v1, v2, :cond_16

    .line 69
    const-string v1, "EachDirPathBuilder"

    const-string v2, "assignImageFilePath(): Max file name."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, 0x0

    .line 78
    :goto_15
    return-object v1

    .line 73
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "filePath":Ljava/lang/StringBuilder;
    const-string v1, "DSC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%06d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->mFileNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ".JPG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method
