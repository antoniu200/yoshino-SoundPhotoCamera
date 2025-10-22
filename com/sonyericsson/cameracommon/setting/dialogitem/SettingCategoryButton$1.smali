.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;
.super Ljava/lang/Object;
.source "SettingCategoryButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->getItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategoryButton;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 40
    :cond_23
    return-void
.end method
