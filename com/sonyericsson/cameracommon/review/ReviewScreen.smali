.class public abstract Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.super Landroid/widget/FrameLayout;
.source "ReviewScreen.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ReviewScreen"


# instance fields
.field protected mAutoReviewRight:Landroid/widget/LinearLayout;

.field protected mButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mDisplayOrientation:I

.field protected mHasMpo:Z

.field protected mMime:Ljava/lang/String;

.field private mOrientedPictureSize:Landroid/graphics/Rect;

.field protected mPictureImage:Landroid/widget/ImageView;

.field protected mUri:Landroid/net/Uri;

.field protected mViewButtonLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 69
    return-void
.end method

.method private rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 418
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 419
    .local v4, "h":I
    move-object v0, p1

    .line 420
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_25

    .line 421
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 422
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float/2addr v6, v9

    int-to-float v8, v4

    div-float/2addr v8, v9

    invoke-virtual {v5, v2, v6, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move v2, v1

    move v6, v1

    .line 423
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 424
    .local v7, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 425
    move-object v0, v7

    .line 427
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "temp":Landroid/graphics/Bitmap;
    :cond_25
    return-object v0
.end method

.method private setVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 319
    if-eqz p1, :cond_19

    .line 320
    const/4 v0, 0x0

    .line 325
    .local v0, "visibility":I
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisibility(I)V

    .line 327
    const-string v1, "image/jpeg"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_1b

    .line 328
    :cond_14
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisiblePlayIcon(Z)V

    .line 332
    :goto_18
    return-void

    .line 322
    .end local v0    # "visibility":I
    :cond_19
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_3

    .line 330
    :cond_1b
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisiblePlayIcon(Z)V

    goto :goto_18
.end method

.method private setVisiblePlayIcon(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 291
    if-eqz p1, :cond_10

    .line 292
    const/4 v0, 0x0

    .line 297
    .local v0, "visibility":I
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setVisibility(I)V

    .line 298
    return-void

    .line 294
    .end local v0    # "visibility":I
    :cond_10
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_3
.end method


# virtual methods
.method abstract backToViewFinder()V
.end method

.method protected cancelDialog()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 384
    :cond_c
    return-void
.end method

.method public clearScreen()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    return-void
.end method

.method abstract getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
.end method

.method abstract getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hideScreen()V
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 282
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :cond_c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 77
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_picture_image:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    .line 83
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_play:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 84
    .local v2, "playIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_view:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 88
    .local v4, "viewIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 92
    .local v1, "editIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_share:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 96
    .local v3, "shareIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_delete:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 100
    .local v0, "deleteIcon":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_view_layout:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mViewButtonLayout:Landroid/view/View;

    .line 105
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->auto_review_right:I

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    .line 106
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v6

    .line 106
    invoke-virtual {v5, v7, v7, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    return-void
.end method

.method protected setCurrentDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .registers 2
    .param p1, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->cancelDialog()V

    .line 389
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 390
    return-void
.end method

.method public setOrientation(I)V
    .registers 6
    .param p1, "orientation"    # I

    .prologue
    .line 338
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 340
    .local v1, "degree":F
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mButtonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 341
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setRotation(F)V

    goto :goto_a

    .line 343
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_1a
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 399
    return-void
.end method

.method public setUri(Landroid/net/Uri;Z)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "hasMpo"    # Z

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 403
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 404
    return-void
.end method

.method public setVisibleViewIcon(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 305
    if-eqz p1, :cond_10

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "visibility":I
    const/4 v1, 0x4

    .line 312
    .local v1, "weightSum":I
    :goto_4
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mViewButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 314
    return-void

    .line 309
    .end local v0    # "visibility":I
    .end local v1    # "weightSum":I
    :cond_10
    const/16 v0, 0x8

    .line 310
    .restart local v0    # "visibility":I
    const/4 v1, 0x3

    .restart local v1    # "weightSum":I
    goto :goto_4
.end method

.method public setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Z
    .registers 25
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageData"    # [B
    .param p4, "videoPath"    # Ljava/lang/String;
    .param p5, "mime"    # Ljava/lang/String;
    .param p6, "pictureRect"    # Landroid/graphics/Rect;
    .param p7, "reviewOrientation"    # I
    .param p8, "pictureOrientation"    # I
    .param p9, "isFront"    # Z
    .param p10, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    .line 123
    sget-object v9, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-object/from16 v0, p10

    if-ne v0, v9, :cond_bf

    .line 124
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 137
    :goto_15
    const/16 v9, 0x5a

    move/from16 v0, p7

    if-eq v0, v9, :cond_21

    const/16 v9, 0x10e

    move/from16 v0, p7

    if-ne v0, v9, :cond_d7

    :cond_21
    iget v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d7

    .line 139
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_d7

    .line 141
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 142
    .local v2, "aspectRatio":F
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    .line 143
    .local v8, "viewfinderRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 144
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v2

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .end local v8    # "viewfinderRect":Landroid/graphics/Rect;
    .local v7, "surfaceRect":Landroid/graphics/Rect;
    :goto_52
    if-eqz p7, :cond_5a

    const/16 v9, 0xb4

    move/from16 v0, p7

    if-ne v0, v9, :cond_eb

    .line 151
    :cond_5a
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 155
    :goto_61
    iget v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mDisplayOrientation:I

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->updatePictureImageLayout(ILandroid/graphics/Rect;)V

    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "rotation":I
    const-string v9, "video/mp4"

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7d

    const-string v9, "video/3gpp"

    .line 160
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 161
    :cond_7d
    if-eqz p2, :cond_fe

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 167
    .local v4, "orgImage":Landroid/graphics/Bitmap;
    :goto_89
    if-eqz p9, :cond_10c

    .line 168
    sparse-switch p8, :sswitch_data_1a0

    .line 183
    const/4 v6, 0x0

    .line 208
    :goto_8f
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget v10, Lcom/sonyericsson/cameracommon/R$drawable;->cam_video_preview_edit_icn:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :goto_9c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 243
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v9, v0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    .line 245
    .local v3, "isEditSupported":Z
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v3, :cond_176

    const/4 v9, 0x0

    :goto_b1
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 248
    if-nez v4, :cond_179

    .line 249
    const-string v9, "ReviewScreen"

    const-string v10, "Cannot create the image."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v9, 0x0

    .line 269
    :goto_be
    return v9

    .line 127
    .end local v2    # "aspectRatio":F
    .end local v3    # "isEditSupported":Z
    .end local v4    # "orgImage":Landroid/graphics/Bitmap;
    .end local v6    # "rotation":I
    .end local v7    # "surfaceRect":Landroid/graphics/Rect;
    :cond_bf
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSystemBarMargin(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    .line 127
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_15

    .line 146
    :cond_d7
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 147
    .restart local v2    # "aspectRatio":F
    move-object/from16 v0, p10

    invoke-static {p1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v7

    .restart local v7    # "surfaceRect":Landroid/graphics/Rect;
    goto/16 :goto_52

    .line 153
    :cond_eb
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    goto/16 :goto_61

    .line 164
    .restart local v6    # "rotation":I
    :cond_fe
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "orgImage":Landroid/graphics/Bitmap;
    goto :goto_89

    .line 171
    :sswitch_103
    const/16 v6, 0x5a

    .line 172
    goto :goto_8f

    .line 175
    :sswitch_106
    const/16 v6, 0xb4

    .line 176
    goto :goto_8f

    .line 179
    :sswitch_109
    const/16 v6, 0x10e

    .line 180
    goto :goto_8f

    .line 187
    :cond_10c
    sparse-switch p8, :sswitch_data_1ae

    .line 202
    const/4 v6, 0x0

    goto/16 :goto_8f

    .line 190
    :sswitch_112
    const/16 v6, -0x5a

    .line 191
    goto/16 :goto_8f

    .line 194
    :sswitch_116
    const/16 v6, -0xb4

    .line 195
    goto/16 :goto_8f

    .line 198
    :sswitch_11a
    const/16 v6, -0x10e

    .line 199
    goto/16 :goto_8f

    .line 212
    .end local v4    # "orgImage":Landroid/graphics/Bitmap;
    :cond_11e
    if-eqz p2, :cond_152

    .line 213
    new-instance v9, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-direct {v9, v10, v0, v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 213
    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 220
    .restart local v4    # "orgImage":Landroid/graphics/Bitmap;
    :goto_13d
    if-eqz p9, :cond_143

    .line 221
    sparse-switch p8, :sswitch_data_1bc

    .line 232
    const/4 v6, 0x0

    .line 238
    :cond_143
    :goto_143
    sget v9, Lcom/sonyericsson/cameracommon/R$id;->auto_review_edit:I

    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget v10, Lcom/sonyericsson/cameracommon/R$drawable;->cam_photo_preview_edit_icn:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9c

    .line 216
    .end local v4    # "orgImage":Landroid/graphics/Bitmap;
    :cond_152
    new-instance v9, Lcom/sonyericsson/cameracommon/utility/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-direct {v9, v10, v0, v1}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;-><init>(Landroid/content/Context;[BI)V

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mOrientedPictureSize:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 216
    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/cameracommon/utility/ImageLoader;->load(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "orgImage":Landroid/graphics/Bitmap;
    goto :goto_13d

    .line 224
    :sswitch_170
    const/16 v6, 0xb4

    .line 225
    goto :goto_143

    .line 228
    :sswitch_173
    const/16 v6, 0xb4

    .line 229
    goto :goto_143

    .line 245
    .restart local v3    # "isEditSupported":Z
    :cond_176
    const/4 v9, 0x4

    goto/16 :goto_b1

    .line 253
    :cond_179
    if-eqz v6, :cond_180

    .line 254
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 255
    .local v5, "rotateImage":Landroid/graphics/Bitmap;
    move-object v4, v5

    .line 258
    .end local v5    # "rotateImage":Landroid/graphics/Bitmap;
    :cond_180
    if-nez v4, :cond_18c

    .line 259
    const-string v9, "ReviewScreen"

    const-string v10, "Cannot rotate the image."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v9, 0x0

    goto/16 :goto_be

    .line 263
    :cond_18c
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mUri:Landroid/net/Uri;

    .line 267
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mHasMpo:Z

    .line 268
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mMime:Ljava/lang/String;

    .line 269
    const/4 v9, 0x1

    goto/16 :goto_be

    .line 168
    nop

    :sswitch_data_1a0
    .sparse-switch
        0x5a -> :sswitch_103
        0xb4 -> :sswitch_106
        0x10e -> :sswitch_109
    .end sparse-switch

    .line 187
    :sswitch_data_1ae
    .sparse-switch
        0x5a -> :sswitch_112
        0xb4 -> :sswitch_116
        0x10e -> :sswitch_11a
    .end sparse-switch

    .line 221
    :sswitch_data_1bc
    .sparse-switch
        0x5a -> :sswitch_170
        0x10e -> :sswitch_173
    .end sparse-switch
.end method

.method public showRightIcons(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "bool"    # Ljava/lang/Boolean;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 408
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    :cond_10
    :goto_10
    return-void

    .line 411
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mAutoReviewRight:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10
.end method

.method public showScreen()V
    .registers 2

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->setVisible(Z)V

    .line 276
    return-void
.end method

.method public updatePictureImageLayout(ILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayOrientation"    # I
    .param p2, "pictureSize"    # Landroid/graphics/Rect;

    .prologue
    const/16 v3, 0x11

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    .line 347
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 349
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 350
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 351
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 353
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 368
    :goto_25
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->mPictureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    return-void

    .line 355
    :cond_2b
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_25

    .line 358
    :cond_2e
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 360
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 362
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_25

    .line 364
    :cond_47
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_25
.end method
