.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;
.super Ljava/lang/Object;
.source "SettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingButton;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 39
    :cond_17
    return-void
.end method
