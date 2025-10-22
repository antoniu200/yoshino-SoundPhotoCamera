.class public Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    }
.end annotation


# static fields
.field private static final DEEPMODE_EVENT_STRING:Ljava/lang/String; = "EVENT"

.field private static final DEEPMODE_EXCEPTION_STRING:Ljava/lang/String; = "EXCEPTION"

.field private static final HASH_VERSION:Ljava/lang/String; = "0"

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x78

.field private static final MAX_REPORTED_ROWS_DEFAULT:I = 0xa

.field private static final MAX_TRAVERSED_ROWS_DEFAULT:I = 0x14

.field private static volatile mAppVersion:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mDeepCrashHashList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

.field private static volatile mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile mEnabledPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static volatile mMaxReportedRows:I

.field private static volatile mMaxTraversedRows:I

.field private static mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 50
    const/16 v0, 0xa

    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 55
    const/16 v0, 0x14

    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mStartTime:J

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 399
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 400
    const-string v2, "GaGtmHelper"

    const-string v3, "createThrowableDescription"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-gt p1, v2, :cond_36

    .line 406
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 410
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2e

    .line 412
    const-string v2, " Cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 424
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2d
    return-object v1

    .line 416
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2e
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 421
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_36
    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 444
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 445
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_31
    return-object v2
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .registers 15
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v6, "retval":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 462
    .local v9, "stackTraceIndex":I
    const/4 v2, 0x0

    .line 463
    .local v2, "done":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 464
    .local v8, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v10, 0x0

    .line 465
    .local v10, "stackTraceLength":I
    const/4 v0, 0x0

    .line 467
    .local v0, "addedRows":I
    const/4 v3, 0x0

    .line 470
    .local v3, "firstInterestingRow":I
    sget-object v12, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 471
    :try_start_11
    sget v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 472
    .local v4, "maxReportedRows":I
    monitor-exit v12
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_62

    .line 474
    sget-object v12, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 475
    :try_start_17
    sget v5, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 476
    .local v5, "maxStackDepth":I
    monitor-exit v12
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_65

    .line 478
    if-eqz v8, :cond_84

    .line 480
    array-length v10, v8

    .line 481
    const-string v11, " S:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v2, 0x0

    .line 485
    :goto_2b
    if-nez v2, :cond_68

    if-ge v9, v5, :cond_68

    if-ge v9, v10, :cond_68

    .line 487
    aget-object v7, v8, v9

    .line 489
    .local v7, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v7, :cond_5f

    .line 492
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->packageNameIsEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 494
    move v3, v9

    .line 495
    const/4 v2, 0x1

    .line 496
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 497
    const-string v11, "GaGtmHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "firstInterestingRow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v1    # "classname":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    .line 472
    .end local v4    # "maxReportedRows":I
    .end local v5    # "maxStackDepth":I
    .end local v7    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_62
    move-exception v11

    :try_start_63
    monitor-exit v12
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v11

    .line 476
    .restart local v4    # "maxReportedRows":I
    :catchall_65
    move-exception v11

    :try_start_66
    monitor-exit v12
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v11

    .line 507
    .restart local v5    # "maxStackDepth":I
    :cond_68
    const/4 v2, 0x0

    .line 508
    move v9, v3

    .line 509
    :goto_6a
    if-nez v2, :cond_89

    if-ge v9, v5, :cond_89

    if-ge v0, v4, :cond_89

    if-ge v9, v10, :cond_89

    .line 511
    aget-object v7, v8, v9

    .line 513
    .restart local v7    # "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v7, :cond_82

    .line 515
    invoke-static {v8, v9}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 522
    :cond_82
    const/4 v2, 0x1

    goto :goto_6a

    .line 526
    .end local v7    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_84
    const-string v11, " Stack trace was null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_89
    return-object v6
.end method

.method public static enableExceptionParsing(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_3
    sput-object p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 237
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 239
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 240
    const-string v0, "GaGtmHelper"

    const-string v2, "setEnabledPackageNames is empty!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1a
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_43

    .line 245
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_51

    .line 255
    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_39} :catch_54
    .catchall {:try_start_24 .. :try_end_39} :catchall_51

    .line 261
    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_51

    .line 263
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 291
    return-void

    .line 247
    :cond_43
    :try_start_43
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 248
    const-string v0, "GaGtmHelper"

    const-string v2, "enableExceptionParsing was called twice but it should normally not be done!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 261
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_51

    throw v0

    .line 258
    :catch_54
    move-exception v0

    goto :goto_39
.end method

.method public static generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 305
    const-string v3, "GaGtmHelper"

    const-string v4, "GenerateCrash"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_d
    if-eqz p0, :cond_11

    if-nez p1, :cond_1f

    .line 310
    :cond_11
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 311
    const-string v3, "GaGtmHelper"

    const-string v4, "Thread or throwable was null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1e
    :goto_1e
    return-void

    .line 317
    :cond_1f
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "hash":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 319
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception has hash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_41
    invoke-static {p0, p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 326
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->isDeepCrash(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 328
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 329
    const-string v3, "GaGtmHelper"

    const-string v4, "Generate deep crash"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_57
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 334
    .local v1, "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5c} :catch_67

    .line 335
    :try_start_5c
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 336
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_8b

    .line 338
    :try_start_5f
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    if-ne v1, v3, :cond_8e

    .line 339
    invoke-static {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateDeepCrashEventMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_66} :catch_67

    goto :goto_1e

    .line 348
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :catch_67
    move-exception v2

    .line 350
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 351
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internal exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 336
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v3

    .line 340
    :cond_8e
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    if-ne v1, v3, :cond_1e

    .line 341
    invoke-static {p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateDeepCrashExceptionMode(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1e

    .line 344
    .end local v1    # "mode":Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;
    :cond_96
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 345
    const-string v3, "GaGtmHelper"

    const-string v4, "no deep crash is to be generated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_a3} :catch_67

    goto/16 :goto_1e
.end method

.method private static generateDeepCrashEventMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 15
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 731
    .local v10, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v12, 0x0

    .line 732
    .local v12, "stackTraceLength":I
    const/4 v11, 0x0

    .line 733
    .local v11, "stackTraceIndex":I
    const/4 v6, 0x0

    .line 735
    .local v6, "done":Z
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_a
    sget v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 737
    .local v7, "maxStackDepth":I
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_83

    .line 739
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 740
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateDeepCrashEventmode hash:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_2b
    if-eqz v10, :cond_2e

    .line 746
    array-length v12, v10

    .line 751
    :cond_2e
    :goto_2e
    if-nez v6, :cond_88

    if-ge v11, v7, :cond_88

    if-ge v11, v12, :cond_88

    .line 753
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v9, v0, v11

    .line 755
    .local v9, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v9, :cond_86

    .line 757
    invoke-static {v10, v11}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 759
    .local v8, "stackElementDescription":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 760
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_70
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    const-string v1, "deepCrash"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushDeepEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 767
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 737
    .end local v7    # "maxStackDepth":I
    .end local v8    # "stackElementDescription":Ljava/lang/StringBuilder;
    .end local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v0

    .line 771
    .restart local v7    # "maxStackDepth":I
    .restart local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_86
    const/4 v6, 0x1

    goto :goto_2e

    .line 774
    .end local v9    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_88
    return-void
.end method

.method private static generateDeepCrashExceptionMode(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 12
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v0, "description":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 788
    .local v5, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 789
    .local v1, "done":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 790
    .local v4, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .line 792
    .local v6, "stackTraceLength":I
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 793
    :try_start_f
    sget v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 794
    .local v2, "maxStackDepth":I
    monitor-exit v8
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_54

    .line 796
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 797
    const-string v7, "GaGtmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateDeepCrashExceptionMode hash:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_30
    if-eqz v4, :cond_33

    .line 803
    array-length v6, v4

    .line 807
    :cond_33
    const-string v7, "deepCrash H:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :goto_3c
    if-nez v1, :cond_59

    if-ge v5, v2, :cond_59

    if-ge v5, v6, :cond_59

    .line 811
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v3, v7, v5

    .line 813
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_57

    .line 814
    invoke-static {v4, v5}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 815
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 794
    .end local v2    # "maxStackDepth":I
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_54
    move-exception v7

    :try_start_55
    monitor-exit v8
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v7

    .line 818
    .restart local v2    # "maxStackDepth":I
    .restart local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_57
    const/4 v1, 0x1

    goto :goto_3c

    .line 822
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_59
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 823
    const-string v7, "GaGtmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deep exception description:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_7b
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushDeepException(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method private static generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 365
    const-string v1, "GaGtmHelper"

    const-string v2, "generateNormalCrash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "description":Ljava/lang/StringBuilder;
    const-string v1, "H:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, " T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 382
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 383
    const-string v1, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaughtException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v1, "GaGtmHelper"

    const-string v2, "about to push exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_60
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 388
    const-string v1, "GaGtmHelper"

    const-string v2, "done pushing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_78
    return-void
.end method

.method private static getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 12
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 630
    .local v4, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .line 631
    .local v6, "stackTraceLength":I
    const/4 v5, 0x0

    .line 632
    .local v5, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 635
    .local v1, "done":Z
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 636
    :try_start_f
    sget-object v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_6d

    .line 640
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 644
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_29

    .line 645
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    :cond_29
    if-eqz v4, :cond_2c

    .line 651
    array-length v6, v4

    .line 654
    :cond_2c
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :goto_33
    if-nez v1, :cond_72

    const/16 v7, 0x14

    if-ge v5, v7, :cond_72

    if-ge v5, v6, :cond_72

    .line 659
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v3, v7, v5

    .line 661
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_70

    .line 663
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 668
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 637
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :catchall_6d
    move-exception v7

    :try_start_6e
    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v7

    .line 671
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_70
    const/4 v1, 0x1

    goto :goto_33

    .line 675
    .end local v3    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_72
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 676
    const-string v7, "GaGtmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stackTraceHashString: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 8
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 597
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "hashString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 600
    .local v0, "hash":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 601
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hashString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_26
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->intToByteArray(I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "retval":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 613
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hashString base64:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_68
    return-object v2
.end method

.method private static intToByteArray(I)[B
    .registers 4
    .param p0, "integer"    # I

    .prologue
    .line 688
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 689
    .local v0, "ret":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 690
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 691
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 692
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 693
    return-object v0
.end method

.method private static isDeepCrash(Ljava/lang/String;)Z
    .registers 6
    .param p0, "crashHash"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 581
    :try_start_3
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 582
    .local v0, "found":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 583
    const-string v1, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDeepCrash for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_35
    monitor-exit v2

    return v0

    .line 586
    .end local v0    # "found":Z
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private static packageNameIsEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 562
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 564
    :try_start_3
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, "enabledPackageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 566
    const/4 v2, 0x1

    monitor-exit v3

    .line 569
    .end local v0    # "enabledPackageName":Ljava/lang/String;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1d

    .line 570
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private static replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 703
    .local v1, "length":I
    move-object v2, p0

    .line 705
    .local v2, "retval":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_3e

    .line 707
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    :cond_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3b

    .line 714
    move-object v2, p0

    .line 705
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 718
    :cond_3e
    return-object v2
.end method

.method public static setDeepCrashHashList(Ljava/lang/String;)V
    .registers 8
    .param p0, "arrayOfHashes"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 199
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeepCrashHashList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1e
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 203
    :try_start_21
    new-instance v3, Ljava/util/LinkedList;

    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    .line 206
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 207
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_38
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 209
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 212
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_38

    .line 226
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catchall_56
    move-exception v3

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v3

    .line 215
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_59
    :try_start_59
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_38

    .line 220
    .end local v2    # "value":Ljava/lang/String;
    :cond_5d
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_64
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a3

    .line 222
    const-string v5, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepCrashHashList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 226
    .end local v0    # "i":I
    :cond_a3
    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_59 .. :try_end_a4} :catchall_56

    .line 227
    return-void
.end method

.method public static setDeepMode(Ljava/lang/String;)V
    .registers 4
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 167
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeepMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1e
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_21
    const-string v0, "EVENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 173
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 174
    const-string v0, "GaGtmHelper"

    const-string v2, "DEEPMODE_EVENT active"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_36
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EVENT:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 187
    :cond_3a
    :goto_3a
    monitor-exit v1

    .line 188
    return-void

    .line 179
    :cond_3c
    const-string v0, "EXCEPTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 180
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;->DEEPMODE_EXCEPTION:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDeepMode:Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$DeepMode;

    .line 182
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 183
    const-string v0, "GaGtmHelper"

    const-string v2, "DEEPMODE_EXCEPTION active"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 187
    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public static setEnabledPackageNames(Ljava/lang/String;)V
    .registers 8
    .param p0, "arrayOfPackageNames"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 81
    const-string v3, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabledPackageNames "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1e
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_21
    new-instance v3, Ljava/util/LinkedList;

    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 89
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 90
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_38
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 92
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 95
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_38

    .line 109
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catchall_56
    move-exception v3

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v3

    .line 98
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_59
    :try_start_59
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_38

    .line 102
    .end local v2    # "value":Ljava/lang/String;
    :cond_5d
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_64
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a3

    .line 105
    const-string v5, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 109
    .end local v0    # "i":I
    :cond_a3
    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_59 .. :try_end_a4} :catchall_56

    .line 110
    return-void
.end method

.method public static setMaxReportedRows(I)V
    .registers 4
    .param p0, "maxRows"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 119
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1e
    if-nez p0, :cond_40

    .line 124
    const/16 p0, 0xa

    .line 126
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 127
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_40
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_43
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public static setMaxTraversedRows(I)V
    .registers 4
    .param p0, "maxRows"    # I

    .prologue
    .line 141
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 142
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxTraversedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1e
    if-nez p0, :cond_40

    .line 147
    const/16 p0, 0x14

    .line 149
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 150
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_40
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_43
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private static stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;
    .registers 11
    .param p0, "stackTraceElementArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "stackTraceIndex"    # I

    .prologue
    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v1, "retval":Ljava/lang/StringBuilder;
    aget-object v2, p0, p1

    .line 545
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".java"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    return-object v1
.end method
