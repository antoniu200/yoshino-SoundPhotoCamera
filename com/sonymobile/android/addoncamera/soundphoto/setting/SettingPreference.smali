.class public Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;
.super Ljava/lang/Object;
.source "SettingPreference.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "-"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;",
            ">;"
        }
    .end annotation
.end field

.field public final capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

.field public final flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final mHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)V
    .registers 3
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->makeHolder(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 35
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->makeHolder(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 36
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->makeHolder(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 50
    return-void
.end method

.method private getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->capturingMode:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringMapToWriteInSP()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 124
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getKey()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    move-result-object v1

    .line 125
    .local v1, "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->isSelectable(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 126
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->serialize()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_f

    .line 128
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 135
    .end local v0    # "holder":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    .end local v1    # "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    .end local v3    # "value":Ljava/lang/String;
    :cond_39
    return-object v2
.end method

.method private isSelectable(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "parameter":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private readStringMapToLoad(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    .line 140
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getKey()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    move-result-object v1

    .line 141
    .local v1, "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->isSelectable(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 142
    invoke-interface {v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 144
    invoke-virtual {v0, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->deserialize(Ljava/lang/String;)V

    goto :goto_a

    .line 152
    .end local v0    # "holder":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<*>;"
    .end local v1    # "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    .end local v2    # "value":Ljava/lang/String;
    :cond_36
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;Z)V
    .registers 5
    .param p1, "applyer"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;
    .param p2, "withoutCommit"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-eq v0, v1, :cond_15

    .line 54
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->autoReview:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;)V

    .line 55
    :cond_15
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-eq v0, v1, :cond_2a

    .line 56
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;)V

    .line 57
    :cond_2a
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-eq v0, v1, :cond_3f

    .line 58
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->selfTimer:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;)V

    .line 60
    :cond_3f
    if-nez p2, :cond_44

    .line 61
    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterApplyer;->commit()V

    .line 63
    :cond_44
    return-void
.end method

.method public get(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .registers 3
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public getSelectability(Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;
    .registers 3
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    move-result-object v0

    return-object v0
.end method

.method protected makeHolder(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
            ">(TT;)",
            "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "initValue":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;, "TT;"
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;-><init>(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 44
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getKey()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v0
.end method

.method public options(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .registers 3
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public restore(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V
    .registers 10
    .param p1, "sharedPreference"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .prologue
    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v1, "keyAndValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v5, :cond_2a

    aget-object v0, v4, v3

    .line 86
    .local v0, "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 87
    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 89
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v2    # "value":Ljava/lang/String;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 93
    .end local v0    # "key":Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    :cond_2a
    invoke-direct {p0, v1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->readStringMapToLoad(Ljava/util/Map;)V

    .line 95
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->LED_ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    if-ne v3, v4, :cond_3e

    .line 97
    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->flash:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    sget-object v4, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 99
    :cond_3e
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V
    .registers 4
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->mHolders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setWithAutoCast(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 67
    return-void
.end method

.method public store(Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;)V
    .registers 6
    .param p1, "sharedPreference"    # Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingPreference;->getStringMapToWriteInSP()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_28
    return-void
.end method
