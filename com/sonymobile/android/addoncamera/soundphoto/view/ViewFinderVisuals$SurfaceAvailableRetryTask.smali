.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceAvailableRetryTask"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mSurface:Landroid/view/SurfaceHolder;

.field private final mWidth:I

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V
    .registers 5
    .param p2, "surface"    # Landroid/view/SurfaceHolder;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    .line 370
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mWidth:I

    .line 371
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mHeight:I

    .line 372
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mSurface:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mWidth:I

    iget v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$SurfaceAvailableRetryTask;->mHeight:I

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->onSurfaceAvailableInternal(Landroid/view/SurfaceHolder;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;Landroid/view/SurfaceHolder;II)V

    .line 380
    return-void
.end method
