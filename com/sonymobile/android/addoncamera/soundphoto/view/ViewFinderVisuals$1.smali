.class Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;
.super Ljava/lang/Object;
.source "ViewFinderVisuals.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;>;"
    const/4 v2, 0x0

    .line 731
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$900(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-virtual {v1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 732
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateMenuItems(Z)V

    .line 733
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mSettingUi:Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1000(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/settingui/SoundPhotoSettingUi;->updateShortcutItems()V

    .line 734
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    if-ne v0, v1, :cond_3e

    .line 735
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->updatePhotoCaptureButton()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1100(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    .line 736
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # invokes: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->setupSelfTimerCountDownView()V
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$1200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)V

    .line 738
    :cond_3e
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals$1;->this$0:Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;

    # getter for: Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->mStateMachine:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;->access$200(Lcom/sonymobile/android/addoncamera/soundphoto/view/ViewFinderVisuals;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_SETTING_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;->sendStaticEvent(Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 739
    return-void
.end method
