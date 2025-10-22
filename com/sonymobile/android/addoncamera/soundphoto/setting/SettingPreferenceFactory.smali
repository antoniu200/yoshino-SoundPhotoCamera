.class public Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory;
.super Ljava/lang/Object;
.source "SettingPreferenceFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    .registers 3
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory$1;->$SwitchMap$com$sonymobile$android$addoncamera$soundphoto$setting$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 23
    :pswitch_11
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory;->createMainCamera(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    .line 25
    :goto_15
    return-object v0

    :pswitch_16
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory;->createFrontCamera(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v0

    goto :goto_15

    .line 21
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

.method private static createFrontCamera(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    .registers 4
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 43
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 44
    .local v0, "set":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 45
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 46
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 47
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 48
    return-object v0
.end method

.method private static createMainCamera(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    .registers 4
    .param p0, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 32
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    .line 33
    .local v0, "set":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 34
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 35
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 36
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 37
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 38
    iget-object v1, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 39
    return-object v0
.end method
