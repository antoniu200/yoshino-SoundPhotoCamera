.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;
    }
.end annotation


# static fields
.field private static final DUMMY_FILE_MIME_TYPE:Ljava/lang/String; = "text/plane"

.field private static final DUMMY_FILE_NAME:Ljava/lang/String; = "sdcard_write_test"

.field public static final KEY_SD_CARD_GRANT_URI:Ljava/lang/String; = "KEY_SD_CARD_GRANT_URI"

.field public static final TAG:Ljava/lang/String; = "StorageUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static child(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "docId":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 690
    .local v1, "newDocUri":Landroid/net/Uri;
    return-object v1
.end method

.method public static declared-synchronized createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentUri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 645
    const-class v8, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;

    monitor-enter v8

    :try_start_3
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->child(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 646
    .local v0, "child":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_47

    move-result v7

    if-eqz v7, :cond_f

    .line 667
    .end local v0    # "child":Landroid/net/Uri;
    :goto_d
    monitor-exit v8

    return-object v0

    .line 651
    .restart local v0    # "child":Landroid/net/Uri;
    :cond_f
    :try_start_f
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 653
    .local v1, "docUri":Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "parent":Ljava/lang/String;
    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 656
    invoke-static {p0, p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 659
    :cond_2c
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_47

    move-result-object v4

    .line 660
    .local v4, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 662
    .local v6, "retUri":Landroid/net/Uri;
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "vnd.android.document/directory"

    invoke-static {v7, v1, v9, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3a} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_3a} :catch_4a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_47

    move-result-object v6

    :goto_3b
    move-object v0, v6

    .line 667
    goto :goto_d

    .line 664
    :catch_3d
    move-exception v7

    move-object v2, v7

    .line 665
    .local v2, "e":Ljava/lang/Exception;
    :goto_3f
    :try_start_3f
    const-string v7, "StorageUtil"

    const-string v9, "createDirectory() failed"

    invoke-static {v7, v9, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_47

    goto :goto_3b

    .line 645
    .end local v0    # "child":Landroid/net/Uri;
    .end local v1    # "docUri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parent":Ljava/lang/String;
    .end local v6    # "retUri":Landroid/net/Uri;
    :catchall_47
    move-exception v7

    monitor-exit v8

    throw v7

    .line 664
    .restart local v0    # "child":Landroid/net/Uri;
    .restart local v1    # "docUri":Landroid/net/Uri;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parent":Ljava/lang/String;
    .restart local v6    # "retUri":Landroid/net/Uri;
    :catch_4a
    move-exception v7

    move-object v2, v7

    goto :goto_3f
.end method

.method public static createDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 779
    .local v1, "parentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 780
    .local v0, "documentUri":Landroid/net/Uri;
    if-eqz v1, :cond_f

    .line 782
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 784
    :cond_f
    return-object v0
.end method

.method public static declared-synchronized createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentUri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 608
    const-class v9, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;

    monitor-enter v9

    :try_start_3
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->child(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 609
    .local v0, "child":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5b

    move-result v8

    if-eqz v8, :cond_f

    .line 633
    .end local v0    # "child":Landroid/net/Uri;
    :goto_d
    monitor-exit v9

    return-object v0

    .line 614
    .restart local v0    # "child":Landroid/net/Uri;
    :cond_f
    :try_start_f
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 616
    .local v1, "docUri":Landroid/net/Uri;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, "parent":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 618
    invoke-static {p0, p1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 621
    :cond_2a
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExt(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "ext":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getDocumentName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 624
    .local v7, "retUri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 625
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_5b

    move-result-object v4

    .line 628
    .local v4, "mime":Ljava/lang/String;
    :try_start_47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v1, v4, v5}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4e} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_47 .. :try_end_4e} :catch_5e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_5b

    move-result-object v7

    .end local v4    # "mime":Ljava/lang/String;
    :cond_4f
    :goto_4f
    move-object v0, v7

    .line 633
    goto :goto_d

    .line 629
    .restart local v4    # "mime":Ljava/lang/String;
    :catch_51
    move-exception v8

    move-object v2, v8

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    :goto_53
    :try_start_53
    const-string v8, "StorageUtil"

    const-string v10, "createFile() failed"

    invoke-static {v8, v10, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_4f

    .line 608
    .end local v0    # "child":Landroid/net/Uri;
    .end local v1    # "docUri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "mime":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parent":Ljava/lang/String;
    .end local v7    # "retUri":Landroid/net/Uri;
    :catchall_5b
    move-exception v8

    monitor-exit v9

    throw v8

    .line 629
    .restart local v0    # "child":Landroid/net/Uri;
    .restart local v1    # "docUri":Landroid/net/Uri;
    .restart local v3    # "ext":Ljava/lang/String;
    .restart local v4    # "mime":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parent":Ljava/lang/String;
    .restart local v7    # "retUri":Landroid/net/Uri;
    :catch_5e
    move-exception v8

    move-object v2, v8

    goto :goto_53
.end method

.method public static existFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 679
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->child(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 680
    .local v0, "u":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 683
    .end local v0    # "u":Landroid/net/Uri;
    :goto_a
    return-object v0

    .restart local v0    # "u":Landroid/net/Uri;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 694
    const/4 v6, 0x0

    .line 696
    .local v6, "childCursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 697
    if-eqz v6, :cond_20

    .line 698
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 699
    .local v8, "isExist":Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_17} :catch_27
    .catchall {:try_start_1 .. :try_end_17} :catchall_35

    .line 700
    if-eqz v8, :cond_20

    .line 701
    const/4 v0, 0x1

    .line 707
    if-eqz v6, :cond_1f

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    .end local v8    # "isExist":Z
    :cond_1f
    :goto_1f
    return v0

    .line 707
    :cond_20
    if-eqz v6, :cond_25

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_25
    :goto_25
    const/4 v0, 0x0

    goto :goto_1f

    .line 704
    :catch_27
    move-exception v7

    .line 705
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_28
    const-string v0, "StorageUtil"

    const-string v1, "exists not found"

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 707
    if-eqz v6, :cond_25

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .line 707
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_35
    move-exception v0

    if-eqz v6, :cond_3b

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0
.end method

.method private static getDocumentName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 726
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getExt(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Landroid/net/Uri;

    .prologue
    .line 715
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getDocumentName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 717
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 718
    .local v0, "i":I
    if-ltz v0, :cond_19

    .line 719
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 722
    .end local v0    # "i":I
    :goto_18
    return-object v2

    :cond_19
    const-string v2, ""

    goto :goto_18
.end method

.method private static getExternalStorageRootPath()Ljava/lang/String;
    .registers 7

    .prologue
    .line 456
    new-instance v2, Ljava/io/File;

    const-string v3, "/storage/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, "root":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 458
    .local v1, "lists":[Ljava/io/File;
    if-eqz v1, :cond_36

    array-length v3, v1

    if-lez v3, :cond_36

    .line 459
    array-length v4, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v4, :cond_36

    aget-object v0, v1, v3

    .line 460
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "emulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "self"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 459
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 463
    :cond_31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 467
    .end local v0    # "f":Ljava/io/File;
    :goto_35
    return-object v3

    :cond_36
    const/4 v3, 0x0

    goto :goto_35
.end method

.method private static getInternalStorageRootPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 449
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMountableStorageTypes(Landroid/content/Context;)[Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;>;"
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    return-object v1
.end method

.method public static getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "afterStr":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 742
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 748
    :cond_30
    :goto_30
    return-object v0

    .line 745
    :cond_31
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method public static getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 147
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 148
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeType(Landroid/os/storage/VolumeInfo;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 149
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumePath(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    :goto_2c
    return-object v1

    .line 153
    :cond_2d
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageUtil$CameraStorageType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 162
    :cond_38
    const/4 v1, 0x0

    goto :goto_2c

    .line 155
    :pswitch_3a
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 157
    :pswitch_3f
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 153
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_3f
    .end packed-switch
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 174
    if-nez p1, :cond_4

    .line 176
    const/4 v8, 0x0

    .line 291
    :cond_3
    :goto_3
    return-object v8

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "path":Ljava/lang/String;
    if-nez v10, :cond_c

    .line 183
    const/4 v8, 0x0

    goto :goto_3

    .line 186
    :cond_c
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 187
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    .line 188
    .local v13, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v13}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumePath(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "mountPoint":Ljava/lang/String;
    if-eqz v8, :cond_1e

    .line 190
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_3

    .line 198
    .end local v8    # "mountPoint":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/VolumeInfo;
    :cond_37
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 199
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 201
    :cond_46
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v12

    .line 202
    .local v12, "sdcardPath":Ljava/lang/String;
    if-eqz v12, :cond_54

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    move-object v8, v12

    .line 203
    goto :goto_3

    .line 209
    .end local v12    # "sdcardPath":Ljava/lang/String;
    :cond_54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "r":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 213
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_5a
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_e6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 219
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 220
    .local v7, "index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getType(I)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7a} :catch_100
    .catchall {:try_start_5a .. :try_end_7a} :catchall_107

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_86

    .line 223
    const/4 v8, 0x0

    .line 260
    if-eqz v6, :cond_3

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 227
    :cond_86
    :try_start_86
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, "pathFromContent":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 231
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    .line 232
    .restart local v13    # "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v13}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumePath(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v8

    .line 233
    .restart local v8    # "mountPoint":Ljava/lang/String;
    if-eqz v8, :cond_9c

    .line 234
    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b1} :catch_100
    .catchall {:try_start_86 .. :try_end_b1} :catchall_107

    move-result v2

    if-eqz v2, :cond_9c

    .line 260
    if-eqz v6, :cond_3

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 242
    .end local v8    # "mountPoint":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/VolumeInfo;
    :cond_bb
    if-eqz v11, :cond_e6

    .line 243
    :try_start_bd
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 244
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ca} :catch_100
    .catchall {:try_start_bd .. :try_end_ca} :catchall_107

    move-result-object v8

    .line 260
    if-eqz v6, :cond_3

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 246
    :cond_d2
    :try_start_d2
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v12

    .line 247
    .restart local v12    # "sdcardPath":Ljava/lang/String;
    if-eqz v12, :cond_e6

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_100
    .catchall {:try_start_d2 .. :try_end_db} :catchall_107

    move-result v1

    if-eqz v1, :cond_e6

    .line 260
    if-eqz v6, :cond_e3

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e3
    move-object v8, v12

    goto/16 :goto_3

    .line 260
    .end local v7    # "index":I
    .end local v11    # "pathFromContent":Ljava/lang/String;
    .end local v12    # "sdcardPath":Ljava/lang/String;
    :cond_e6
    if-eqz v6, :cond_eb

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_eb
    :goto_eb
    const/4 v9, 0x0

    .line 278
    .local v9, "os":Ljava/io/OutputStream;
    :try_start_ec
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 279
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f5} :catch_10e
    .catchall {:try_start_ec .. :try_end_f5} :catchall_117

    move-result-object v8

    .line 283
    if-eqz v9, :cond_3

    .line 285
    :try_start_f8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_fd

    goto/16 :goto_3

    .line 286
    :catch_fd
    move-exception v1

    goto/16 :goto_3

    .line 257
    .end local v9    # "os":Ljava/io/OutputStream;
    :catch_100
    move-exception v1

    .line 260
    if-eqz v6, :cond_eb

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_eb

    .line 260
    :catchall_107
    move-exception v1

    if-eqz v6, :cond_10d

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_10d
    throw v1

    .line 280
    .restart local v9    # "os":Ljava/io/OutputStream;
    :catch_10e
    move-exception v1

    .line 283
    if-eqz v9, :cond_114

    .line 285
    :try_start_111
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_11e

    .line 291
    :cond_114
    :goto_114
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 283
    :catchall_117
    move-exception v1

    if-eqz v9, :cond_11d

    .line 285
    :try_start_11a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_120

    .line 288
    :cond_11d
    :goto_11d
    throw v1

    .line 286
    :catch_11e
    move-exception v1

    goto :goto_114

    :catch_120
    move-exception v2

    goto :goto_11d
.end method

.method public static getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "resutlUri":Landroid/net/Uri;
    const-string v2, "storage_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "KEY_SD_CARD_GRANT_URI"

    const/4 v4, 0x0

    .line 533
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 535
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 537
    :cond_15
    return-object v0
.end method

.method public static getSdGrantedUri(Landroid/content/Context;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Landroid/net/Uri;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 826
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getStorageState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v5, v6, :cond_c

    .line 828
    const/4 v4, 0x0

    .line 854
    :cond_b
    :goto_b
    return-object v4

    .line 830
    :cond_c
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 831
    .local v4, "savedUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 832
    invoke-virtual {v5}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v3

    .line 834
    .local v3, "permissionList":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b

    .line 835
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/UriPermission;

    invoke-virtual {v5}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_b

    .line 836
    :cond_2b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_65

    .line 837
    const/4 v1, 0x0

    .line 838
    .local v1, "isGranted":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    .line 839
    .local v2, "permission":Landroid/content/UriPermission;
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 840
    .local v0, "currentUri":Landroid/net/Uri;
    if-eqz v4, :cond_58

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 841
    const/4 v1, 0x1

    .line 842
    goto :goto_36

    .line 844
    :cond_58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_36

    .line 848
    .end local v0    # "currentUri":Landroid/net/Uri;
    .end local v2    # "permission":Landroid/content/UriPermission;
    :cond_61
    if-nez v1, :cond_b

    .line 849
    const/4 v4, 0x0

    goto :goto_b

    .line 852
    .end local v1    # "isGranted":Z
    :cond_65
    const/4 v4, 0x0

    goto :goto_b
.end method

.method private static getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string v0, "storage"

    .line 296
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 295
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->createProxy(Landroid/os/storage/StorageManager;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 102
    .local v1, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    if-nez p0, :cond_6

    move-object v2, v1

    .line 123
    .end local v1    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .local v2, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :goto_5
    return-object v2

    .line 106
    .end local v2    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .restart local v1    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_6
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 107
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 108
    .local v3, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumePath(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "mountPoint":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 111
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeType(Landroid/os/storage/VolumeInfo;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v1

    goto :goto_18

    .line 116
    .end local v0    # "mountPoint":Ljava/lang/String;
    .end local v3    # "volume":Landroid/os/storage/VolumeInfo;
    :cond_35
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 117
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    :cond_41
    :goto_41
    move-object v2, v1

    .line 123
    .end local v1    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .restart local v2    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    goto :goto_5

    .line 118
    .end local v2    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .restart local v1    # "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    :cond_43
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 119
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    goto :goto_41
.end method

.method public static getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v1

    .line 136
    .local v1, "type":Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    return-object v1
.end method

.method private static getVolumePath(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .registers 8
    .param p0, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v4, 0x0

    .line 400
    const/4 v0, 0x0

    .line 403
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 404
    .local v2, "userId":I
    const/4 v1, 0x0

    .line 405
    .local v1, "myUserId":Ljava/lang/reflect/Method;
    :try_start_4
    const-class v3, Landroid/os/UserHandle;

    const-string v5, "myUserId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 406
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 407
    invoke-virtual {p0, v2}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_20} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_20} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_20} :catch_34

    move-result-object v0

    .line 412
    :goto_21
    if-nez v0, :cond_27

    .line 413
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 415
    :cond_27
    if-nez v0, :cond_2b

    move-object v3, v4

    .line 418
    :goto_2a
    return-object v3

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 408
    :catch_30
    move-exception v3

    goto :goto_21

    :catch_32
    move-exception v3

    goto :goto_21

    :catch_34
    move-exception v3

    goto :goto_21
.end method

.method public static getVolumeState(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "removed"

    .line 66
    .local v0, "envState":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 67
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 68
    .local v2, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeType(Landroid/os/storage/VolumeInfo;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v4

    if-ne v4, p0, :cond_14

    .line 69
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    invoke-static {v3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v2    # "volume":Landroid/os/storage/VolumeInfo;
    :cond_2e
    :goto_2e
    return-object v0

    .line 74
    :cond_2f
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageUtil$CameraStorageType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    goto :goto_2e

    .line 77
    :pswitch_3b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 78
    goto :goto_2e

    .line 80
    :pswitch_44
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getExternalStorageRootPath()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "sdcardPath":Ljava/lang/String;
    if-nez v1, :cond_4d

    const-string v0, "removed"

    .line 83
    :goto_4c
    goto :goto_2e

    .line 81
    :cond_4d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v3}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    .line 74
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_44
    .end packed-switch
.end method

.method private static getVolumeType(Landroid/os/storage/VolumeInfo;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .registers 5
    .param p0, "volume"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    .line 359
    .local v2, "volumeType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 360
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .line 374
    :goto_9
    return-object v3

    .line 363
    :cond_a
    if-nez v2, :cond_24

    .line 364
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 365
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v0, :cond_1b

    iget v1, v0, Landroid/os/storage/DiskInfo;->flags:I

    .line 367
    .local v1, "diskFlags":I
    :goto_14
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_1d

    .line 368
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    goto :goto_9

    .line 365
    .end local v1    # "diskFlags":I
    :cond_1b
    const/4 v1, 0x0

    goto :goto_14

    .line 370
    .restart local v1    # "diskFlags":I
    :cond_1d
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_24

    .line 371
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->USB:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    goto :goto_9

    .line 374
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    .end local v1    # "diskFlags":I
    :cond_24
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    goto :goto_9
.end method

.method public static getVolumeUuid(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 515
    .local v1, "volume":Landroid/os/storage/VolumeInfo;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeType(Landroid/os/storage/VolumeInfo;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v3

    if-ne v3, p0, :cond_d

    .line 516
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 521
    .end local v1    # "volume":Landroid/os/storage/VolumeInfo;
    :cond_23
    return-object v0
.end method

.method public static isExistDcimDirectory(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "isExist":Z
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "uriStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 762
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 763
    const/4 v0, 0x1

    .line 766
    :cond_14
    return v0
.end method

.method public static isExistRemovableStorage(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 813
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 815
    .local v1, "dirArr":[Ljava/io/File;
    array-length v4, v1

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_15

    aget-object v0, v1, v3

    .line 816
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_16

    .line 817
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 818
    const/4 v2, 0x1

    .line 822
    .end local v0    # "dir":Ljava/io/File;
    :cond_15
    return v2

    .line 815
    .restart local v0    # "dir":Ljava/io/File;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static isPreinstalledOrUpdatedPreinstalledApp(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 477
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 478
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_35

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 480
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_24

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_24

    .line 481
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 482
    .local v1, "flags":I
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_22

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_23

    .line 486
    :cond_22
    const/4 v4, 0x1

    .line 501
    .end local v1    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    :goto_23
    return v4

    .line 492
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_24
    const-string v5, "StorageUtil"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2b} :catch_2c

    goto :goto_23

    .line 499
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_2c
    move-exception v0

    .line 500
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "StorageUtil"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 496
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_35
    :try_start_35
    const-string v5, "StorageUtil"

    const-string v6, "Can\'t get packeage manager. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_3c} :catch_2c

    goto :goto_23
.end method

.method public static isSDCardWritable(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, "isCanWritable":Z
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 430
    .local v4, "parentUri":Landroid/net/Uri;
    invoke-static {p0, v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 432
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_2a

    .line 433
    const/4 v3, 0x1

    .line 435
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 436
    const-string v5, "StorageUtil"

    const-string v6, "Unable to delete file."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2a} :catch_2b

    .line 442
    :cond_2a
    :goto_2a
    return v3

    .line 438
    :catch_2b
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "StorageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to delete file."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public static isSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkUri"    # Landroid/net/Uri;

    .prologue
    .line 569
    const/4 v3, 0x0

    .line 570
    .local v3, "result":Z
    if-nez p1, :cond_c

    .line 571
    const-string v5, "StorageUtil"

    const-string v6, "checkUri is null"

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 596
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_b
    return v4

    .line 575
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_c
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-static {p1, v5}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 578
    .local v0, "documentUri":Landroid/net/Uri;
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "text/plane"

    const-string v7, "sdcard_write_test"

    invoke-static {v5, v0, v6, v7}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 580
    .local v2, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_2d

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 583
    const/4 v3, 0x1

    .end local v2    # "fileUri":Landroid/net/Uri;
    :cond_2d
    :goto_2d
    move v4, v3

    .line 596
    .restart local v4    # "result":I
    goto :goto_b

    .line 585
    .end local v4    # "result":I
    .restart local v2    # "fileUri":Landroid/net/Uri;
    :cond_2f
    const-string v5, "StorageUtil"

    const-string v6, "SD Card is no granted for delete error."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_36} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_36} :catch_40

    goto :goto_2d

    .line 592
    .end local v2    # "fileUri":Landroid/net/Uri;
    :catch_37
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Exception;
    :goto_38
    const-string v5, "StorageUtil"

    const-string v6, "file create failed"

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_40
    move-exception v1

    goto :goto_38
.end method

.method public static searchDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getSdCardGrantedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    .local v1, "parentUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 798
    .local v0, "documentUri":Landroid/net/Uri;
    if-eqz v1, :cond_f

    .line 800
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathAfterDcim(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->existFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 802
    :cond_f
    return-object v0
.end method

.method public static setSdCardGranted(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grantedUri"    # Landroid/net/Uri;

    .prologue
    .line 547
    if-eqz p1, :cond_1b

    .line 548
    const-string v1, "storage_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 549
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 550
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1b

    .line 551
    const-string v1, "KEY_SD_CARD_GRANT_URI"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 555
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1b
    return-void
.end method
