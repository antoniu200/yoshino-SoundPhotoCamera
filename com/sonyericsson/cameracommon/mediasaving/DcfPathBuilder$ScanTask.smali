.class Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mScanDirNo:I

.field private mScanFileNo:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    return-void
.end method

.method private final search()Z
    .registers 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->checkDirectory(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->searchImageDir()Z

    move-result v0

    .line 269
    :goto_10
    return v0

    .line 268
    :cond_11
    const-string v0, "DcfPathBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search error DCIM is not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private searchImageDir()Z
    .registers 7

    .prologue
    const/16 v5, 0x64

    const/4 v3, 0x1

    .line 279
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v1, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v4

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I
    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$502(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;I)I

    .line 281
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "fileList":[Ljava/lang/String;
    if-eqz v2, :cond_2a

    array-length v4, v2

    if-nez v4, :cond_2f

    .line 285
    :cond_2a
    iput v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 286
    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 292
    :goto_2e
    return v3

    .line 288
    :cond_2f
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v3

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$500(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 289
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mDirNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$400(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v3

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;->access$600(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageDirNameFilter;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "dirName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mRoot:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->searchImageNo(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2e
.end method

.method private searchImageNo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "dcimSub"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$700(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object v3

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I
    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$802(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;I)I

    .line 304
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$700(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_1e

    array-length v3, v1

    if-nez v3, :cond_50

    .line 307
    :cond_1e
    iput v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 312
    :goto_20
    iget v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    const/16 v4, 0x270f

    if-le v3, v4, :cond_2e

    .line 313
    iget v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 314
    iput v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 317
    :cond_2e
    iget v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_4f

    .line 318
    const-string v2, "DcfPathBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchImageNo over max dir. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    .line 321
    :cond_4f
    return v2

    .line 309
    :cond_50
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->mFileNameFilter:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->access$700(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object v3

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->access$800(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    goto :goto_20
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 239
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->begin()V

    .line 241
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->search()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 242
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    .line 249
    .local v0, "resultState":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    :goto_e
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->end()V

    .line 255
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;II)V

    return-object v1

    .line 244
    .end local v0    # "resultState":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    :cond_1d
    const-string v1, "DcfPathBuilder"

    const-string v2, "Scan failed."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;

    .line 246
    .restart local v0    # "resultState":Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResultState;
    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 247
    iput v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->mScanFileNo:I

    goto :goto_e
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanTask;->call()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$ScanResult;

    move-result-object v0

    return-object v0
.end method
