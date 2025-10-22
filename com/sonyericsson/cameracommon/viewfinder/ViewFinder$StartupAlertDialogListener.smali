.class public Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartupAlertDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    iput-boolean p2, v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsItemChecked:Z

    .line 769
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->setAlertDialogIsOpened(Z)V

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->notifyThermaDialogClosed()V

    .line 764
    return-void
.end method
