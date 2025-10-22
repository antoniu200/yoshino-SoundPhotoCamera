.class public Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;
.super Ljava/lang/Object;
.source "ParamSharedPref.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ParamSharedPref"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 27
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_18

    .line 32
    :goto_17
    return-void

    .line 30
    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    :cond_d
    return-void
.end method

.method public getParamFromSP(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 68
    .end local p2    # "value":F
    :cond_a
    return p2
.end method

.method public getParamFromSP(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
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
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    .end local p2    # "value":Ljava/lang/String;
    :cond_a
    return-object p2
.end method

.method public getParamFromSP(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_a

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 53
    .end local p2    # "value":Z
    :cond_a
    return p2
.end method

.method public setParamToSP(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    :cond_e
    return-void
.end method

.method public setParamToSP(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPref;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    :cond_e
    return-void
.end method
