.class public Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;
.super Ljava/lang/Object;
.source "PhotoStackQueryHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoStackQueryHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I
    .registers 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    .prologue
    .line 129
    const-class v2, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;

    monitor-enter v2

    const/4 v0, 0x0

    .line 131
    .local v0, "result":I
    :try_start_4
    iget-object v1, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_e

    move-result v0

    .line 136
    :goto_c
    monitor-exit v2

    return v0

    .line 129
    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 133
    :catch_11
    move-exception v1

    goto :goto_c
.end method

.method public static declared-synchronized crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .registers 11
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .prologue
    .line 94
    const-class v7, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;

    monitor-enter v7

    const/4 v6, 0x0

    .line 98
    .local v6, "result":Landroid/database/Cursor;
    :try_start_4
    iget v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    if-lez v0, :cond_38

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 99
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "order":Ljava/lang/String;
    :goto_2a
    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3e
    .catchall {:try_start_4 .. :try_end_35} :catchall_3b

    move-result-object v6

    .line 114
    .end local v5    # "order":Ljava/lang/String;
    :goto_36
    monitor-exit v7

    return-object v6

    .line 103
    :cond_38
    :try_start_38
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_3e
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3b

    .restart local v5    # "order":Ljava/lang/String;
    goto :goto_2a

    .line 94
    .end local v5    # "order":Ljava/lang/String;
    :catchall_3b
    move-exception v0

    monitor-exit v7

    throw v0

    .line 111
    :catch_3e
    move-exception v0

    goto :goto_36
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 15
    .param p0, "contenResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "failCount":I
    if-nez p1, :cond_7

    .line 78
    :cond_6
    :goto_6
    return v7

    .line 42
    :cond_7
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 43
    .local v6, "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v7

    const-string v10, "_data"

    aput-object v10, v9, v8

    iput-object v9, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 49
    iput-object v12, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 50
    iput-object v12, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 51
    iput-object v12, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 52
    iput v7, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 53
    iput v7, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 54
    invoke-static {p0, p1, v6}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, "cur":Landroid/database/Cursor;
    if-eqz v0, :cond_6d

    .line 56
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_6a

    .line 57
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 59
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "imagePath":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;-><init>()V

    .line 63
    .local v1, "deparams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 64
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

    .line 65
    iput-object v12, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 66
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I

    move-result v5

    .line 67
    .local v5, "number":I
    if-eq v5, v8, :cond_67

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 56
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 71
    .end local v1    # "deparams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "number":I
    :cond_6a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    .end local v3    # "i":I
    :cond_6d
    if-nez v2, :cond_6

    move v7, v8

    .line 76
    goto :goto_6
.end method
