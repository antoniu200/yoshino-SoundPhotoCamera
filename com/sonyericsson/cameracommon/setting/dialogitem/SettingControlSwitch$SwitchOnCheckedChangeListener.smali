.class final Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "SettingControlSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchOnCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 38
    if-eqz p2, :cond_1f

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOnItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->access$100(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 43
    :goto_19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->updateContentDescription(Z)V
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->access$300(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;Z)V

    .line 45
    :cond_1e
    return-void

    .line 41
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$SwitchOnCheckedChangeListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->getOffItem()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->access$200(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;->select(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    goto :goto_19
.end method
