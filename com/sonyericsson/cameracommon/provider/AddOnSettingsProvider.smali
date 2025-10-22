.class public Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;
.super Landroid/content/ContentProvider;
.source "AddOnSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;,
        Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$Path;,
        Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CommonSetting;,
        Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CameraParameter;,
        Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$CapturingMode;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.android.addoncamera.dummy.provider"

.field private static final DATABASE_NAME:Ljava/lang/String; = "dummy.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final DIR_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final ITEM_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field private static MIMETYPE_LIST:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AddOnSettingsProvider"


# instance fields
.field private URI_MATCHER:Landroid/content/UriMatcher;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mProcessingBatchCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    .line 303
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->setupUriMatcher()V

    .line 304
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .registers 11
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    .line 548
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 551
    .local v2, "threadId":J
    const-string v1, "AddOnSettingsProvider"

    const-string v4, "### ["

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "]"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 552
    return-void
.end method

.method private getCountOf(Ljava/lang/String;)I
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 513
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 515
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 524
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 525
    .local v9, "count":I
    if-eqz v8, :cond_1d

    .line 526
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 527
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_1d
    return v9
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 478
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 479
    .local v0, "match":I
    packed-switch v0, :pswitch_data_2c

    .line 490
    :pswitch_9
    new-instance v1, Landroid/database/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid uri for this content provider. uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :pswitch_22
    const-string v1, "capturingmodes"

    .line 487
    :goto_24
    return-object v1

    .line 484
    :pswitch_25
    const-string v1, "cameraparameters"

    goto :goto_24

    .line 487
    :pswitch_28
    const-string v1, "commonsettings"

    goto :goto_24

    .line 479
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_9
        :pswitch_25
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method private in(Landroid/net/Uri;)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x3

    .line 534
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 537
    .local v2, "threadId":J
    const-string v1, "AddOnSettingsProvider"

    const-string v4, "### ["

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "]"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "() --> start #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 538
    return-void
.end method

.method private isProcessingBatch()Z
    .registers 2

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 148
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private onCompleteOperation(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 498
    if-nez p1, :cond_3

    .line 509
    :goto_2
    return-void

    .line 504
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_2

    .line 507
    :catchall_10
    move-exception v0

    throw v0
.end method

.method private out()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    .line 541
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "methodName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 544
    .local v2, "threadId":J
    const-string v1, "AddOnSettingsProvider"

    const-string v4, "### ["

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "]"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v6, "() --> end"

    aput-object v6, v5, v8

    invoke-static {v1, v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 545
    return-void
.end method

.method private setupUriMatcher()V
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 111
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturingmodes"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturingmodes/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraparameters"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameraparameters/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonsettings"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "commonsettings/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.dir/capturingmode"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.item/capturingmode"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.dir/cameraparameter"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.item/cameraparameter"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.dir/commonsetting"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "vnd.android.cursor.item/commonsetting"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->incrementProcessingBatchCount()V

    .line 449
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 450
    .local v1, "result":[Landroid/content/ContentProviderResult;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->decrementProcessingBatchCount()V

    .line 452
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 453
    .local v2, "updated":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 454
    .local v0, "i":Landroid/content/ContentProviderOperation;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 455
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 458
    .end local v0    # "i":Landroid/content/ContentProviderOperation;
    :cond_2d
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 459
    .local v0, "i":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    goto :goto_31

    .line 464
    .end local v0    # "i":Landroid/net/Uri;
    :cond_41
    return-object v1
.end method

.method decrementProcessingBatchCount()V
    .registers 2

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 380
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 383
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->isProcessingBatch()Z

    move-result v2

    if-nez v2, :cond_19

    .line 384
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    .line 390
    :cond_19
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 559
    const-string v0, "com.sonymobile.android.addoncamera.dummy.provider"

    return-object v0
.end method

.method protected getDataBaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 555
    const-string v0, "dummy.db"

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 474
    sget-object v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method incrementProcessingBatchCount()V
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mProcessingBatchCount:I

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 350
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 355
    .local v2, "id":J
    const/4 v1, 0x0

    .line 356
    .local v1, "inserted":Landroid/net/Uri;
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_27

    .line 357
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->isProcessingBatch()Z

    move-result v5

    if-nez v5, :cond_27

    .line 359
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    .line 365
    :cond_27
    return-object v1
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 308
    new-instance v0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getDataBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 328
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 327
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 338
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 404
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 406
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 409
    .local v0, "count":I
    if-eqz p3, :cond_3b

    .line 411
    :try_start_d
    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 417
    if-lez v0, :cond_1c

    .line 418
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->isProcessingBatch()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 419
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 439
    :cond_1c
    :goto_1c
    return v0

    .line 423
    :catch_1d
    move-exception v2

    .line 424
    .local v2, "e":Landroid/database/sqlite/SQLiteConstraintException;
    const-string v6, "AddOnSettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update the record. Message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 428
    .end local v2    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :cond_3b
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 429
    .local v4, "id":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1c

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->isProcessingBatch()Z

    move-result v6

    if-nez v6, :cond_53

    .line 431
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    .line 433
    :cond_53
    const/4 v0, 0x1

    goto :goto_1c
.end method
