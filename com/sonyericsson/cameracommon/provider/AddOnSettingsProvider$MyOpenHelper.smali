.class Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AddOnSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyOpenHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method

.method static createCameraParameterTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 218
    const-string v0, "CREATE TABLE cameraparameters (_id INTEGER PRIMARY KEY AUTOINCREMENT,camera_id INTEGER UNIQUE,parameters TEXT,build_fingerprint TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method static createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 195
    const-string v0, "CREATE TABLE capturingmodes (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT, activity TEXT, mode_name TEXT, capture_type INTEGER, visibility_normal INTEGER, visibility_oneshot INTEGER, visibility_shortcut INTEGER, sort_order INTEGER, selectorlabel_id INTEGER, selectoricon_id INTEGER, shortcutlabel_id INTEGER, shortcuticon_id INTEGER, descriptionlabel_id INTEGER, UNIQUE(package,mode_name));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method static createCommonSettingTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 228
    const-string v0, "CREATE TABLE commonsettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE, value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader;->load(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    return-void
.end method

.method static deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 240
    const-string v0, "DROP TABLE IF EXISTS capturingmodes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v0, "DROP TABLE IF EXISTS cameraparameters"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "DROP TABLE IF EXISTS commonsettings"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method static existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "c":Landroid/database/Cursor;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_35

    move-result v1

    if-lez v1, :cond_2e

    .line 253
    const/4 v1, 0x1

    .line 257
    if-eqz v0, :cond_2d

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_2d
    :goto_2d
    return v1

    .line 257
    :cond_2e
    if-eqz v0, :cond_33

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_33
    const/4 v1, 0x0

    goto :goto_2d

    .line 257
    :catchall_35
    move-exception v1

    if-eqz v0, :cond_3b

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v1
.end method

.method static queryShutterSoundValue(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 265
    const-string v1, "commonsettings"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v6

    const-string v3, "name = ?"

    new-array v4, v10, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderKey:Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 274
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 275
    .local v9, "shutterSoundValue":Ljava/lang/String;
    if-eqz v8, :cond_30

    .line 277
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2d

    .line 278
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 279
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_31

    move-result-object v9

    .line 282
    :cond_2d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_30
    return-object v9

    .line 282
    :catchall_31
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static updateShutterSoundValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "shutterSoundValue"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "commonsettings"

    const-string v2, "name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingDefaultLoader$Record;->mProviderKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 166
    const-string v0, "capturingmodes"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 167
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    :cond_b
    const-string v0, "cameraparameters"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 170
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCameraParameterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    :cond_16
    const-string v0, "commonsettings"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCommonSettingTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    :cond_23
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 184
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->queryShutterSoundValue(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "shutterSoundValue":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCameraParameterTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->createCommonSettingTable(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    if-eqz v0, :cond_17

    .line 190
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/provider/AddOnSettingsProvider$MyOpenHelper;->updateShutterSoundValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 192
    :cond_17
    return-void
.end method
