.class final enum Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
.super Ljava/lang/Enum;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

.field public static final enum MANDATORY:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

.field public static final enum OPTIONAL:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;


# instance fields
.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    const-string v1, "MANDATORY"

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->CAMERA:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->MIC:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->STORAGE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v3, v2, v6

    .line 132
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 136
    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$100()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;-><init>(Ljava/lang/String;ILjava/util/List;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->MANDATORY:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    .line 137
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    const-string v1, "OPTIONAL"

    new-array v2, v5, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->LOCATION:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    aput-object v3, v2, v4

    .line 138
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 139
    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->HIGHEST_PRIORITY:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$100()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;-><init>(Ljava/lang/String;ILjava/util/List;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->OPTIONAL:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    .line 130
    new-array v0, v6, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->MANDATORY:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->OPTIONAL:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;I)V
    .registers 5
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->mGroupList:Ljava/util/List;

    .line 147
    iput p4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->mPriority:I

    .line 148
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;

    return-object v0
.end method


# virtual methods
.method public getGroupList()Ljava/util/List;
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
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->mGroupList:Ljava/util/List;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionCategory;->mPriority:I

    return v0
.end method
