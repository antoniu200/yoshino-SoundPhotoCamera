.class Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;
.super Ljava/lang/Object;
.source "SoundPhotoSettingUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;

    .line 242
    .local v2, "tag":Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$view$settingui$SoundPhotoSettingUi$Shortcut:[I

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_e6

    .line 295
    :cond_11
    :goto_11
    return-void

    .line 244
    :pswitch_12
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isMenuAvailable()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 245
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$100(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 246
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_11

    .line 248
    :cond_34
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openMainSettingsDialog(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)V
    invoke-static {v3, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$300(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$Shortcut;)V

    goto :goto_11

    .line 252
    :cond_3a
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$400(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_11

    .line 257
    :pswitch_44
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->closeDialogs(Z)V

    .line 258
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mViewFinder:Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$500(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/SoundPhotoViewFinder;->onToggledCameraSwitch()V

    goto :goto_11

    .line 262
    :pswitch_54
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$600(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 263
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$700(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_11

    .line 265
    :cond_6a
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$800(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 266
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutSelected(Ljava/lang/Object;)V

    .line 267
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->generateFlashItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 268
    .local v0, "flashItems":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 269
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const v4, 0x7f080169

    invoke-virtual {v3, v0, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 276
    .end local v0    # "flashItems":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    :pswitch_96
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mActivity:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoCameraActivity;->isSelfTimerAvailable()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 277
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 278
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto/16 :goto_11

    .line 280
    :cond_b9
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1300(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 281
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1400(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->updateShortcutSelected(Ljava/lang/Object;)V

    .line 282
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    .line 283
    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;
    invoke-static {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/ModeSettingItemResolver;->generateSelfTimerItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v1

    .line 284
    .local v1, "selftimerItems":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 285
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    const v4, 0x7f080234

    invoke-virtual {v3, v1, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 242
    nop

    :pswitch_data_e6
    .packed-switch 0x2
        :pswitch_54
        :pswitch_96
        :pswitch_12
        :pswitch_44
    .end packed-switch
.end method
