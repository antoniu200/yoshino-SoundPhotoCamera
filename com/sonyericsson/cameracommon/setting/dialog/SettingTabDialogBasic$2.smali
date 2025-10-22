.class Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;
.super Ljava/lang/Object;
.source "SettingTabDialogBasic.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;


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
    .line 191
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 5
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 196
    .local v1, "testItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    if-eq v1, p1, :cond_1b

    .line 197
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 194
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "testItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1e
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic$2;->this$0:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->mAdapter:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
