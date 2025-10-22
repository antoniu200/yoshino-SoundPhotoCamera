.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;
.super Landroid/database/DataSetObserver;
.source "SettingTabDialogBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    .line 132
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$1;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    # invokes: Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->registerOnItemSelectedListener()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;)V

    .line 137
    return-void
.end method
