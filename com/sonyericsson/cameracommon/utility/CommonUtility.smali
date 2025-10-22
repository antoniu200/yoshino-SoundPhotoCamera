.class public Lcom/sonyericsson/cameracommon/utility/CommonUtility;
.super Ljava/lang/Object;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommonUtility"

.field private static final WRITE_MEDIA_STORAGE:Ljava/lang/String; = "android.permission.WRITE_MEDIA_STORAGE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpFile([BLjava/lang/String;)V
    .registers 8
    .param p0, "data"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 273
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_23

    .line 274
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_19
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_35

    move-object v2, v3

    .line 279
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1d
    if-eqz v2, :cond_22

    .line 281
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2c

    .line 286
    :cond_22
    :goto_22
    return-void

    .line 275
    :catch_23
    move-exception v0

    .line 276
    .local v0, "e1":Ljava/io/IOException;
    :goto_24
    const-string v4, "CommonUtility"

    const-string v5, "dumpFile Open / Write Error"

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 282
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_2c
    move-exception v1

    .line 283
    .local v1, "e2":Ljava/io/IOException;
    const-string v4, "CommonUtility"

    const-string v5, "dumpFile Close Error"

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 275
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_35
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_24
.end method

.method private static getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 190
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_34

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 192
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2a

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2a

    .line 193
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 194
    .local v1, "flags":I
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_20

    .line 196
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    .line 214
    .end local v1    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_1f
    return-object v4

    .line 197
    .restart local v1    # "flags":I
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_20
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_27

    .line 199
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_1f

    .line 202
    :cond_27
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_1f

    .line 205
    .end local v1    # "flags":I
    :cond_2a
    const-string v4, "CommonUtility"

    const-string v5, "Can\'t get packeage info. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_1f

    .line 209
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_34
    const-string v4, "CommonUtility"

    const-string v5, "Can\'t get packeage manager. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_1f

    .line 212
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_3e
    move-exception v0

    .line 213
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CommonUtility"

    const-string v5, "Can\'t get packeage info. assume user app."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    goto :goto_1f
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 256
    if-nez p0, :cond_4

    .line 263
    :cond_3
    :goto_3
    return-object v1

    .line 257
    :cond_4
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 258
    .local v0, "lastDotPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 260
    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 118
    const/4 v0, 0x1

    .line 123
    :goto_c
    return v0

    .line 120
    :cond_d
    const/4 v0, 0x0

    .line 121
    const-string v1, "CommonUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static isCoreCameraApp(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string v0, "com.sonyericsson.android.camera"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isEventContainedInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 223
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 224
    .local v0, "locationOfView":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 227
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method public static isMirroringRequired(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "result":Z
    if-nez p0, :cond_5

    move v2, v1

    .line 104
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_4
    return v2

    .line 99
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->capturing_mode_selector_bidicheck_string:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "checkString":Ljava/lang/String;
    new-instance v3, Ljava/text/Bidi;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v3, "temp":Ljava/text/Bidi;
    invoke-virtual {v3}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v1

    move v2, v1

    .line 104
    .restart local v2    # "result":I
    goto :goto_4
.end method

.method public static isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "result":Z
    if-nez p1, :cond_5

    move v3, v2

    .line 86
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_4
    return v3

    .line 77
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_10

    .line 80
    const/4 v2, 0x1

    :goto_e
    move v3, v2

    .line 86
    .restart local v3    # "result":I
    goto :goto_4

    .line 81
    .end local v3    # "result":I
    :catch_10
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isPreinstalledApp(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->SYSTEM:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->OTHER:Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$ApplicationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static removeExcludeItemsFromList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "srcList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p1, "excludingItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .local v0, "dst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 56
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "packagename":Ljava/lang/String;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 64
    .end local v1    # "packagename":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_33
    return-object v0
.end method

.method public static removeFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 240
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 241
    .local v0, "lastDotPos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 246
    .end local p0    # "filename":Ljava/lang/String;
    :cond_9
    :goto_9
    return-object p0

    .line 243
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_9

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method public static sameStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "arg1"    # Ljava/lang/String;
    .param p1, "arg2"    # Ljava/lang/String;

    .prologue
    .line 296
    if-nez p0, :cond_8

    .line 297
    if-nez p1, :cond_6

    .line 298
    const/4 v0, 0x1

    .line 303
    :goto_5
    return v0

    .line 300
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 303
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static shouldStorageForceInternal(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 178
    const-string v1, "android.permission.WRITE_MEDIA_STORAGE"

    if-eqz v1, :cond_e

    const-string v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 183
    :cond_d
    :goto_d
    return v0

    .line 180
    :cond_e
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 183
    const/4 v0, 0x0

    goto :goto_d
.end method
