.class Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
.super Ljava/lang/Object;
.source "SplitLayoutBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameBaseFactory"
.end annotation


# instance fields
.field private mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/view/View;)V
    .registers 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 520
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 521
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 522
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    .line 523
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createYuvFrameShaderProgram(Landroid/content/Context;)I

    move-result v2

    .line 522
    # setter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$102(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;I)I

    .line 525
    :cond_1d
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->this$0:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    # getter for: Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I
    invoke-static {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 526
    return-void
.end method

.method public obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    return-object v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    if-eqz v0, :cond_c

    .line 531
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->mFrame:Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    .line 534
    :cond_c
    return-void
.end method
