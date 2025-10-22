.class Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundRenderingThread"
.end annotation


# instance fields
.field private mLocalHeight:I

.field private mLocalWidth:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 563
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 564
    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    .line 565
    iput v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 573
    const-string v2, "GL-RenderingThread"

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->setName(Ljava/lang/String;)V

    .line 576
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 579
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceCreated()V

    .line 580
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 583
    :goto_20
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_141

    .line 584
    :cond_34
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$700(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_107

    .line 585
    :cond_48
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    iget-object v3, v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 586
    :try_start_4d
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 588
    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v4

    if-ne v2, v4, :cond_6a

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    iget-object v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I
    invoke-static {v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v4

    if-eq v2, v4, :cond_87

    .line 589
    :cond_6a
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    .line 590
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    .line 594
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    iget v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalWidth:I

    iget v5, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->mLocalHeight:I

    invoke-interface {v2, v4, v5}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 598
    :cond_87
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 601
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1100(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;->onDrawFrame()V

    .line 604
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2, v4}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1002(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Z)Z

    .line 607
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 608
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 612
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 618
    :cond_ad
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 621
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 622
    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_ca

    .line 623
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 626
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_ca
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 629
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f8

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .line 630
    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-nez v2, :cond_f8

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .line 631
    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    :try_end_ec
    .catchall {:try_start_4d .. :try_end_ec} :catchall_fb

    move-result v2

    if-nez v2, :cond_f8

    .line 636
    :try_start_ef
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_f8
    .catch Ljava/lang/InterruptedException; {:try_start_ef .. :try_end_f8} :catch_fe
    .catchall {:try_start_ef .. :try_end_f8} :catchall_fb

    .line 642
    :cond_f8
    :goto_f8
    :try_start_f8
    monitor-exit v3

    goto/16 :goto_20

    :catchall_fb
    move-exception v2

    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_fb

    throw v2

    .line 638
    :catch_fe
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_ff
    const-string v2, "GLTextureView"

    const-string v4, "Fail to wait."

    invoke-static {v2, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_fb

    goto :goto_f8

    .line 648
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_107
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    iget-object v3, v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 649
    :try_start_10c
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 650
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->clearAll()V

    .line 651
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 652
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 653
    monitor-exit v3
    :try_end_12d
    .catchall {:try_start_10c .. :try_end_12d} :catchall_13e

    .line 657
    const-wide/16 v2, 0x64

    :try_start_12f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_134

    goto/16 :goto_20

    .line 658
    :catch_134
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GLTextureView"

    const-string v3, "Fail to sleep."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_13e
    move-exception v2

    :try_start_13f
    monitor-exit v3
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    throw v2

    .line 668
    :cond_141
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$1200(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z

    move-result v2

    if-nez v2, :cond_16a

    .line 669
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    iget-object v3, v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v3

    .line 670
    :try_start_14e
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 671
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceDestroyed()V

    .line 672
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    # getter for: Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 673
    monitor-exit v3

    .line 679
    :cond_16a
    return-void

    .line 673
    :catchall_16b
    move-exception v2

    monitor-exit v3
    :try_end_16d
    .catchall {:try_start_14e .. :try_end_16d} :catchall_16b

    throw v2
.end method
