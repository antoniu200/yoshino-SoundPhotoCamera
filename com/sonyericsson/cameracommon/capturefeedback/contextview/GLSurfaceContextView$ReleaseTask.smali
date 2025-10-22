.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;
.super Ljava/lang/Object;
.source "GLSurfaceContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # getter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->release()V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$302(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    .line 169
    :cond_17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    # invokes: Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->releaseAllShaders()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    .line 170
    return-void
.end method
