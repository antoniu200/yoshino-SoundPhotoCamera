.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;
.super Landroid/widget/ImageView;
.source "RecordingProgressBar.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingProgressBar"


# instance fields
.field private mProgressBarWidth:I

.field private mProgressIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 32
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 32
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 32
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 45
    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 88
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 90
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    sub-int v1, v3, v4

    .line 91
    .local v1, "left":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 91
    invoke-virtual {v3, v1, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    .end local v1    # "left":I
    :goto_3c
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    return-void

    .line 95
    :cond_42
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    add-int v2, v3, v4

    .line 96
    .local v2, "right":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3c
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_23

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_recording_progress_indicator_icn:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    .line 58
    :goto_16
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_constraint_progress_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 60
    return-void

    .line 54
    :cond_23
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_recording_progress_indicator_icn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_16
.end method

.method public setProgress(II)V
    .registers 9
    .param p1, "progress"    # I
    .param p2, "limit"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "ratio":I
    if-eqz p2, :cond_15

    .line 72
    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressBarWidth:I

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 75
    :cond_15
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->mProgressRatio:I

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->invalidate()V

    .line 77
    return-void
.end method
