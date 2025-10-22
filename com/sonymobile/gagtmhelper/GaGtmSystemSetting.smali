.class public Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;
.super Ljava/lang/Object;
.source "GaGtmSystemSetting.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSomcGaEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x1

    .line 33
    .local v0, "defaultValueEnabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.google_analytics_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static readAndSetSomcGa(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 48
    .local v0, "gaEnabled":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 49
    const-string v1, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "somc.google_analytics_enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_22
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    if-nez v0, :cond_2d

    const/4 v1, 0x1

    :goto_29
    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 55
    return-void

    .line 54
    :cond_2d
    const/4 v1, 0x0

    goto :goto_29
.end method
