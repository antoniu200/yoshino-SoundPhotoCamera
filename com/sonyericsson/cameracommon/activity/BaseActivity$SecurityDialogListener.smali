.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityDialogListener"
.end annotation


# instance fields
.field private mIsItemChecked:Z

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mSharedPrefsKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mSharedPrefsKey:Ljava/lang/String;

    .line 1445
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mRunnable:Ljava/lang/Runnable;

    .line 1446
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 1458
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mIsItemChecked:Z

    .line 1459
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1450
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mIsItemChecked:Z

    if-eqz v0, :cond_11

    .line 1451
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mSharedPrefsKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mIsItemChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;->setParamToSP(Ljava/lang/String;Z)V

    .line 1453
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$SecurityDialogListener;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1454
    return-void
.end method
