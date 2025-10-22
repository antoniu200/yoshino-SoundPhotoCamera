.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
.super Ljava/lang/Object;
.source "CommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonSettings"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mCachedFirmwareVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mGeotagPseudoOff:Z

.field private mIsBuildFingerprintModified:Z

.field private final mIsFixed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSelectabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsContentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "authority"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mGeotagPseudoOff:Z

    .line 75
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsBuildFingerprintModified:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsFixed:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mAuthority:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "commonsettings"

    .line 96
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettingsContentUri:Landroid/net/Uri;

    .line 99
    return-void
.end method

.method private createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettingsContentUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "name"

    .line 543
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    .line 544
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private getCommonSettingsResolver(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "value"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isFirmwareVersionUpdated()Z
    .registers 3

    .prologue
    .line 566
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 567
    .local v0, "currentVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 568
    const/4 v1, 0x0

    .line 572
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private isUnSelectableSetting(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .registers 4
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 499
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 510
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 507
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 499
    nop

    :pswitch_data_10
    .packed-switch 0x8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private joinStoreTask()V
    .registers 4

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_c

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_c} :catch_16

    .line 370
    :cond_c
    :goto_c
    return-void

    .line 362
    :catch_d
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CommonSettings"

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 364
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_16
    move-exception v0

    .line 365
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "CommonSettings"

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private loadUnSelectableSettings()V
    .registers 7

    .prologue
    .line 473
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_30

    aget-object v0, v2, v1

    .line 474
    .local v0, "eachKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_32

    .line 473
    :goto_15
    :pswitch_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 476
    :pswitch_18
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_15

    .line 480
    :pswitch_1e
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/SoftwareLicenses;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/SoftwareLicenses;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_15

    .line 484
    :pswitch_24
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_15

    .line 488
    :pswitch_2a
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_15

    .line 496
    .end local v0    # "eachKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_30
    return-void

    .line 474
    nop

    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_15
        :pswitch_15
        :pswitch_2a
    .end packed-switch
.end method

.method private declared-synchronized putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 4
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 522
    monitor-enter p0

    if-nez p1, :cond_5

    .line 528
    :goto_3
    monitor-exit p0

    return-void

    .line 527
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_3

    .line 522
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveFirmwareVersion()V
    .registers 6

    .prologue
    .line 549
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "android.os.Build.FINGERPRINT"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_21

    .line 559
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 561
    :cond_21
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mAuthority:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;-><init>(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    .line 563
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .registers 6
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_f

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 112
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_59

    .line 222
    :cond_d
    :goto_d
    monitor-exit p0

    return-object v0

    .line 114
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 116
    .local v0, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    if-nez v0, :cond_1f

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_1f

    .line 118
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    .line 120
    :cond_1f
    if-nez v0, :cond_27

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_27

    .line 122
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    .line 124
    :cond_27
    if-nez v0, :cond_2f

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_REVIEW_FOR_CAMERA_UI:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_2f

    .line 126
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;->FRONT_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReviewForCameraUi;

    .line 128
    :cond_2f
    if-nez v0, :cond_38

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FLASH:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_38

    .line 130
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->AUTO:Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    goto :goto_d

    .line 133
    :cond_38
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_42

    .line 135
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mGeotagPseudoOff:Z

    if-eqz v1, :cond_42

    .line 137
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 142
    :cond_42
    if-nez v0, :cond_4f

    .line 143
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c0

    .line 219
    :cond_4f
    :goto_4f
    if-nez v0, :cond_d

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CommonSettingProvider is not loaded yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_59
    .catchall {:try_start_f .. :try_end_59} :catchall_59

    .line 111
    .end local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1

    .line 145
    .restart local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :pswitch_5c
    :try_start_5c
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    move-result-object v0

    .line 146
    goto :goto_4f

    .line 149
    :pswitch_61
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v0

    .line 150
    goto :goto_4f

    .line 153
    :pswitch_66
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v0

    .line 154
    goto :goto_4f

    .line 159
    :pswitch_6b
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_7e

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsBuildFingerprintModified:Z

    if-eqz v1, :cond_7e

    .line 161
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    goto :goto_4f

    .line 163
    :cond_7e
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCaptureForCameraUi;

    move-result-object v0

    .line 165
    goto :goto_4f

    .line 168
    :pswitch_83
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    move-result-object v0

    .line 169
    goto :goto_4f

    .line 172
    :pswitch_88
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    move-result-object v0

    .line 173
    goto :goto_4f

    .line 176
    :pswitch_8d
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    move-result-object v0

    .line 177
    goto :goto_4f

    .line 180
    :pswitch_92
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    move-result-object v0

    .line 181
    goto :goto_4f

    .line 184
    :pswitch_97
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SoftwareLicenses;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/SoftwareLicenses;

    move-result-object v0

    .line 185
    goto :goto_4f

    .line 188
    :pswitch_9c
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;

    move-result-object v0

    .line 189
    goto :goto_4f

    .line 192
    :pswitch_a1
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    move-result-object v0

    .line 193
    goto :goto_4f

    .line 196
    :pswitch_a6
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/GridLine;

    move-result-object v0

    .line 197
    goto :goto_4f

    .line 200
    :pswitch_ab
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    move-result-object v0

    .line 201
    goto :goto_4f

    .line 204
    :pswitch_b0
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    move-result-object v0

    .line 205
    goto :goto_4f

    .line 208
    :pswitch_b5
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/Flash;

    move-result-object v0

    .line 209
    goto :goto_4f

    .line 212
    :pswitch_ba
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;->getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/PhotoLight;
    :try_end_bd
    .catchall {:try_start_5c .. :try_end_bd} :catchall_59

    move-result-object v0

    .line 213
    goto :goto_4f

    .line 143
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_61
        :pswitch_66
        :pswitch_6b
        :pswitch_83
        :pswitch_88
        :pswitch_8d
        :pswitch_92
        :pswitch_97
        :pswitch_9c
        :pswitch_a1
        :pswitch_a6
        :pswitch_ab
        :pswitch_b0
        :pswitch_b5
        :pswitch_ba
    .end packed-switch
.end method

.method public declared-synchronized isFixed(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .registers 4
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsFixed:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    .line 275
    .local v0, "fixed":Ljava/lang/Boolean;
    if-nez v0, :cond_e

    .line 276
    const/4 v1, 0x0

    .line 278
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    move-result v1

    goto :goto_c

    .line 274
    .end local v0    # "fixed":Ljava/lang/Boolean;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .registers 4
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 258
    .local v0, "selectability":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    :goto_e
    monitor-exit p0

    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_e

    .line 257
    .end local v0    # "selectability":Ljava/lang/Boolean;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized load()V
    .registers 9

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 417
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettingsContentUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->getCommonSettingsResolver(Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_57

    move-result-object v0

    .line 419
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_73

    .line 422
    :try_start_e
    const-string v5, "CommonSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load ok. cursor count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 424
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "key":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromKey(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    .line 428
    .local v2, "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    if-eqz v2, :cond_47

    .line 429
    invoke-static {v2, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    .line 431
    .local v3, "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 433
    .end local v3    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_47
    const-string v5, "android.os.Build.FINGERPRINT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 434
    iput-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_52

    goto :goto_2a

    .line 439
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_52
    move-exception v5

    :try_start_53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 414
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_57
    move-exception v5

    monitor-exit p0

    throw v5

    .line 439
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_5a
    :try_start_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 447
    :goto_5d
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->loadUnSelectableSettings()V

    .line 449
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isFirmwareVersionUpdated()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 452
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 462
    :goto_6e
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->saveFirmwareVersion()V
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_57

    .line 464
    :cond_71
    monitor-exit p0

    return-void

    .line 443
    :cond_73
    :try_start_73
    const-string v5, "CommonSettings"

    const-string v6, "load failed. getting cursor is null."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 459
    :cond_7b
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsBuildFingerprintModified:Z
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_57

    goto :goto_6e
.end method

.method public declared-synchronized set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 4
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 235
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne v0, v1, :cond_11

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mGeotagPseudoOff:Z

    .line 241
    :cond_11
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 242
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFixed(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V
    .registers 5
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "fixed"    # Z

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsFixed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeoTagPseudoOff(Z)V
    .registers 3
    .param p1, "pseudo"    # Z

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mGeotagPseudoOff:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 254
    monitor-exit p0

    return-void

    .line 253
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V
    .registers 5
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "selectable"    # Z

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store()V
    .registers 9

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    .local v0, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 307
    .local v1, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 310
    .local v3, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isUnSelectableSetting(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 315
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_10

    .line 303
    .end local v0    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    .end local v1    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v2    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v3    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :catchall_3e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 319
    .restart local v2    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 322
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_4e

    .line 323
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 325
    :cond_4e
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mAuthority:Ljava/lang/String;

    invoke-direct {v5, v6, v2, v7}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;-><init>(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3e

    .line 330
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized suspend()V
    .registers 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_10

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 347
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mIsBuildFingerprintModified:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 351
    monitor-exit p0

    return-void

    .line 339
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
