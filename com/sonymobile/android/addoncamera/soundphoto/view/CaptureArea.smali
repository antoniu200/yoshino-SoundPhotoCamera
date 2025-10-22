.class public Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureArea"


# instance fields
.field private mIsLongPressed:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;

.field private mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 38
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsLongPressed:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 44
    new-instance v1, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mTouchListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "toucharea_margin":I
    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v1, p1, p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 59
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 61
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mTouchListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;)Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    return-object v0
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7
    .param p1, "viewPoint"    # Landroid/graphics/Point;

    .prologue
    .line 100
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 101
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->getLocationOnScreen([I)V

    .line 103
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static isEventContainedInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 129
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 130
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->isEventContainedInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isTouched()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method public onDoubleCanceled()V
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 277
    :cond_4
    :goto_4
    return-void

    .line 272
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 274
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_4
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 239
    return-void
.end method

.method public onDoubleRotated(FF)V
    .registers 3
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 255
    return-void
.end method

.method public onDoubleScaled(FFF)V
    .registers 6
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 243
    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v1, :cond_5

    .line 250
    :goto_4
    return-void

    .line 248
    :cond_5
    sub-float v0, p1, p2

    .line 249
    .local v0, "scaleLength":F
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    goto :goto_4
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point0"    # Landroid/graphics/Point;
    .param p2, "point1"    # Landroid/graphics/Point;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 234
    :cond_4
    :goto_4
    return-void

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    .line 232
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    goto :goto_4
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 300
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsLongPressed:Z

    .line 307
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_1f

    .line 308
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 310
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 311
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 310
    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    .line 313
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method public onOverTripleCanceled()V
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 294
    :cond_4
    :goto_4
    return-void

    .line 289
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 291
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 318
    return-void
.end method

.method public onSingleCanceled()V
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 220
    :cond_4
    :goto_4
    return-void

    .line 215
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 217
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_4
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 175
    :cond_4
    :goto_4
    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 165
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->isTouched()Z

    move-result v0

    if-nez v0, :cond_15

    .line 168
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    goto :goto_4

    .line 172
    :cond_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 173
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved(Landroid/graphics/Point;)V

    goto :goto_4
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_a

    .line 205
    :cond_9
    :goto_9
    return-void

    .line 198
    :cond_a
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 199
    iput-boolean v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsLongPressed:Z

    .line 201
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 203
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    goto :goto_9
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3
    .param p1, "release"    # Landroid/graphics/Point;
    .param p2, "remain"    # Landroid/graphics/Point;

    .prologue
    .line 260
    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_5

    .line 188
    :cond_4
    :goto_4
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    goto :goto_4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v1, :cond_1c

    .line 323
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 325
    .local v0, "curPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 326
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 325
    invoke-interface {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    .line 328
    .end local v0    # "curPoint":Landroid/graphics/Point;
    :cond_1c
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mIsTouched:Z

    .line 150
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_10

    .line 151
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 152
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched(Landroid/graphics/Point;)V

    .line 154
    :cond_10
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 67
    iput-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 69
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea;->mListener:Lcom/sonymobile/android/addoncamera/soundphoto/view/CaptureArea$CaptureAreaStateListener;

    .line 121
    return-void
.end method
