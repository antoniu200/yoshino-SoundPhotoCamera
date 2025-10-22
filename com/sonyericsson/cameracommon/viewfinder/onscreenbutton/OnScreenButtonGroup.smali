.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
.super Landroid/widget/RelativeLayout;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    }
.end annotation


# static fields
.field private static final DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field public static final TAG:Ljava/lang/String; = "OnScreenButtonGroup"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private mContainer:Landroid/view/View;

.field private mIsRotatable:Z

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mOrientation:I

.field private mStaticOrientation:I

.field private mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 522
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mStaticOrientation:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mIsRotatable:Z

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    .line 305
    return-void
.end method

.method private adjustBackground(IIII)V
    .registers 5
    .param p1, "backgroundTop"    # I
    .param p2, "containerTop"    # I
    .param p3, "containerButtonSpace"    # I
    .param p4, "containerGravity"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundMarginTop(I)V

    .line 354
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setContainerMarginTop(I)V

    .line 355
    invoke-direct {p0, p4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundAndContainerGravity(I)V

    .line 356
    invoke-direct {p0, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSubButtonMarginTop(I)V

    .line 357
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->requestLayout()V

    .line 358
    return-void
.end method

.method private restartAnimation(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 410
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 411
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 413
    :cond_9
    return-void
.end method

.method private setBackgroundAndContainerGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 380
    return-void
.end method

.method private setBackgroundMarginTop(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 364
    if-nez p1, :cond_13

    const/4 v0, 0x0

    .line 365
    .local v0, "topMargin":I
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 367
    return-void

    .line 364
    .end local v0    # "topMargin":I
    :cond_13
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3
.end method

.method private setContainerMarginTop(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 370
    if-nez p1, :cond_13

    const/4 v0, 0x0

    .line 371
    .local v0, "topMargin":I
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 373
    return-void

    .line 370
    .end local v0    # "topMargin":I
    :cond_13
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3
.end method

.method private setSubButtonMarginTop(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 383
    if-nez p1, :cond_13

    const/4 v0, 0x0

    .line 384
    .local v0, "topMargin":I
    :goto_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->requestLayout()V

    .line 386
    return-void

    .line 383
    .end local v0    # "topMargin":I
    :cond_13
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3
.end method

.method private setupBackgroundDual()V
    .registers 5

    .prologue
    .line 332
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 337
    return-void
.end method

.method private setupBackgroundPhotoAndSwitch()V
    .registers 5

    .prologue
    .line 341
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 346
    return-void
.end method

.method private setupBackgroundSingle()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 323
    const/16 v0, 0x11

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 328
    return-void
.end method

.method private stopAnimation(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 425
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 427
    :cond_9
    return-void
.end method

.method private updateBackground()V
    .registers 4

    .prologue
    .line 513
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 515
    .local v0, "res":I
    :goto_9
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 516
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    :cond_15
    return-void

    .line 513
    .end local v0    # "res":I
    :cond_16
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    goto :goto_9
.end method


# virtual methods
.method public changeRotatability(IZ)V
    .registers 3
    .param p1, "orientation"    # I
    .param p2, "isRotatable"    # Z

    .prologue
    .line 530
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mIsRotatable:Z

    .line 531
    if-nez p2, :cond_6

    .line 532
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mStaticOrientation:I

    .line 534
    :cond_6
    return-void
.end method

.method public clearTouched()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 391
    return-void
.end method

.method public isTouched()Z
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 311
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->main_button:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 314
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sub_button:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 317
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    .line 318
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    .line 319
    return-void
.end method

.method public restartAnimation()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 407
    return-void
.end method

.method public setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .registers 3
    .param p1, "resource"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .prologue
    .line 504
    if-nez p1, :cond_a

    .line 505
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 509
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 510
    return-void

    .line 507
    :cond_a
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    goto :goto_6
.end method

.method public setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V
    .registers 4
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .registers 4
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->mainButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 433
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 435
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_1f

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 440
    :goto_1e
    return-void

    .line 438
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_1e
.end method

.method public setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V
    .registers 5
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "orientation"    # I
    .param p3, "isRotatable"    # Z

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    .line 448
    return-void
.end method

.method public setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .registers 6
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 453
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_2f

    .line 454
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 455
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundSingle()V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 457
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    :goto_2e
    return-void

    .line 461
    :cond_2f
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_54

    .line 462
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 463
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e

    .line 469
    :cond_54
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-eq p1, v0, :cond_5c

    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_85

    .line 470
    :cond_5c
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 471
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 473
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e

    .line 479
    :cond_85
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 480
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundDual()V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2e
.end method

.method public setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V
    .registers 5
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "orientation"    # I
    .param p3, "isRotatable"    # Z

    .prologue
    .line 492
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    .line 494
    return-void
.end method

.method public setUiOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 500
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 501
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->stopAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->stopAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 421
    return-void
.end method
