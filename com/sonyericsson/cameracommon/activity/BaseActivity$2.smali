.class Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1505
    packed-switch p1, :pswitch_data_22

    .line 1524
    :cond_3
    :goto_3
    :pswitch_3
    const/4 v1, 0x1

    return v1

    .line 1509
    :pswitch_5
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .local v0, "notGrantedPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;->val$permissions:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->getSelfPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1514
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$2;->this$0:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    goto :goto_3

    .line 1505
    nop

    :pswitch_data_22
    .packed-switch 0xc
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
