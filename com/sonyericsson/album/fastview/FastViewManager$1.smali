.class Lcom/sonyericsson/album/fastview/FastViewManager$1;
.super Ljava/lang/Object;
.source "FastViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/album/fastview/FastViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/album/fastview/FastViewManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/album/fastview/FastViewManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/album/fastview/FastViewManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    invoke-static {p2}, Lcom/sonyericsson/album/fastview/IFastViewService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/album/fastview/IFastViewService;

    move-result-object v1

    # setter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;
    invoke-static {v0, v1}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$002(Lcom/sonyericsson/album/fastview/FastViewManager;Lcom/sonyericsson/album/fastview/IFastViewService;)Lcom/sonyericsson/album/fastview/IFastViewService;

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    # getter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    invoke-static {v0}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager$1;->this$0:Lcom/sonyericsson/album/fastview/FastViewManager;

    # getter for: Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    invoke-static {v0}, Lcom/sonyericsson/album/fastview/FastViewManager;->access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;->onPrewarmed()V

    .line 62
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 66
    return-void
.end method
