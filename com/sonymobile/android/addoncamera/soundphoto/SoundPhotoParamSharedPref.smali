.class public Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;
.super Ljava/lang/Object;
.source "SoundPhotoParamSharedPref.java"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 20
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 24
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 25
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    .line 28
    :goto_17
    return-void

    .line 26
    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_d

    .line 92
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    :cond_d
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 62
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 64
    .end local p2    # "value":F
    :cond_a
    return p2
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 34
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    .end local p2    # "value":Ljava/lang/String;
    :cond_a
    return-object p2
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 42
    .end local p2    # "value":Z
    :cond_a
    return p2
.end method

.method public setParamFromSP(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 70
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_e
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    :cond_e
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_e
    return-void
.end method

.method public setParamFromSP(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 55
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/SoundPhotoParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    :cond_e
    return-void
.end method
