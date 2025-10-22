.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi16Impl"
.end annotation


# instance fields
.field protected final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 2
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 257
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .registers 5
    .param p1, "otherOptions"    # Landroid/support/v4/app/ActivityOptionsCompat;

    .prologue
    .line 266
    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    if-eqz v1, :cond_e

    move-object v0, p1

    .line 267
    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    .line 269
    .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 271
    .end local v0    # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
    :cond_e
    return-void
.end method
