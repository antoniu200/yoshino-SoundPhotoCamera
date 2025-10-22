.class final Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "SettingCategorySwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchOnCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 36
    if-eqz p2, :cond_1a

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 42
    :cond_19
    :goto_19
    return-void

    .line 39
    :cond_1a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_19
.end method
