.class public final enum Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchedBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum INFORMATION:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum VIDEO_EDITOR:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field public static final enum VIEWER:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 166
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "INTENT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 167
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "HISTORY"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 168
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "VIEWER"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->VIEWER:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 169
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "INFORMATION"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INFORMATION:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 170
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    const-string v1, "VIDEO_EDITOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->VIDEO_EDITOR:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 164
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->VIEWER:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INFORMATION:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->VIDEO_EDITOR:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

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
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .registers 1

    .prologue
    .line 164
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->$VALUES:[Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method
