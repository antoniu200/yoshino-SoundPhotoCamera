.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;
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
    name = "SetInvisibleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 363
    return-void
.end method
