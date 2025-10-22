.class public Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
.implements Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    }
.end annotation


# static fields
.field private static final NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field public static final TAG:Ljava/lang/String; = "TouchActionTranslator"


# instance fields
.field private mAndroidGestureDetector:Landroid/view/GestureDetector;

.field private mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

.field private mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

.field private mIsAllTouchEventInTargetArea:Z

.field private final mMargin:I

.field private mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

.field private mTargetView:Landroid/view/View;

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "margin"    # I

    .prologue
    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "margin"    # I
    .param p4, "touchSlop"    # I

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 63
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 251
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 214
    iput p3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    .line 215
    iput p4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    .line 218
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 221
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .registers 3
    .param p1, "next"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAndroidGestureDetector()Landroid/view/GestureDetector;
    .registers 5

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_13

    .line 793
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 799
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-nez v0, :cond_12

    .line 784
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 785
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V

    .line 787
    :cond_12
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    return-object v0
.end method

.method private hitTest(Landroid/view/View;III)Z
    .registers 8
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "margin"    # I
    .param p3, "xOnView"    # I
    .param p4, "yOnView"    # I

    .prologue
    .line 708
    new-instance v0, Landroid/graphics/Rect;

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-direct {v0, p2, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 714
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 803
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    .line 804
    return-void
.end method

.method public declared-synchronized onDoubleTouchRotateDetected(FF)V
    .registers 4
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 741
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchRotateEvent(FF)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 743
    monitor-exit p0

    return-void

    .line 741
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDoubleTouchScaleDetected(FFF)V
    .registers 5
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 734
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchScaleEvent(FFF)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 736
    monitor-exit p0

    return-void

    .line 734
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 748
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 754
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 755
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 754
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 760
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onLongPress(Landroid/view/MotionEvent;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 761
    monitor-exit p0

    return-void

    .line 760
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 767
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized onShowPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onShowPress(Landroid/view/MotionEvent;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 773
    monitor-exit p0

    return-void

    .line 772
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 777
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleTapUp(Landroid/view/MotionEvent;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 778
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 777
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 720
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 722
    monitor-exit p0

    return-void

    .line 720
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 727
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 729
    monitor-exit p0

    return-void

    .line 727
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 657
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2a

    .line 658
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 659
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->hitTest(Landroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 660
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 663
    :cond_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 670
    .end local v0    # "i":I
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_84

    .line 693
    :cond_31
    :goto_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v5, :cond_3b

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    if-eqz v1, :cond_80

    .line 695
    :cond_3b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v1, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 701
    :goto_40
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getAndroidGestureDetector()Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 703
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_5d

    monitor-exit p0

    return v1

    .line 673
    :pswitch_4b
    :try_start_4b
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 673
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_5d

    goto :goto_31

    .line 657
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 678
    :pswitch_60
    :try_start_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v5, v1, :cond_31

    .line 680
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 680
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_31

    .line 689
    :pswitch_78
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V

    goto :goto_31

    .line 697
    :cond_80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->cancel()V
    :try_end_83
    .catchall {:try_start_60 .. :try_end_83} :catchall_5d

    goto :goto_40

    .line 670
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_78
        :pswitch_60
        :pswitch_78
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 226
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-eqz v0, :cond_13

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->release()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 233
    :cond_13
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->release()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_24

    .line 238
    monitor-exit p0

    return-void

    .line 226
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .prologue
    .line 66
    if-eqz p1, :cond_5

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 71
    :goto_4
    return-void

    .line 69
    :cond_5
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    goto :goto_4
.end method
