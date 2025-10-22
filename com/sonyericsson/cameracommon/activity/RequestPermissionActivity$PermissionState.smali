.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionState"
.end annotation


# instance fields
.field private final mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

.field private final mRequestGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mRequested:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
    .param p2, "category"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p3, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    .line 180
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    .line 182
    return-void
.end method


# virtual methods
.method public areAllPermissionsGranted()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "allPermissions":[Ljava/lang/String;
    array-length v4, v0

    move v3, v2

    :goto_7
    if-ge v3, v4, :cond_17

    aget-object v1, v0, v3

    .line 218
    .local v1, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_14

    .line 223
    .end local v1    # "permission":Ljava/lang/String;
    :goto_13
    return v2

    .line 217
    .restart local v1    # "permission":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 223
    .end local v1    # "permission":Ljava/lang/String;
    :cond_17
    const/4 v2, 0x1

    goto :goto_13
.end method

.method public getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    return-object v0
.end method

.method public getRequestGroupList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestPermissionList()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    if-eqz v3, :cond_3d

    .line 203
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 204
    .local v0, "group":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPermissionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, "permission":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 208
    .end local v0    # "group":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .end local v1    # "permission":Ljava/lang/String;
    :cond_34
    new-array v3, v6, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 211
    :goto_3c
    return-object v3

    :cond_3d
    new-array v3, v6, [Ljava/lang/String;

    goto :goto_3c
.end method

.method public isRequested()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    return v0
.end method

.method public setRequested()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mCategory:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Group num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequestGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
