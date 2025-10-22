.class public Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
.super Landroid/database/ContentObserver;
.source "GaGtmSubscriber.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 42
    if-nez p1, :cond_11

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_11
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 59
    if-nez p1, :cond_10

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_10
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 107
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    const-string v0, "GaGtmHelper"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public subscribeGaSettingChanges()V
    .registers 4

    .prologue
    .line 74
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    const-string v0, "GaGtmHelper"

    const-string v1, "subscribeGaSettingChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 81
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-nez v0, :cond_25

    .line 82
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 85
    :cond_25
    return-void
.end method

.method public unsubscribeGaSettingChanges()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    const-string v0, "GaGtmHelper"

    const-string v1, "unsubscribeGaSettingChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_d
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-eqz v0, :cond_1d

    .line 98
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 101
    :cond_1d
    return-void
.end method
