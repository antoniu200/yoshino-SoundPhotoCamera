.class public Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;
.super Ljava/lang/Object;
.source "SoundPhotoParamSharedPrefWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_KEY:Ljava/lang/String; = "SHARED_PREFERNCE_VERSION"


# instance fields
.field private final mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

.field private final mSharedPreferenceName:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-direct {v2, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    .line 52
    const-string v2, "SHARED_PREFERNCE_VERSION"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "sharedVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, "isAvailabeVersion":Z
    if-nez v0, :cond_2c

    .line 66
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->clear()V

    .line 67
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    const-string v3, "SHARED_PREFERNCE_VERSION"

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    const-string v1, "SHARED_PREFERNCE_VERSION"

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->getParamFromSP(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->getParamFromSP(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->getParamFromSP(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSharedPreferenceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mSharedPreferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setParamFromSP(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;F)V

    .line 132
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPrefWrapper;->mEffectParamSharedPref:Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->setParamFromSP(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method
