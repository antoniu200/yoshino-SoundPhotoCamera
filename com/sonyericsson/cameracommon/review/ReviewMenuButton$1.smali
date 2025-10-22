.class Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;
.super Ljava/lang/Object;
.source "ReviewMenuButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getVisibility()I

    move-result v1

    if-nez v1, :cond_25

    .line 29
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_25

    .line 31
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 32
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v0, :cond_26

    .line 33
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    # invokes: Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->access$000(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    .line 39
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_25
    :goto_25
    return-void

    .line 35
    .restart local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_26
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;->this$0:Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    # invokes: Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected()V
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->access$100(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    goto :goto_25
.end method
