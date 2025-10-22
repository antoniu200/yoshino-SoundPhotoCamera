.class public Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
.super Landroid/widget/RelativeLayout;
.source "TaggedRectangle.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# static fields
.field public static final FACEDETECT_CAPTURE:I = 0x1

.field public static final FACERECOGNITION_REVIEW:I = 0x2

.field private static final GAUGE_DIR_BOTTOM:I = 0x2

.field private static final GAUGE_DIR_LEFT:I = 0x0

.field private static final GAUGE_DIR_TOP:I = 0x1

.field public static final OBJECT_TRACKING:I = 0x3

.field private static final RECT_SIZE_LIFE_TIME_MILLIS:I = 0x12c

.field public static final SMILE_DETECTION_CAPTURE:I = 0x0

.field private static final SMILE_GAUGE_NUMBER:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TaggedRectangle"


# instance fields
.field private mCurrentType:I

.field private mFaceUuid:Ljava/lang/String;

.field private mIsAbleToTouch:Z

.field private mIsLockedBySelfTimer:Z

.field private mIsUpdate:Z

.field private mLastSizeUpdatedTimestamp:J

.field private mRectImageHeight:I

.field private mRectImageWidth:I

.field private mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

.field private mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 89
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    .line 134
    return-void
.end method

.method private isRectSizeAlreadyInvalid()Z
    .registers 7

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    sub-long v0, v2, v4

    .line 227
    .local v0, "lifeTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v2, v0

    if-gez v2, :cond_10

    const/4 v2, 0x1

    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private isSmileGaugeVisible()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 468
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v1

    .line 469
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 470
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    move v0, v1

    .line 473
    :cond_22
    return v0
.end method

.method private prepare()V
    .registers 4

    .prologue
    .line 149
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x0

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_left:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x1

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_top:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x2

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_bottom:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 154
    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    .line 519
    return-void
.end method


# virtual methods
.method public final changeRectangleResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->changeChildBackgroundResource(I)V

    .line 329
    return-void
.end method

.method public clearUpdated()V
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 563
    return-void
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 508
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 509
    .local v0, "tag":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 510
    return-object v0
.end method

.method public getRectImageHeight()I
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    return v0
.end method

.method public getRectImageWidth()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    return v0
.end method

.method public getRectangleHeight()I
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRectangleLeft()I
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRectangleTop()I
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getTop()I

    move-result v0

    return v0
.end method

.method public getRectangleWidth()I
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 570
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isSmileGaugeVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 571
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 573
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_25

    .line 577
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 578
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_22

    .line 579
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 580
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    :cond_22
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 585
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_25
    return-void
.end method

.method public isUpdate()Z
    .registers 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return v0
.end method

.method public moveRectTopLeft(II)V
    .registers 5
    .param p1, "dX"    # I
    .param p2, "dY"    # I

    .prologue
    .line 319
    neg-int v0, p1

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollBy(II)V

    .line 320
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 344
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 346
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 347
    return-void
.end method

.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz v0, :cond_5

    .line 401
    :cond_4
    :goto_4
    return-void

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz v0, :cond_5

    .line 365
    :cond_4
    :goto_4
    return-void

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public onRectTouchLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz v0, :cond_5

    .line 595
    :cond_4
    :goto_4
    return-void

    .line 592
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_4

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchLongPress(Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    if-eqz v0, :cond_5

    .line 383
    :cond_4
    :goto_4
    return-void

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method public prepare(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare()V

    .line 167
    packed-switch p1, :pswitch_data_16

    .line 180
    :goto_8
    :pswitch_8
    return-void

    .line 172
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setVisibility(I)V

    goto :goto_8

    .line 175
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    goto :goto_8

    .line 167
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setIsAbleToTouch(Z)V
    .registers 2
    .param p1, "isAble"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 599
    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .registers 2
    .param p1, "isLocked"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsLockedBySelfTimer:Z

    .line 603
    return-void
.end method

.method public setRawPosition(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 191
    return-void
.end method

.method public setRectCenter(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 283
    .local v1, "offsetY":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    packed-switch v2, :pswitch_data_2c

    .line 302
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 303
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 307
    :goto_17
    neg-int v2, p1

    add-int/2addr v2, v0

    neg-int v3, p2

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollTo(II)V

    .line 308
    return-void

    .line 292
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 294
    goto :goto_17

    .line 283
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public setRectImageSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 231
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 232
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 233
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageWidth:I

    .line 234
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectImageHeight:I

    .line 235
    if-eqz v1, :cond_1e

    .line 236
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 241
    :cond_1e
    return-void
.end method

.method public setRectOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 550
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    .line 555
    :goto_a
    return-void

    .line 553
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    goto :goto_a
.end method

.method public setRectSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isRectSizeAlreadyInvalid()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1d

    .line 210
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 218
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    return-void
.end method

.method public setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 339
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 268
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    return-void
.end method

.method public setSize(IIZ)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "alignParentLeft"    # Z

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_14

    .line 255
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    :goto_c
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 260
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 261
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void

    .line 257
    :cond_14
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c
.end method

.method public setSmileGaugeVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 485
    return-void
.end method

.method public setSmileGaugesPosition(IIIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 500
    return-void
.end method

.method public final setSmileLevel(I)V
    .registers 6
    .param p1, "dimenId"    # I

    .prologue
    .line 440
    if-gez p1, :cond_3

    .line 447
    :cond_2
    return-void

    .line 444
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 445
    .local v0, "gauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileLevel(I)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public setSmileScore(I)V
    .registers 4
    .param p1, "score"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 459
    return-void
.end method

.method public setUpdated()V
    .registers 2

    .prologue
    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 559
    return-void
.end method

.method public startRectangleAnimation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 538
    .line 539
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->tagged_rectangle_show:I

    .line 538
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 542
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 543
    return-void
.end method

.method public stopAnimation()V
    .registers 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->clearAnimation()V

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 534
    :cond_13
    return-void
.end method

.method public update(Ljava/lang/String;I)V
    .registers 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUuid(Ljava/lang/String;)V

    .line 527
    return-void
.end method
