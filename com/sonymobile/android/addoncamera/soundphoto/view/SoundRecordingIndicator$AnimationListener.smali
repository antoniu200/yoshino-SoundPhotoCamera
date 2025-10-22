.class Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;
.super Ljava/lang/Object;
.source "SoundRecordingIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->clearMark(Landroid/animation/Animator;)V
    invoke-static {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Landroid/animation/Animator;)V

    .line 419
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->clearMark(Landroid/animation/Animator;)V
    invoke-static {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Landroid/animation/Animator;)V

    .line 425
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator$AnimationListener;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->clearMark(Landroid/animation/Animator;)V
    invoke-static {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundRecordingIndicator;Landroid/animation/Animator;)V

    .line 431
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 437
    return-void
.end method
