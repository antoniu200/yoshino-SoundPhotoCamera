.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader;
.super Ljava/lang/Object;
.source "CommonSettingDefaultLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Column;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader;->newContentValuesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 107
    .local v0, "insertRecord":Landroid/content/ContentValues;
    const-string v2, "commonsettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_8

    .line 109
    .end local v0    # "insertRecord":Landroid/content/ContentValues;
    :cond_1b
    return-void
.end method

.method public static newContentValuesList(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 114
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_30

    aget-object v2, v5, v4

    .line 121
    .local v2, "eachRecord":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v7, "name"

    iget-object v8, v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v7, "value"

    iget v8, v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderValueResId:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 126
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "eachRecord":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;
    :cond_30
    return-object v1
.end method
