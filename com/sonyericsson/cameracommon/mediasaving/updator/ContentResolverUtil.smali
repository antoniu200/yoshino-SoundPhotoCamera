.class public Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;
.super Ljava/lang/Object;
.source "ContentResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;
    }
.end annotation


# static fields
.field private static final MPO_EXTENSION:Ljava/lang/String; = ".MPO"

.field public static final TAG:Ljava/lang/String; = "ContentResolverUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public static crBulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # [Landroid/content/ContentValues;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 127
    :goto_9
    return v1

    .line 121
    :catch_a
    move-exception v0

    .line 122
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 123
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_c
    move-exception v2

    goto :goto_9
.end method

.method public static crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "result":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 104
    :goto_d
    return v0

    .line 100
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public static crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "result":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 166
    :goto_9
    return-object v0

    .line 163
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public static crOpenOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "result":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 156
    :goto_9
    return-object v0

    .line 153
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public static crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .prologue
    .line 67
    const/4 v6, 0x0

    .line 70
    .local v6, "result":Landroid/database/Cursor;
    :try_start_1
    iget v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    if-lez v0, :cond_37

    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 71
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "order":Ljava/lang/String;
    :goto_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .end local v5    # "order":Ljava/lang/String;
    :goto_36
    return-object v6

    .line 78
    :cond_37
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    .restart local v5    # "order":Ljava/lang/String;
    goto :goto_27

    .line 86
    .end local v5    # "order":Ljava/lang/String;
    :catch_3a
    move-exception v0

    goto :goto_36
.end method

.method public static crUpdate(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->where:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    move-result v1

    .line 145
    :goto_f
    return v1

    .line 139
    :catch_10
    move-exception v0

    .line 140
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 141
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_12
    move-exception v2

    goto :goto_f
.end method

.method public static deleteImage(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method private static deleteImageByFilePath(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "isDelete":Z
    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-eq v3, v4, :cond_28

    .line 268
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 280
    :cond_14
    :goto_14
    if-eqz v1, :cond_27

    .line 285
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$1;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$1;-><init>()V

    invoke-static {p0, v3, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 300
    :cond_27
    return v1

    .line 270
    :cond_28
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->searchDocumentSdCard(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 271
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_14

    .line 273
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_35} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_35} :catch_40

    move-result v1

    goto :goto_14

    .line 274
    :catch_37
    move-exception v0

    .line 275
    .local v0, "ex":Ljava/lang/Exception;
    :goto_38
    const-string v3, "ContentResolverUtil"

    const-string v4, "deleteDocument: [occurred Exception.]"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 274
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_40
    move-exception v0

    goto :goto_38
.end method

.method private static deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "withMpo"    # Z

    .prologue
    .line 197
    if-nez p1, :cond_4

    .line 198
    const/4 v8, 0x0

    .line 250
    :goto_3
    return v8

    .line 201
    :cond_4
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 203
    .local v6, "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "_data"

    aput-object v11, v9, v10

    iput-object v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 204
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 205
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 206
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 207
    const/4 v9, 0x0

    iput v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 208
    const/4 v9, 0x0

    iput v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 209
    invoke-static {p0, p1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 210
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 211
    .local v2, "failCount":I
    if-eqz v0, :cond_a2

    .line 212
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_9f

    .line 213
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    if-eq v9, v10, :cond_96

    .line 219
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;-><init>()V

    .line 220
    .local v1, "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 221
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    .line 222
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 223
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I

    move-result v5

    .line 224
    .local v5, "number":I
    const/4 v9, 0x1

    if-eq v5, v9, :cond_77

    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 233
    .end local v1    # "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    .end local v5    # "number":I
    :cond_77
    :goto_77
    if-eqz p2, :cond_93

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".MPO"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageByFilePath(Landroid/content/Context;Ljava/lang/String;)Z

    .line 212
    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 228
    :cond_96
    invoke-static {p0, v7}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageByFilePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 229
    .local v4, "isDelete":Z
    if-nez v4, :cond_77

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 237
    .end local v4    # "isDelete":Z
    .end local v7    # "path":Ljava/lang/String;
    :cond_9f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v3    # "i":I
    :cond_a2
    const/4 v8, 0x0

    .line 243
    .local v8, "result":Z
    if-nez v2, :cond_a8

    .line 244
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 246
    :cond_a8
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method public static executeDeteleTask(Landroid/content/Context;Landroid/net/Uri;ZLcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "withMpo"    # Z
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 260
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;-><init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)V

    .line 261
    .local v0, "task":Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public static isExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    const/4 v2, 0x1

    .line 172
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 174
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_10

    move-result-object v1

    .line 179
    :goto_a
    if-eqz v1, :cond_f

    .line 181
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_13

    .line 187
    :cond_f
    :goto_f
    return v2

    .line 175
    :catch_10
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_a

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_13
    move-exception v3

    goto :goto_f
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 304
    if-nez p0, :cond_4

    .line 305
    const/4 p0, 0x0

    .line 311
    .end local p0    # "fileName":Ljava/lang/String;
    .local v0, "point":I
    :cond_3
    :goto_3
    return-object p0

    .line 307
    .end local v0    # "point":I
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_4
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 308
    .restart local v0    # "point":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 309
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method
