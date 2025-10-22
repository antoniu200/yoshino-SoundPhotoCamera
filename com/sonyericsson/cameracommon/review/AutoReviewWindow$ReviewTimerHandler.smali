.class Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;
.super Landroid/os/Handler;
.source "AutoReviewWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReviewTimerHandler"
.end annotation


# instance fields
.field private final mWindowRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V
    .registers 3
    .param p1, "window"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 444
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;->mWindowRef:Ljava/lang/ref/WeakReference;

    .line 445
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 450
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 473
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 456
    :pswitch_6
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;->mWindowRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .line 457
    .local v0, "window":Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
    if-eqz v0, :cond_5

    .line 458
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    goto :goto_5

    .line 450
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
