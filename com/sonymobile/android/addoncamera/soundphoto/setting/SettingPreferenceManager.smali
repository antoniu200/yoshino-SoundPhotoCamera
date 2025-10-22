.class public Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;
.super Ljava/lang/Object;
.source "SettingPreferenceManager.java"


# static fields
.field private static final LAST_CAPTURING_MODE_KEY:Ljava/lang/String; = "LAST_CAPTURING_MODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

.field private mIsInitializedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V
    .registers 11
    .param p1, "sharedPrefs"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v3, Ljava/util/EnumMap;

    const-class v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    .line 43
    new-instance v3, Ljava/util/EnumMap;

    const-class v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_1c
    if-ge v3, v6, :cond_35

    aget-object v1, v5, v3

    .line 45
    .local v1, "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceFactory;->create(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v7, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 48
    .end local v1    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :cond_35
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .line 50
    const-string v3, "LAST_CAPTURING_MODE"

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 51
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {p1, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "modeName":Ljava/lang/String;
    :try_start_43
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_4b

    .line 59
    :goto_4a
    return-void

    .line 54
    :catch_4b
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V

    goto :goto_4a
.end method


# virtual methods
.method public changeCapturingMode(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V
    .registers 4
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    :goto_10
    return-void

    .line 114
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->LED_ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    if-ne v0, v1, :cond_2a

    .line 115
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    iget-object v0, v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 118
    :cond_2a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    goto :goto_10
.end method

.method public getCurrentPreference()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    return-object v0
.end method

.method public initialize(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;Landroid/hardware/Camera$Parameters;)V
    .registers 11
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .param p2, "cameraParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 68
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 90
    :goto_e
    return-void

    .line 72
    :cond_f
    const/4 v0, 0x0

    .line 73
    .local v0, "isRestored":Z
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v7, :cond_2e

    aget-object v1, v6, v5

    .line 74
    .local v1, "m":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 75
    const/4 v0, 0x1

    .line 73
    :cond_2a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_17

    .line 78
    .end local v1    # "m":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :cond_2e
    if-nez v0, :cond_4c

    .line 79
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    .line 80
    .local v2, "preference":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    invoke-virtual {v2, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->restore(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V

    goto :goto_3a

    .line 84
    .end local v2    # "preference":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    :cond_4c
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    .line 85
    .local v3, "set":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    iget-object v4, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 86
    iget-object v4, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 87
    iget-object v5, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    iget-object v4, v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v4

    check-cast v4, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-static {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->getDefaultValue([Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 89
    :cond_84
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public release()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    .line 150
    return-void
.end method

.method public suspend()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    .line 128
    .local v1, "params":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    invoke-virtual {v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->store(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V

    goto :goto_b

    .line 130
    .end local v1    # "params":Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
    :cond_1d
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    const-string v4, "LAST_CAPTURING_MODE"

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mCurrentPreference:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    iget-object v5, v5, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 132
    invoke-virtual {v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->name()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_32
    if-ge v2, v5, :cond_42

    aget-object v0, v4, v2

    .line 135
    .local v0, "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    iget-object v6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreferenceManager;->mIsInitializedMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 137
    .end local v0    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :cond_42
    return-void
.end method
