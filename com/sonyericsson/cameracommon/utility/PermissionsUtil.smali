.class public Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PermissionsUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    .line 69
    :cond_6
    :goto_6
    return v2

    .line 51
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "notGrantedPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-static {p0, p2, v3, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->getSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "permissions_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    const/4 v2, 0x1

    goto :goto_6
.end method

.method public static getSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "granted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "notGranted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_7

    .line 112
    :cond_6
    return-void

    .line 91
    :cond_7
    array-length v2, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_6

    aget-object v0, p1, v1

    .line 92
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1b

    .line 98
    if-eqz p3, :cond_18

    .line 99
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 107
    :cond_1b
    if-eqz p2, :cond_18

    .line 108
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method public static requestSdCardGranted(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_key_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 126
    return-void
.end method
