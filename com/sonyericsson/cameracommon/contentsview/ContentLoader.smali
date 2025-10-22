.class public Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

.field public static final TAG:Ljava/lang/String; = "ContentLoader"


# instance fields
.field private final mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

.field private mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

.field private mIsPaused:Z

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCacheBackup:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .param p3, "maxContentNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p3}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    .line 98
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    .line 99
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-object v0
.end method

.method private addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .prologue
    const/16 v1, 0x64

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_18

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_18

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 336
    :cond_18
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mIsPaused:Z

    if-nez v0, :cond_2e

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_2e

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 342
    :cond_2e
    return-void
.end method

.method private clearLocalCache()V
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 351
    :cond_9
    return-void
.end method

.method private loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V
    .registers 5
    .param p1, "task"    # Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v2

    if-gtz v2, :cond_16

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 196
    .local v1, "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_16

    .line 197
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 201
    .end local v1    # "oldestTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_16
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 202
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private removeFuture(I)V
    .registers 6
    .param p1, "indexId"    # I

    .prologue
    .line 213
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-nez v3, :cond_5

    .line 239
    :cond_4
    return-void

    .line 217
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 218
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 220
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "id":I
    :try_start_24
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2d} :catch_36
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_2d} :catch_34

    move-result v1

    .line 232
    :goto_2e
    if-ne v1, p1, :cond_b

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 227
    :catch_34
    move-exception v3

    goto :goto_2e

    .line 224
    :catch_36
    move-exception v3

    goto :goto_2e
.end method


# virtual methods
.method public clearLocalCacheBackup()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_c

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    .line 380
    :cond_c
    return-void
.end method

.method public getLocalCache()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    return-object v0
.end method

.method public loadLocalCache()V
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 385
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 387
    :cond_12
    return-void
.end method

.method public pause()V
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    if-eqz v1, :cond_20

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 114
    .local v0, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_a

    .line 116
    .end local v0    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_1b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 120
    :cond_20
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mIsPaused:Z

    .line 122
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    .line 131
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 134
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 140
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataLoaderQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V

    .line 144
    return-void
.end method

.method public reload(ILjava/util/List;)V
    .registers 8
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "destinations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v2

    .line 173
    .local v2, "localCache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    if-eqz v2, :cond_1c

    .line 174
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 177
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 178
    .local v1, "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    .line 179
    .local v0, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 185
    .end local v0    # "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .end local v1    # "info":Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    :cond_1c
    :goto_1c
    return-void

    .line 182
    :cond_1d
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onNoContentLoaded()V

    goto :goto_1c
.end method

.method public removeInvalidLocalCache()V
    .registers 4

    .prologue
    .line 390
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 397
    .end local v0    # "file":Ljava/io/File;
    :cond_23
    return-void
.end method

.method public removeTopContent()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 369
    :cond_11
    return-void
.end method

.method public request(ILandroid/net/Uri;)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/contentsview/DataLoader;-><init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;Z)V

    .line 160
    .local v0, "task":Lcom/sonyericsson/cameracommon/contentsview/DataLoader;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadData(Lcom/sonyericsson/cameracommon/contentsview/DataLoader;)V

    .line 161
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mIsPaused:Z

    .line 104
    return-void
.end method

.method public saveLocalCache()V
    .registers 3

    .prologue
    .line 372
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    .line 373
    return-void
.end method
