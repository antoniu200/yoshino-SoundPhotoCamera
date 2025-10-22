.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 796
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 797
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, -0x1

    .line 801
    if-eq p1, v1, :cond_8

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$502(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 805
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 815
    :goto_10
    return-void

    .line 808
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$602(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v0

    if-eq v0, v1, :cond_29

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I

    move-result v1

    # setter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$702(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I

    .line 814
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v1

    # invokes: Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->access$800(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_10
.end method
