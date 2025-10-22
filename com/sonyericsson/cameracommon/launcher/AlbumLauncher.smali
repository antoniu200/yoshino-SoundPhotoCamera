.class public final Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;
.super Landroid/app/Activity;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;
    }
.end annotation


# static fields
.field public static final EXTRA_BURST_BUCKETID:Ljava/lang/String; = "burst_bucketId"

.field public static final EXTRA_PLAYBACK:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field private static final EXTRA_PLAYBACK_DEFAULT:Z = false

.field public static final EXTRA_SOMCTYPE:Ljava/lang/String; = "somc_type"

.field private static final PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field public static final TAG:Ljava/lang/String; = "AlbumLauncher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    .line 160
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    .line 161
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z
    .param p5, "isFast"    # Z

    .prologue
    .line 174
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V

    .line 175
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z
    .param p5, "isFast"    # Z
    .param p6, "predictiveCaptureStoreInfo"    # Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    .prologue
    const/16 v4, 0x8

    .line 195
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonymobile.album.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    :goto_f
    if-eqz p5, :cond_17

    .line 201
    const-string v2, "com.sonyericsson.album.intent.extra.FAST_VIEW_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    :cond_17
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    if-ne v2, v3, :cond_5a

    .line 206
    sget-object v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :goto_2b
    if-eqz p4, :cond_32

    .line 213
    const-string v2, "burst_bucketId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    :cond_32
    if-eqz p6, :cond_3d

    .line 217
    const-string v2, "com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT"

    .line 219
    invoke-virtual {p6}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result v3

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 225
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_5e

    .line 226
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    :goto_4a
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    .line 232
    return-void

    .line 198
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isActivityAvailable":Z
    :cond_52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_f

    .line 208
    :cond_5a
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 228
    .restart local v1    # "isActivityAvailable":Z
    :cond_5e
    invoke-static {p0, p1, p2, v4}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchReviewApp(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_4a
.end method

.method public static launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V
    .registers 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p3, "predictiveCaptureStoreInfo"    # Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, "mimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v10, 0x9

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_18

    .line 245
    :cond_10
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "album image uri is empty."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.sonymobile.album.action.VIEW"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v7, "com.sonyericsson.album.intent.extra.FAST_VIEW_MODE"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v7, "com.sonyericsson.album.intent.extra.ALLOWED_ONLY"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v2, "intentUriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 255
    .local v4, "listIterator":Ljava/util/ListIterator;
    const/4 v6, 0x0

    .line 257
    .local v6, "uriTotalLength":I
    const/16 v1, 0x400

    .line 258
    .local v1, "intentLimit":I
    :goto_35
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 259
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 260
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 262
    if-le v1, v6, :cond_50

    .line 263
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 268
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_50
    const-string v7, "com.sonyericsson.album.intent.extra.ALLOWED_LIST"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 270
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    if-eqz p3, :cond_74

    .line 275
    const-string v7, "com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT"

    .line 277
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result v8

    .line 275
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    :cond_74
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    .line 283
    .local v3, "isActivityAvailable":Z
    if-eqz v3, :cond_89

    .line 284
    invoke-virtual {p0, v0, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    :goto_81
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    .line 290
    return-void

    .line 286
    :cond_89
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {p0, v7, v8, v10}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchReviewApp(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_81
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 342
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_1e

    .line 343
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    :cond_1e
    return-void
.end method

.method private launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "bucketId"    # I
    .param p4, "isBurst"    # Z

    .prologue
    const/4 v0, 0x0

    .line 312
    sget-object v1, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$1;->$SwitchMap$com$sonyericsson$cameracommon$launcher$AlbumLauncher$MimeType:[I

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher$MimeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 324
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 325
    const/4 v0, 0x1

    :goto_14
    return v0

    .line 316
    :pswitch_15
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_14

    .line 320
    :pswitch_19
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->playMpo(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_14

    .line 312
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method private static launchReviewApp(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :try_start_a
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_d} :catch_e

    .line 306
    :goto_d
    return-void

    .line 302
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private playMpo(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 353
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.android.camera3d"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 362
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_25

    .line 363
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    :cond_25
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "mimetype":Ljava/lang/String;
    packed-switch p1, :pswitch_data_20

    .line 147
    :goto_16
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    .line 148
    return-void

    .line 140
    :pswitch_1a
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    goto :goto_16

    .line 138
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 90
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "mimetype":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 92
    .local v4, "playback":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "somc_type"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 95
    .local v5, "somcType":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2c

    const/4 v2, 0x1

    .line 97
    .local v2, "isBurst":Z
    :cond_2c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "burst_bucketId"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "bucketId":I
    if-eqz v4, :cond_43

    .line 110
    :try_start_39
    invoke-direct {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/net/Uri;Ljava/lang/String;IZ)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    .line 120
    :cond_42
    :goto_42
    return-void

    .line 114
    :cond_43
    invoke-static {p0, v6, v3, v0, v2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V
    :try_end_49
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_42

    .line 117
    :catch_4a
    move-exception v1

    .line 118
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->finish()V

    goto :goto_42
.end method
