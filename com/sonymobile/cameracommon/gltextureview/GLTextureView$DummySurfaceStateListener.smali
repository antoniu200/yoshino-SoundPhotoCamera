.class final Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummySurfaceStateListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$1;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$DummySurfaceStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onSurfaceCreated()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method
