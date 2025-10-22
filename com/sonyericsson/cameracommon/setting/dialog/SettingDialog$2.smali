.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 160
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 150
    return-void
.end method
