.class final enum Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
.super Ljava/lang/Enum;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

.field public static final enum STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;


# instance fields
.field private mPermissionGroupName:Ljava/lang/String;

.field private mPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDialogMessageId:I

.field private mPreDialogMessageId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v1, "CAMERA"

    const-string v3, "android.permission-group.CAMERA"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v4, v2

    .line 70
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 71
    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$000()I

    move-result v5

    sget v6, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_rationale_camera_txt:I

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 73
    new-instance v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v4, "MIC"

    const-string v6, "android.permission-group.MICROPHONE"

    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 76
    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$000()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_rationale_microphone_txt:I

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 78
    new-instance v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v4, "STORAGE"

    const-string v6, "android.permission-group.STORAGE"

    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 81
    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$000()I

    move-result v8

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_rationale_storage_txt:I

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 83
    new-instance v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    const-string v4, "LOCATION"

    const-string v6, "android.permission-group.LOCATION"

    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v10

    .line 85
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_rationale_location_txt:I

    sget v9, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_runtime_permission_rationale_location_txt:I

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    sput-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;II)V
    .registers 7
    .param p2    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "groupName"    # Ljava/lang/String;
    .param p5, "preDialogMessageId"    # I
    .param p6, "postDialogMessageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    .line 102
    iput p5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPreDialogMessageId:I

    .line 103
    iput p6, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPostDialogMessageId:I

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPermissionList:Ljava/util/List;

    return-object v0
.end method

.method public getPostDialogMessageId()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPostDialogMessageId:I

    return v0
.end method

.method public getPreDialogMessageId()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->mPreDialogMessageId:I

    return v0
.end method
