.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;
.super Landroid/app/Activity;
.source "RequestPermissionSdCardActivity.java"


# static fields
.field public static final EXTRA_UUID:Ljava/lang/String; = "extra_key_uuid"

.field public static final TAG:Ljava/lang/String; = "RequestPermissionSdCardActivity"


# instance fields
.field private final FLAG_SD_PERMISSION:I

.field private final REQUEST_CODE_SD_CARD_GRANTED:I

.field private final REQUEST_CODE_STORAGE_VOLUME_ACCESS:I

.field private mCurrentShownDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->REQUEST_CODE_SD_CARD_GRANTED:I

    .line 46
    const/16 v0, 0x200

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->REQUEST_CODE_STORAGE_VOLUME_ACCESS:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->FLAG_SD_PERMISSION:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    return-void
.end method

.method private finish(I)V
    .registers 3
    .param p1, "result"    # I

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, "resultData":Landroid/content/Intent;
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish()V

    .line 77
    return-void
.end method

.method private requestPermissionSdCard(Ljava/lang/String;)V
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 81
    .local v1, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 83
    .local v2, "vol":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 84
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const/16 v4, 0x100

    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "vol":Landroid/os/storage/StorageVolume;
    :cond_39
    return-void
.end method

.method private showPermissionDialog()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 108
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 109
    .local v2, "customLayout":Landroid/view/ViewGroup;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "appName":Ljava/lang/String;
    sget v5, Lcom/sonyericsson/cameracommon/R$layout;->permission_post_dialog_sd_card:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "customLayout":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 114
    .restart local v2    # "customLayout":Landroid/view/ViewGroup;
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->alert_dialog_header_txt:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, "header":Landroid/widget/TextView;
    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sd_permission_dialog_message2_txt:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 117
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sd_permission_dialog_title_txt:I

    .line 118
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    .line 117
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 123
    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_sd_permission_dialog_continue_button_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    new-instance v5, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$3;

    invoke-direct {v5, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$3;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 161
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 164
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    sparse-switch p1, :sswitch_data_30

    .line 206
    :goto_7
    return-void

    .line 175
    :sswitch_8
    packed-switch p2, :pswitch_data_3a

    goto :goto_7

    .line 177
    :pswitch_c
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_23

    .line 179
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v0, v2, 0x3

    .line 180
    .local v0, "takeFlags":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 184
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    goto :goto_7

    .line 189
    .end local v0    # "takeFlags":I
    :cond_23
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    goto :goto_7

    .line 194
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_28
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->showPermissionDialog()V

    goto :goto_7

    .line 200
    :sswitch_2c
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    goto :goto_7

    .line 173
    :sswitch_data_30
    .sparse-switch
        0x100 -> :sswitch_8
        0x200 -> :sswitch_2c
    .end sparse-switch

    .line 175
    :pswitch_data_3a
    .packed-switch -0x1
        :pswitch_c
        :pswitch_28
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->activity_request_permission:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_key_uuid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 65
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->requestPermissionSdCard(Ljava/lang/String;)V

    .line 71
    :goto_1b
    return-void

    .line 67
    :cond_1c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->showPermissionDialog()V

    goto :goto_1b
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    .line 102
    :cond_b
    return-void
.end method
