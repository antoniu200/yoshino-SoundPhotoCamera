.class public Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;
.super Ljava/lang/Object;
.source "PreloadThumbnail.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "PreloadThumbnail"


# instance fields
.field private final mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mIsAnimationEnd:Z

.field private mIsContentCreated:Z

.field private mNextAnimation:Landroid/view/animation/Animation;

.field private mRequestId:I

.field private final mThumbnail:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Landroid/view/View;)V
    .registers 5
    .param p1, "contentsViewController"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_d

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentsViewController should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    if-nez p2, :cond_17

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thumbnail view should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_17
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 37
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public disableClick()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 67
    :cond_1a
    return-void
.end method

.method public enableClick()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 61
    :cond_1a
    return-void
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mRequestId:I

    return v0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    return-object v0
.end method

.method public isAnimationEnd()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 85
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    if-eqz v1, :cond_18

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 94
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mNextAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_17

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mNextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startHideAnimation(Landroid/view/animation/Animation;)V

    .line 98
    :cond_17
    return-void

    .line 87
    :cond_18
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mThumbnail:Landroid/view/View;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 91
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_c
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 110
    return-void
.end method

.method public onContentCreated()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    .line 74
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeEarlyThumbnailView()V

    .line 77
    :cond_c
    return-void
.end method

.method public prepareAnimation()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsContentCreated:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mIsAnimationEnd:Z

    .line 55
    return-void
.end method

.method public setNextAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mNextAnimation:Landroid/view/animation/Animation;

    .line 114
    return-void
.end method

.method public setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->mRequestId:I

    .line 46
    return-void
.end method
