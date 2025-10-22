.class final Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil$1;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->loadGtmContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    .line 123
    if-eqz p1, :cond_2

    .line 128
    :cond_2
    return-void
.end method
