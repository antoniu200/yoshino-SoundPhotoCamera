.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# instance fields
.field protected mOn:Z

.field protected final mView:Landroid/widget/ImageView;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    .line 17
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 19
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 33
    return-void
.end method

.method public set(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 38
    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .param p1, "resource"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 42
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 28
    return-void
.end method

.method protected update()V
    .registers 3

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    if-eqz v0, :cond_f

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_e
    return-void

    .line 48
    :cond_f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e
.end method
