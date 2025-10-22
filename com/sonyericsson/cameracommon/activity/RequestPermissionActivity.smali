.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;,
        Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    }
.end annotation


# static fields
.field private static HIGHEST_PRIORITY:I = 0x0

.field private static INVALID_ID:I = 0x0

.field private static LOWEST_PRIORITY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RequestPermissionActivity"


# instance fields
.field private final ID_FOR_POST_DIALOG:I

.field private final ID_FOR_PRE_DIALOG:I

.field private final REQUEST_CODE_FOR_PERMISSION:I

.field private mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

.field private mCurrentShownDialog:Landroid/app/AlertDialog;

.field private mPermissionStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    .line 61
    const v0, 0x7ffffffe

    sput v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->LOWEST_PRIORITY:I

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/16 v0, 0x100

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->REQUEST_CODE_FOR_PERMISSION:I

    .line 57
    const/16 v0, 0x201

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_PRE_DIALOG:I

    .line 58
    const/16 v0, 0x202

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->ID_FOR_POST_DIALOG:I

    .line 233
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 234
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 235
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createPermissionStateList(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v5, "permissionStateList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v8, :cond_5b

    aget-object v0, v7, v6

    .line 295
    .local v0, "category":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getGroupList()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "categoryGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1c
    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 299
    .local v2, "group":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    if-eqz p1, :cond_1c

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2e

    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2e

    .line 303
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 309
    .end local v2    # "group":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_58

    .line 310
    new-instance v9, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-direct {v9, p0, v0, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;Ljava/util/List;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 317
    .end local v0    # "category":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .end local v1    # "categoryGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    .end local v3    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    :cond_5b
    return-object v5
.end method

.method private decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .registers 4

    .prologue
    .line 400
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    .line 402
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 427
    :goto_6
    return-object v0

    .line 405
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez v2, :cond_e

    .line 407
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_6

    .line 410
    :cond_e
    const/4 v0, 0x0

    .line 411
    .local v0, "action":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v1

    .line 412
    .local v1, "requested":Z
    if-eqz v1, :cond_25

    .line 413
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->areAllPermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 414
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_6

    .line 416
    :cond_22
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_6

    .line 419
    :cond_25
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 420
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_6

    .line 422
    :cond_34
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    goto :goto_6
.end method

.method private doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z
    .registers 13
    .param p1, "action"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .prologue
    const/4 v5, 0x0

    .line 433
    new-array v2, v5, [Ljava/lang/String;

    .line 434
    .local v2, "permissionList":[Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v6, :cond_d

    .line 435
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestPermissionList()[Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_d
    sget-object v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$6;->$SwitchMap$com$sonyericsson$cameracommon$activity$RequestPermissionActivity$PermissionAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_ba

    .line 495
    :goto_18
    const/4 v5, 0x1

    :cond_19
    return v5

    .line 440
    :pswitch_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v4, "shouldShowPreDialogGroup":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    array-length v6, v2

    :goto_20
    if-ge v5, v6, :cond_5a

    aget-object v1, v2, v5

    .line 443
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 444
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_34
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 445
    .local v0, "gr":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 446
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v8, v9, :cond_34

    .line 447
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 448
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v0    # "gr":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 454
    .end local v1    # "permission":Ljava/lang/String;
    :cond_5a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_64

    .line 455
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;)V

    goto :goto_18

    .line 458
    :cond_64
    invoke-direct {p0, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPreDialog(Ljava/util/List;)V

    goto :goto_18

    .line 463
    .end local v4    # "shouldShowPreDialogGroup":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    :pswitch_68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v3, "shouldShowPostDialogGroup":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    array-length v7, v2

    move v6, v5

    :goto_6f
    if-ge v6, v7, :cond_a9

    aget-object v1, v2, v6

    .line 466
    .restart local v1    # "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_a6

    .line 467
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getRequestGroupList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_83
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 468
    .restart local v0    # "gr":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 469
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v9

    sget v10, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I

    if-eq v9, v10, :cond_83

    .line 470
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_83

    .line 471
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v0    # "gr":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    :cond_a6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 477
    .end local v1    # "permission":Ljava/lang/String;
    :cond_a9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_19

    .line 481
    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionPostDialog(Ljava/util/List;)V

    goto/16 :goto_18

    .line 486
    .end local v3    # "shouldShowPostDialogGroup":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    :pswitch_b4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    goto/16 :goto_18

    .line 438
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_68
        :pswitch_b4
    .end packed-switch
.end method

.method private doNextAction()V
    .registers 4

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    .line 383
    .local v0, "action":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    :goto_4
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v2, :cond_10

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 385
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->decideNextAction()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    move-result-object v0

    goto :goto_4

    .line 388
    :cond_10
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doAction(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;)Z

    move-result v1

    .line 389
    .local v1, "done":Z
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    if-ne v0, v2, :cond_1b

    .line 390
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 392
    :cond_1b
    if-nez v1, :cond_20

    .line 393
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    .line 395
    :cond_20
    return-void
.end method

.method private finishActivity()V
    .registers 3

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, "resultData":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finish()V

    .line 288
    return-void
.end method

.method private getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    .registers 10
    .param p1, "group"    # Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .prologue
    .line 641
    const-string v2, ""

    .line 642
    .local v2, "groupLabel":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, "groupName":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    .line 645
    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 646
    .local v1, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_24

    .line 647
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 648
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 649
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_23} :catch_25

    move-result-object v2

    .line 659
    .end local v1    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_24
    :goto_24
    return-object v2

    .line 654
    :catch_25
    move-exception v0

    .line 655
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RequestPermissionActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPermissionGroupLabel(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private isRestrictedMode()Z
    .registers 3

    .prologue
    .line 675
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 677
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1
.end method

.method private isSecure()Z
    .registers 3

    .prologue
    .line 681
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 683
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .registers 3
    .param p1, "permissionList"    # [Ljava/lang/String;

    .prologue
    .line 501
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->setRequested()V

    .line 505
    return-void
.end method

.method private showPermissionDialog(ILjava/util/List;)V
    .registers 15
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 522
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 523
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 525
    .local v2, "customLayout":Landroid/view/ViewGroup;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "appName":Ljava/lang/String;
    const/16 v7, 0x201

    if-ne p1, v7, :cond_90

    .line 530
    sget v7, Lcom/sonyericsson/cameracommon/R$layout;->permission_pre_dialog:I

    invoke-virtual {v5, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "customLayout":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 532
    .restart local v2    # "customLayout":Landroid/view/ViewGroup;
    sget v7, Lcom/sonyericsson/cameracommon/R$id;->alert_dialog_header_txt:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 533
    .local v4, "header":Landroid/widget/TextView;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_dialog1_message_txt:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    sget v7, Lcom/sonyericsson/cameracommon/R$id;->permission_list:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 538
    .local v6, "list":Landroid/widget/ListView;
    if-eqz v6, :cond_58

    .line 539
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v7, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 542
    :cond_58
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_dialog1_title_txt:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 547
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    new-instance v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$2;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 565
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 635
    .end local v4    # "header":Landroid/widget/TextView;
    .end local v6    # "list":Landroid/widget/ListView;
    :cond_8f
    :goto_8f
    return-void

    .line 567
    :cond_90
    const/16 v7, 0x202

    if-ne p1, v7, :cond_8f

    .line 568
    sget v7, Lcom/sonyericsson/cameracommon/R$layout;->permission_post_dialog:I

    invoke-virtual {v5, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2    # "customLayout":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 570
    .restart local v2    # "customLayout":Landroid/view/ViewGroup;
    sget v7, Lcom/sonyericsson/cameracommon/R$id;->alert_dialog_header_txt:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 571
    .restart local v4    # "header":Landroid/widget/TextView;
    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_dialog2_message1_txt:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 573
    sget v7, Lcom/sonyericsson/cameracommon/R$id;->permission_list:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 574
    .restart local v6    # "list":Landroid/widget/ListView;
    if-eqz v6, :cond_bb

    .line 575
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;

    invoke-direct {v7, p0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    :cond_bb
    sget v7, Lcom/sonyericsson/cameracommon/R$id;->alert_dialog_footer_txt:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 579
    .local v3, "footer":Landroid/widget/TextView;
    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_dialog2_message2_txt:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 581
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_dialog2_title_txt:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 587
    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_continue_button_txt:I

    new-instance v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;

    invoke-direct {v8, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$3;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    sget v7, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v8, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;

    invoke-direct {v8, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$4;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance v7, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;

    invoke-direct {v7, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$5;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 628
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_8f
.end method

.method private showPermissionPostDialog(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    const/16 v0, 0x202

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    .line 517
    return-void
.end method

.method private showPermissionPreDialog(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    const/16 v0, 0x201

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->showPermissionDialog(ILjava/util/List;)V

    .line 511
    return-void
.end method

.method private updateCurrentState()V
    .registers 9

    .prologue
    .line 323
    sget v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I

    add-int/lit8 v0, v6, -0x1

    .line 324
    .local v0, "currentPriority":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-eqz v6, :cond_12

    .line 325
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v0

    .line 333
    :cond_12
    const/4 v2, 0x0

    .line 334
    .local v2, "nextState":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    sget v6, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->LOWEST_PRIORITY:I

    add-int/lit8 v1, v6, 0x1

    .line 335
    .local v1, "nextPriority":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 336
    .local v5, "state":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->getCategory()Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->getPriority()I

    move-result v3

    .line 337
    .local v3, "priority":I
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;->isRequested()Z

    move-result v4

    .line 338
    .local v4, "requested":Z
    if-ge v0, v3, :cond_1d

    if-ge v3, v1, :cond_1d

    if-nez v4, :cond_1d

    .line 339
    move-object v2, v5

    .line 340
    move v1, v3

    goto :goto_1d

    .line 343
    .end local v3    # "priority":I
    .end local v4    # "requested":Z
    .end local v5    # "state":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;
    :cond_3e
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-ne v6, v2, :cond_46

    .line 344
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 359
    :goto_45
    return-void

    .line 346
    :cond_46
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    goto :goto_45
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x80000

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->activity_request_permission:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->setContentView(I)V

    .line 244
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isRestrictedMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_27

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 262
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_3e

    .line 266
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    .line 282
    :cond_26
    :goto_26
    return-void

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1d

    .line 269
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3e
    const-string v2, "permissions_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 272
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->createPermissionStateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->updateCurrentState()V

    .line 274
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    if-nez v2, :cond_26

    .line 276
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->finishActivity()V

    goto :goto_26
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 666
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 667
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentPermissionState:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionState;

    .line 668
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mPermissionStateList:Ljava/util/List;

    .line 669
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->mCurrentShownDialog:Landroid/app/AlertDialog;

    .line 672
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 376
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->doNextAction()V

    .line 379
    return-void
.end method
