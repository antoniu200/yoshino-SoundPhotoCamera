.class final enum Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
.super Ljava/lang/Enum;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PermissionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

.field public static final enum UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "UPDATE_STATE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 164
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "DO_NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 165
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "REQUEST_PERMISSIONS"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 166
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "SHOW_POST_DIALOG"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 167
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->UPDATE_STATE:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->DO_NOTHING:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->REQUEST_PERMISSIONS:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->SHOW_POST_DIALOG:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->FINISH:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;
    .registers 1

    .prologue
    .line 162
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAction;

    return-object v0
.end method
