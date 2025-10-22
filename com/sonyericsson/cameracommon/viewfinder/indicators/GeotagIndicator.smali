.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "GeotagIndicator.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 17
    return-void
.end method

.method private getAcquiredGpsIcon()I
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquired_gps_vzw_icn:I

    .line 48
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquired_gps_icn:I

    goto :goto_8
.end method

.method private getAcquiringGpsResource()I
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquiring_gps_vzw_anim:I

    .line 40
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_acquiring_gps_anim:I

    goto :goto_8
.end method


# virtual methods
.method public isAcquired(Z)V
    .registers 5
    .param p1, "acquired"    # Z

    .prologue
    .line 20
    if-eqz p1, :cond_c

    .line 21
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiredGpsIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    :goto_b
    return-void

    .line 23
    :cond_c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->getAcquiringGpsResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 25
    .local v0, "geotagAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_b
.end method

.method public release()V
    .registers 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_15

    .line 31
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 32
    .local v0, "geotagAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 34
    .end local v0    # "geotagAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_15
    return-void
.end method
