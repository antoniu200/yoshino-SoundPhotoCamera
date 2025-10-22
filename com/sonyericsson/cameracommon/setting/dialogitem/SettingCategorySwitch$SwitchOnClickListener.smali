.class final Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;
.super Ljava/lang/Object;
.source "SettingCategorySwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;-><init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$SwitchOnClickListener;->this$0:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;

    # getter for: Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->mHolder:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;->access$500(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;->mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/widget/CategorySwitch;->changeState()V

    .line 121
    return-void
.end method
