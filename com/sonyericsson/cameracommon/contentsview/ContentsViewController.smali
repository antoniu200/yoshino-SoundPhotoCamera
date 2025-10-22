.class public Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    }
.end annotation


# static fields
.field public static final MAX_CONTENT_NUMBER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ContentsViewController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

.field private mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

.field private mClickable:Z

.field private final mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

.field private mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

.field private mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

.field private mIsCoreCamera:Z

.field private mOrientation:I

.field private mProgressRequestId:I

.field private final mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

.field private mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field private mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

.field private mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageManager"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .param p3, "receiver"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 102
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 103
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {v0, p1, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 107
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->contents_container:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    .line 110
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 113
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .line 115
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    return-object v0
.end method

.method private searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    .registers 5
    .param p1, "requestId"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 357
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 358
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_18

    .line 364
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_17
    return-object v1

    .line 356
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private startAnimationInner(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 320
    if-eqz p1, :cond_a

    .line 321
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    :cond_a
    return-void
.end method


# virtual methods
.method public addContent(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-nez v0, :cond_5

    .line 225
    :goto_4
    return-void

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    goto :goto_4
.end method

.method public addContentOverlayView(ILandroid/view/View;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 468
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_b

    .line 469
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 473
    :cond_b
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 474
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_14

    .line 475
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 477
    :cond_14
    return-void
.end method

.method public addContentOverlayView(ILandroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 491
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_9

    .line 492
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    :cond_9
    return-void
.end method

.method public clearContents()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    .line 434
    return-void
.end method

.method public createClearContentFrame()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 171
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_e

    .line 172
    const-string v3, "ContentsViewController"

    const-string v4, "Activity has already been released at createClearContentFrame."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_d
    return v2

    .line 177
    :cond_e
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_1e

    .line 179
    const-string v3, "ContentsViewController"

    const-string v4, "could not get inflater."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 183
    :cond_1e
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mRequestIdGenerator:Lcom/sonyericsson/cameracommon/utility/IncrementalId;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/IncrementalId;->getNext()I

    move-result v2

    .line 187
    .local v2, "requestId":I
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mIsCoreCamera:Z

    if-eqz v3, :cond_58

    .line 188
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->content_pallet_core_camera:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 192
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_30
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnailClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 194
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    if-nez v3, :cond_3c

    .line 195
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->disableClick()V

    .line 199
    :cond_3c
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4b

    .line 200
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeViewAt(I)V

    .line 203
    :cond_4b
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->addView(Landroid/view/View;)V

    .line 204
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    iget v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    goto :goto_d

    .line 190
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_58
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->content_pallet:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    goto :goto_30
.end method

.method public createContentFrame()I
    .registers 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v0

    .line 157
    .local v0, "requestId":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->showProgress(I)V

    .line 159
    return v0
.end method

.method public disableClick()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->disableClick()V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 555
    return-void
.end method

.method public enableClick()V
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->enableClick()V

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickable:Z

    .line 549
    return-void
.end method

.method public getCurrentContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_15

    .line 663
    :cond_d
    const-string v2, "ContentsViewController"

    const-string v3, "getCurrentContent() mContentContainer has no content."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :goto_14
    return-object v1

    .line 666
    :cond_15
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 667
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-nez v0, :cond_28

    .line 668
    const-string v2, "ContentsViewController"

    const-string v3, "getCurrentContent() pallet(0) is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 671
    :cond_28
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v1

    goto :goto_14
.end method

.method public getCurrentRequestId()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 680
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_15

    .line 681
    :cond_d
    const-string v2, "ContentsViewController"

    const-string v3, "getCurrentRequestId() mContentContainer has no content."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :goto_14
    return v1

    .line 684
    :cond_15
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 685
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-nez v0, :cond_28

    .line 686
    const-string v2, "ContentsViewController"

    const-string v3, "getCurrentRequestId() pallet(0) is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 689
    :cond_28
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getRequestId()I

    move-result v1

    goto :goto_14
.end method

.method public getLocalContentInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public hideThumbnail()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-nez v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->hide()V

    .line 276
    :cond_9
    return-void
.end method

.method public isLoading()Z
    .registers 4

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 377
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    .line 378
    .local v1, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result v2

    if-nez v2, :cond_19

    .line 382
    const/4 v2, 0x1

    .line 385
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :goto_18
    return v2

    .line 376
    .restart local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    .end local v1    # "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public onAvailableSizeUpdated(J)V
    .registers 3
    .param p1, "available"    # J

    .prologue
    .line 457
    return-void
.end method

.method public onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 395
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_c

    .line 396
    const-string v1, "ContentsViewController"

    const-string v2, "Activity has already been released."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_b
    :goto_b
    return-void

    .line 400
    :cond_c
    const/4 v1, -0x1

    if-ne p1, v1, :cond_19

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v1

    if-nez v1, :cond_19

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result p1

    .line 409
    :cond_19
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 410
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_2b

    .line 411
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 413
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_2b

    .line 414
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->onContentCreated()V

    .line 418
    :cond_2b
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mProgressRequestId:I

    if-ne v1, p1, :cond_b

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    if-eqz v1, :cond_b

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;->onContentCreated()V

    goto :goto_b
.end method

.method public onDestinationToSaveChanged()V
    .registers 1

    .prologue
    .line 452
    return-void
.end method

.method public onNoContentLoaded()V
    .registers 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 429
    return-void
.end method

.method public onStorageStateChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;)V
    .registers 3
    .param p1, "storage"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$CameraStorageType;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 441
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->clearContents()V

    .line 444
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_14

    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 447
    :cond_14
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->pause()V

    .line 131
    :cond_9
    return-void
.end method

.method public reconstructLocalCache()V
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->loadLocalCache()V

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeInvalidLocalCache()V

    .line 650
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCacheBackup()V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->release()V

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 142
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 144
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    .line 145
    return-void
.end method

.method public reload()V
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v1, :cond_16

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getReadableStoragePaths()Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->reload(ILjava/util/List;)V

    .line 239
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 240
    return-void
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->removeAllViews()V

    .line 247
    return-void
.end method

.method public removeContentInfo()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeTopContent()V

    .line 629
    return-void
.end method

.method public removeContentOverlayView(ILandroid/view/View;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 505
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 506
    .local v2, "progressBar":Landroid/view/View;
    if-eqz v2, :cond_f

    .line 507
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 508
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    :cond_f
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 511
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_27

    .line 512
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->removeView(Landroid/view/View;)V

    .line 513
    sget v3, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 514
    .local v1, "progress":Landroid/view/View;
    if-eqz v1, :cond_27

    .line 515
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 516
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    .end local v1    # "progress":Landroid/view/View;
    :cond_27
    return-void
.end method

.method public removeEarlyThumbnailView()V
    .registers 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v0, :cond_16

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getRequestId()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->removeContentOverlayView(ILandroid/view/View;)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 570
    :cond_16
    return-void
.end method

.method public removeInvalidLocalCache()V
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeInvalidLocalCache()V

    .line 654
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->requestLayout()V

    .line 87
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->resume()V

    .line 123
    :cond_9
    return-void
.end method

.method public saveLocalCache()V
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentLoader:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->saveLocalCache()V

    .line 658
    return-void
.end method

.method public setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .prologue
    const/4 v1, 0x0

    .line 599
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickThumbnailProgressListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    .line 601
    if-nez p1, :cond_8

    .line 602
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    .line 606
    :goto_7
    return-void

    .line 604
    :cond_8
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    goto :goto_7
.end method

.method public setContentCreatedListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;)V
    .registers 2
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentCreatedListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ContentCreatedListener;

    .line 633
    return-void
.end method

.method public setEarlyThumbnailView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 560
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    .line 561
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setSensorOrientation(I)V

    .line 285
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mOrientation:I

    .line 286
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->cancelRequestHide()V

    .line 256
    return-void
.end method

.method public showProgress(I)V
    .registers 5
    .param p1, "requestId"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mProgressRequestId:I

    .line 530
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->searchPallet(I)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    move-result-object v0

    .line 531
    .local v0, "pallet":Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
    if-eqz v0, :cond_19

    .line 532
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->content_progress_bar:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 533
    .local v1, "progress":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 535
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .end local v1    # "progress":Landroid/view/View;
    :cond_19
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->stopAnimation(Z)V

    .line 310
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimationInner(Landroid/view/animation/Animation;)V

    .line 311
    return-void
.end method

.method public startHideAnimation(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->isAnimationEnd()Z

    move-result v0

    if-nez v0, :cond_12

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->setNextAnimation(Landroid/view/animation/Animation;)V

    .line 300
    :goto_11
    return-void

    .line 298
    :cond_12
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimationInner(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method public startInsertAnimation(I)V
    .registers 3
    .param p1, "requestId"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 574
    return-void
.end method

.method public startInsertAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    if-eqz v1, :cond_25

    .line 580
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->setRequestId(I)V

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->prepareAnimation()V

    .line 584
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mThumbnail:Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/PreloadThumbnail;->getThumbnailView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContentOverlayView(ILandroid/view/View;)V

    .line 587
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->early_thumbnail_insert:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 589
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 592
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->startAnimation(Landroid/view/animation/Animation;)V

    .line 594
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_25
    return-void
.end method

.method public stopAnimation(Z)V
    .registers 5
    .param p1, "notify"    # Z

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 336
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_16

    .line 337
    if-nez p1, :cond_e

    .line 338
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 340
    :cond_e
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 342
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->mContentContainer:Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 344
    :cond_16
    return-void
.end method
