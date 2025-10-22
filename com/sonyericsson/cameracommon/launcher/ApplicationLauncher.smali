.class public final Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;
.super Ljava/lang/Object;
.source "ApplicationLauncher.java"


# static fields
.field private static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String; = null

.field private static final CROP_RETURN_DATA_REQUIRE:Ljava/lang/String; = "return-data"

.field private static final EXTRA_APP_ICON:Ljava/lang/String; = "extra_app_icon"

.field public static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

    sput-object v0, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bucketId"    # I
    .param p4, "somcType"    # I

    .prologue
    .line 103
    const/4 v1, 0x2

    if-ne p4, v1, :cond_8

    const/4 v0, 0x1

    .line 104
    .local v0, "isBurst":Z
    :goto_4
    invoke-static {p0, p2, p1, p3, v0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 105
    return-void

    .line 103
    .end local v0    # "isBurst":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;IIZ)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bucketId"    # I
    .param p4, "somcType"    # I
    .param p5, "isFast"    # Z

    .prologue
    .line 118
    const/4 v0, 0x2

    if-ne p4, v0, :cond_d

    const/4 v4, 0x1

    .local v4, "isBurst":Z
    :goto_4
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v5, p5

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    .line 120
    return-void

    .line 118
    .end local v4    # "isBurst":Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static launchEditorHighFrameRate(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 254
    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v5, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 259
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 263
    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 266
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_2a

    .line 267
    const/16 v4, 0xe

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 270
    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static launchLocationSourceSettings(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 197
    .local v2, "isActivityAvailable":Z
    if-eqz v2, :cond_19

    .line 199
    :try_start_16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 206
    :cond_19
    :goto_19
    return-void

    .line 202
    :catch_1a
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "launchLocationSourceSettings: failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public static launchOneShot(Landroid/app/Activity;I)Z
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 160
    const/4 v2, 0x1

    .line 162
    .local v2, "ret":Z
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    sget-object v3, Lcom/sonyericsson/cameracommon/intent/IntentConstants;->CAMERA_UI_ONE_SHOT_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    .line 169
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_13
    return v2

    .line 166
    :catch_14
    move-exception v0

    .line 167
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static launchOneShotCrop(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extraOutput"    # Landroid/net/Uri;
    .param p3, "cropValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 124
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "circle"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 126
    const-string v5, "circleCrop"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_15
    if-eqz p2, :cond_38

    .line 129
    const-string v5, "output"

    invoke-virtual {v1, v5, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    :goto_1c
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 141
    .local v3, "isActivityAvailable":Z
    if-eqz v3, :cond_37

    .line 143
    const/4 v5, 0x7

    :try_start_34
    invoke-virtual {p0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_37} :catch_3e

    .line 150
    :cond_37
    :goto_37
    return v4

    .line 131
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isActivityAvailable":Z
    :cond_38
    const-string v5, "return-data"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c

    .line 145
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isActivityAvailable":Z
    :catch_3e
    move-exception v0

    .line 146
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ApplicationLauncher"

    const-string v5, "launchOneShotCrop failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v4, 0x0

    goto :goto_37
.end method

.method public static launchPickPicture(Landroid/app/Activity;I)Z
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 179
    const/4 v2, 0x1

    .line 181
    .local v2, "ret":Z
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_10
    return v2

    .line 184
    :catch_11
    move-exception v0

    .line 185
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static playback(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;II)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mimetype"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bucketId"    # I
    .param p4, "somcType"    # I

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v2, "burst_bucketId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v2, "somc_type"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 83
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_2c

    .line 84
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    :cond_2c
    return-void
.end method

.method public static startCameraTouchBlock(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.touchblocker"

    const-string v3, "com.sonymobile.touchblocker.TouchBlockerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const-string v1, "launched_from_smallapp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    return-void
.end method

.method public static startResolvedActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 211
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 212
    .local v3, "resolvedIntent":Landroid/content/Intent;
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 220
    .local v2, "isActivityAvailable":Z
    if-eqz v2, :cond_1e

    .line 222
    :try_start_1b
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 229
    :cond_1e
    const/4 v4, 0x1

    :goto_1f
    return v4

    .line 223
    :catch_20
    move-exception v1

    .line 224
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "ApplicationLauncher"

    const-string v5, "startResolvedActivity failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v4, 0x0

    goto :goto_1f
.end method
