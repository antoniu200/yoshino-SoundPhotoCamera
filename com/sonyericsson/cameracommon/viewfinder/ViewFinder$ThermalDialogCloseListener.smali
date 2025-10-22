.class Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalDialogCloseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .registers 2

    .prologue
    .line 825
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 837
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    const-string v1, "THERMAL_DISABLED"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$ThermalDialogCloseListener;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsItemChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 831
    return-void
.end method
