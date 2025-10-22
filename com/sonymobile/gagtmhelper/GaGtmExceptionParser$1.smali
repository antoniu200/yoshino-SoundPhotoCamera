.class final Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 269
    :try_start_0
    invoke-static {p1, p2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 276
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->serializeQueueToFile()V

    .line 278
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_21

    .line 279
    :try_start_f
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 280
    # getter for: Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->access$100()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 282
    :cond_1c
    monitor-exit v2

    .line 289
    :cond_1d
    :goto_1d
    return-void

    .line 282
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_21} :catch_21

    .line 283
    :catch_21
    move-exception v0

    .line 285
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 286
    const-string v1, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method
