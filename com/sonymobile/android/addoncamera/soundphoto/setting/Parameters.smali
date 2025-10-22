.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
.super Ljava/lang/Enum;
.source "Parameters.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum FACING:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum FOCUS_MODE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum HDR:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum SCENE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum STABILIZER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

.field public static final enum WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;


# instance fields
.field private final mIsPersistent:Z

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "AUTO_REVIEW"

    const v2, 0x7f0801da

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "FACING"

    const v2, 0x7f0800be

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FACING:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 25
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "FLASH"

    const v2, 0x7f080168

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 28
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "SELF_TIMER"

    const v2, 0x7f080234

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 32
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "SCENE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SCENE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 35
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "WHITE_BALANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 38
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "FOCUS_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FOCUS_MODE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 41
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "HDR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->HDR:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 44
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    const-string v1, "STABILIZER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->STABILIZER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FACING:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SCENE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->WHITE_BALANCE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FOCUS_MODE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->HDR:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->STABILIZER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5
    .param p3, "textId"    # I
    .param p4, "isPersistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->mTextId:I

    .line 54
    iput-boolean p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->mIsPersistent:Z

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-object v0
.end method


# virtual methods
.method public isPersistent()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->mIsPersistent:Z

    return v0
.end method

.method public textId()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->mTextId:I

    return v0
.end method
