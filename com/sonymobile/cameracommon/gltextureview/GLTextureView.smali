.class public Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;,
        Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    }
.end annotation


# static fields
.field protected static final IS_EGL_DEBUG:Z = false

.field protected static final IS_GL_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "GLTextureView"


# instance fields
.field private mActionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundThread:Ljava/lang/Thread;

.field private final mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

.field private final mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

.field private mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

.field protected final mGlLock:Ljava/lang/Object;

.field private mIsAlreadyDestroyed:Z

.field private mIsAlreadyInitialized:Z

.field private mIsAlreadyScreenCleared:Z

.field private mIsRenderRequested:Z

.field private mIsSleep:Z

.field protected mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

.field protected mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

.field private mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

.field private mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 139
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 151
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 160
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 178
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 181
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 187
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 190
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 193
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 195
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 196
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 202
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 203
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 208
    invoke-virtual {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 139
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 151
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 160
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 178
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 181
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 187
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 190
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 193
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 195
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 196
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 202
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 203
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 214
    invoke-virtual {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 139
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 151
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->OPEN_GL_ES_20:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .line 160
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    .line 178
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    .line 181
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    .line 187
    iput-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 190
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 193
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 195
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 196
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    .line 202
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 203
    iput v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 220
    invoke-virtual {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 221
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    return v0
.end method

.method public static logGlEgl(Ljava/lang/String;)V
    .registers 5
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GL/EGL] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GLTextureView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public static logPerformance(Ljava/lang/String;)V
    .registers 2
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "TraceLog"

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected clearAll()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 689
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 691
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 695
    return-void
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyScreenCleared:Z

    .line 267
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsSleep:Z

    .line 237
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 8
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 405
    if-lez p2, :cond_4

    if-gtz p3, :cond_5

    .line 454
    :cond_4
    :goto_4
    return-void

    .line 409
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_8
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 412
    iput p3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 414
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_5e

    .line 416
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 417
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglConfigChooser:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mOpenGlVersion:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->initialize(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)V

    .line 418
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 421
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_43

    .line 422
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 423
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceCreated()V

    .line 424
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 425
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 440
    :cond_43
    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 442
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_79

    .line 444
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v1, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ON_BACK:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v1, :cond_4

    .line 447
    new-instance v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$BackgroundRenderingThread;-><init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    .line 448
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 429
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 432
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_43

    .line 433
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 434
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v0, p2, p3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 435
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_43

    .line 442
    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_79

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 8
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyDestroyed:Z

    .line 509
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 511
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_41

    .line 514
    :try_start_11
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_47

    .line 516
    :try_start_14
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v3, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v1, v3, :cond_29

    .line 517
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 518
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceDestroyed()V

    .line 519
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 521
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_44

    .line 524
    :try_start_2a
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_47

    if-eqz v1, :cond_33

    .line 528
    :try_start_2e
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mBackgroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_52
    .catchall {:try_start_2e .. :try_end_33} :catchall_47

    .line 535
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_36
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->release()V

    .line 538
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_5b

    .line 542
    iput v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 543
    iput v4, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 549
    return v5

    .line 511
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1

    .line 521
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 535
    :catchall_47
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_4b
    iget-object v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->release()V

    .line 538
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_5e

    throw v1

    .line 530
    :catch_52
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v1, "GLTextureView"

    const-string v2, "Fail to join."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_47

    goto :goto_33

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1

    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 8
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 469
    if-lez p2, :cond_4

    if-gtz p3, :cond_5

    .line 492
    :cond_4
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_8
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    .line 476
    iput p3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    .line 479
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onSurfaceTextureChanged(Landroid/graphics/SurfaceTexture;)V

    .line 482
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    sget-object v2, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->IN_SYNC:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    if-ne v0, v2, :cond_2a

    .line 483
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 484
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    iget v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceWidth:I

    iget v3, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mSurfaceHeight:I

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;->onSurfaceChanged(II)V

    .line 485
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 487
    :cond_2a
    monitor-exit v1

    goto :goto_4

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 558
    return-void
.end method

.method public recoverEglContext()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 253
    return-void
.end method

.method public requestAction(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_3
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_3a

    .line 370
    :goto_10
    monitor-exit v1

    .line 373
    return-void

    .line 351
    :pswitch_12
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_21

    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0

    .line 355
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 356
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 357
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_10

    .line 362
    :pswitch_2f
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mActionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_1e

    goto :goto_10

    .line 349
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2f
    .end packed-switch
.end method

.method public requestRender()V
    .registers 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_3
    sget-object v0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$RenderSyncType:[I

    iget-object v2, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderSyncType:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$RenderSyncType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_40

    .line 335
    :goto_10
    monitor-exit v1

    .line 338
    return-void

    .line 310
    :pswitch_12
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_21

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0

    .line 314
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 316
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;->onDrawFrame()V

    .line 320
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 323
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_10

    .line 327
    :pswitch_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsRenderRequested:Z

    .line 331
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_1e

    goto :goto_10

    .line 308
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_12
        :pswitch_36
    .end packed-switch
.end method

.method public requestSyncAction(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_3
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mIsAlreadyInitialized:Z

    if-nez v0, :cond_12

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 388
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 389
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 390
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mEglCon:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    .line 391
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_f

    .line 394
    return-void
.end method

.method public setRenderer(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;)V
    .registers 4
    .param p1, "renderer"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    if-eqz p1, :cond_9

    .line 277
    :try_start_5
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .line 281
    :goto_7
    monitor-exit v1

    .line 282
    return-void

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummyRenderer;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mRenderer:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    goto :goto_7

    .line 281
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setSurfaceStateCallback(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    if-eqz p1, :cond_9

    .line 292
    :try_start_5
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 296
    :goto_7
    monitor-exit v1

    .line 297
    return-void

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mDummyStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;->mStateCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    goto :goto_7

    .line 296
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
