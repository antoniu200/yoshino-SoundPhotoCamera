.class public Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.super Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.source "GLSurfaceContextView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;
    }
.end annotation


# static fields
.field private static final CENTER_X_POS:F = 0.0f

.field private static final CENTER_Y_POS:F = 0.0f

.field private static final CENTER_Z_POS:F = 0.2f

.field private static final EYE_SIGHT_MATRIX:[F

.field private static final PARALLEL_PROJECTION_MATRIX:[F

.field private static final PERSPECTIVE_PROJECTION_MATRIX:[F

.field private static final ROOT_GM:[F

.field public static final TAG:Ljava/lang/String; = "GLSurfaceContextView"


# instance fields
.field private mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

.field private final mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

.field private final mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

.field private mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

.field private final mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

.field private mSimpleFrameShader:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x10

    const/high16 v14, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    .line 41
    new-array v0, v3, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PERSPECTIVE_PROJECTION_MATRIX:[F

    .line 43
    new-array v0, v3, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    .line 45
    new-array v0, v3, [F

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    .line 65
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    const/high16 v4, 0x42c80000    # 100.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 72
    sget-object v6, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    const/high16 v13, 0x43480000    # 200.0f

    move v7, v1

    move v8, v14

    move v10, v14

    move v11, v9

    move v12, v2

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 82
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PERSPECTIVE_PROJECTION_MATRIX:[F

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x43160000    # 150.0f

    move v2, v14

    move v3, v9

    move v4, v14

    move v5, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    .line 57
    iput v6, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    .line 96
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 97
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setEGLConfigChooser(IIIIII)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setZOrderOnTop(Z)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 100
    invoke-virtual {p0, v6}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 102
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->releaseAllShaders()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;II)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupDynamicConfig(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->createAllShaders()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    return v0
.end method

.method private clearSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 302
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 306
    return-void
.end method

.method private createAllShaders()V
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    if-eqz v0, :cond_9

    .line 344
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 346
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createSimpleFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 348
    return-void
.end method

.method private disableGlobalFunctions()Z
    .registers 2

    .prologue
    .line 289
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 292
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method private doRender()V
    .registers 10

    .prologue
    const/16 v8, 0x302

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->clearSurface()V

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    if-nez v0, :cond_c

    .line 339
    :cond_b
    :goto_b
    return-void

    .line 316
    :cond_c
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 317
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->EYE_SIGHT_MATRIX:[F

    sget-object v4, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 318
    sget-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->PARALLEL_PROJECTION_MATRIX:[F

    sget-object v4, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mFlashFeedback:Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    sget-object v2, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->ROOT_GM:[F

    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setGlobalMatrix([F)V

    .line 321
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 324
    .local v6, "animation":Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    if-eqz v6, :cond_57

    .line 325
    invoke-static {v8, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 328
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v2

    .line 326
    invoke-interface {v6, v0, v2, v3}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v0

    if-nez v0, :cond_55

    .line 329
    .local v7, "isAnimationFinished":Z
    :goto_43
    const/16 v0, 0x303

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 335
    :goto_48
    if-eqz v7, :cond_b

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .end local v7    # "isAnimationFinished":Z
    :cond_55
    move v7, v1

    .line 326
    goto :goto_43

    .line 332
    :cond_57
    const/4 v7, 0x1

    .restart local v7    # "isAnimationFinished":Z
    goto :goto_48
.end method

.method private enableGlobalFunctions()Z
    .registers 3

    .prologue
    .line 277
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 278
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 281
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public static final preload()V
    .registers 0

    .prologue
    .line 34
    return-void
.end method

.method private releaseAllShaders()V
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSimpleFrameShader:I

    .line 355
    return-void
.end method

.method private render()V
    .registers 3

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->enableGlobalFunctions()Z

    move-result v0

    if-nez v0, :cond_e

    .line 258
    const-string v0, "GLSurfaceContextView"

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_d
    :goto_d
    return-void

    .line 262
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->doRender()V

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->disableGlobalFunctions()Z

    move-result v0

    if-nez v0, :cond_d

    .line 265
    const-string v0, "GLSurfaceContextView"

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private setupDynamicConfig(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 204
    if-ge p2, p1, :cond_d

    .line 221
    sub-int v2, p1, p2

    div-int/lit8 v1, v2, 0x2

    .line 222
    .local v1, "verticalOffset":I
    mul-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 247
    .end local v1    # "verticalOffset":I
    :goto_c
    return-void

    .line 244
    :cond_d
    sub-int v2, p2, p1

    div-int/lit8 v0, v2, 0x2

    .line 245
    .local v0, "horizontalOffset":I
    mul-int/lit8 v2, v0, -0x1

    invoke-static {v2, v3, p2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_c
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->render()V

    .line 136
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setupRelatedToSurfaceSize()V

    .line 124
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 117
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 159
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public setupRelatedToSurfaceSize()V
    .registers 3

    .prologue
    .line 178
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$1;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->queueEvent(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
    .registers 3
    .param p1, "animation"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 142
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    .line 146
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->requestRender()V

    .line 147
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->release()V

    .line 153
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 155
    return-void
.end method
