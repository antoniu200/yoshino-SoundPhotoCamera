.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;
.super Ljava/lang/Object;
.source "AutoReviewWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReviewScreenListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method
