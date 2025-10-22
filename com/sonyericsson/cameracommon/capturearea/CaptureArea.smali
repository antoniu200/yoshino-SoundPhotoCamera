.class public Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageView"


# instance fields
.field private mBgLandscape:I

.field private mBgLandscapePressed:I

.field private mBgPortrait:I

.field private mBgPortraitPressed:I

.field private mCurrentOrientation:I

.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;

.field mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mCurrentOrientation:I

    .line 39
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;

    .line 52
    iput v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscape:I

    .line 53
    iput v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscapePressed:I

    .line 54
    iput v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortrait:I

    .line 55
    iput v1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortraitPressed:I

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->updateView()V

    return-void
.end method

.method private getTouchPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 5
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hitTest(Landroid/view/View;II)Z
    .registers 11
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "rawX"    # I
    .param p3, "rawY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 198
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 199
    .local v0, "locationOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 206
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private hitTest(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->hitTest(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method private updateView()V
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscape:I

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscapePressed:I

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortrait:I

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortraitPressed:I

    if-nez v0, :cond_11

    .line 244
    :goto_10
    return-void

    .line 221
    :cond_11
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_3e

    .line 242
    :goto_16
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->requestLayout()V

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->invalidate()V

    goto :goto_10

    .line 224
    :pswitch_1d
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    if-eqz v0, :cond_27

    .line 225
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscapePressed:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setImageResource(I)V

    goto :goto_16

    .line 227
    :cond_27
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscape:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setImageResource(I)V

    goto :goto_16

    .line 233
    :pswitch_2d
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    if-eqz v0, :cond_37

    .line 234
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortraitPressed:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setImageResource(I)V

    goto :goto_16

    .line 236
    :cond_37
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortrait:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setImageResource(I)V

    goto :goto_16

    .line 221
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public isTouched()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    return v0
.end method

.method public onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 169
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p0, v0, v1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->hitTest(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved(Landroid/graphics/Point;)V

    .line 186
    :cond_13
    :goto_13
    return-void

    .line 177
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1d

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    .line 181
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mIsTouched:Z

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    goto :goto_13
.end method

.method public onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    .line 194
    :cond_9
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mListener:Lcom/sonyericsson/cameracommon/capturearea/CaptureArea$CaptureAreaStateListener;

    .line 256
    return-void
.end method

.method public setLandscapeBackgroundResource(II)V
    .registers 3
    .param p1, "normal"    # I
    .param p2, "pressed"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscape:I

    .line 74
    iput p2, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgLandscapePressed:I

    .line 75
    return-void
.end method

.method public setPortraitBackgroundResource(II)V
    .registers 3
    .param p1, "normal"    # I
    .param p2, "pressed"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortrait:I

    .line 79
    iput p2, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mBgPortraitPressed:I

    .line 80
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->mCurrentOrientation:I

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturearea/CaptureArea;->updateView()V

    .line 92
    return-void
.end method
