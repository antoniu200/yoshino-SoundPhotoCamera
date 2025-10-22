.class final enum Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
.super Ljava/lang/Enum;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "XperiaTipsLaunchTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field private static final EVENT_NAME:Ljava/lang/String; = "launch_trigger"

.field public static final enum HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1537
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HW_KEY_SLEEP_OR_LOCK"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1538
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HW_KEY_OTHER"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1539
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "SHORTCUT_LOCKSCREEN"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1540
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "POWER_KEY_DOUBLE_PRESS"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1541
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HOME_APP"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1542
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "NOT_TARGET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1536
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

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
    .line 1536
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .prologue
    .line 1536
    invoke-static {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V

    return-void
.end method

.method private static setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "launchedBy"    # Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .prologue
    .line 1549
    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY_LOCK:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v3, :cond_25

    .line 1550
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1564
    .local v1, "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    :goto_6
    :try_start_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1565
    .local v2, "v":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "launch_trigger"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v3, "data"

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/getmore/api/ContributionContract$Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_24
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_24} :catch_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_5b

    .line 1574
    .end local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    .end local v2    # "v":Landroid/content/ContentValues;
    :cond_24
    :goto_24
    return-void

    .line 1551
    :cond_25
    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v3, :cond_2c

    .line 1552
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .restart local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    goto :goto_6

    .line 1553
    .end local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    :cond_2c
    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v3, :cond_33

    .line 1554
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .restart local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    goto :goto_6

    .line 1555
    .end local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    :cond_33
    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->POWER_KEY_DOUBLE_TAP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v3, :cond_3a

    .line 1556
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .restart local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    goto :goto_6

    .line 1557
    .end local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    :cond_3a
    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HOME:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v3, :cond_24

    .line 1558
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .restart local v1    # "launchTrigger":Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    goto :goto_6

    .line 1568
    :catch_41
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const-string v3, "ResearchUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not found getmore api : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 1570
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_5b
    move-exception v3

    goto :goto_24
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1536
    const-class v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    .registers 1

    .prologue
    .line 1536
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    return-object v0
.end method
