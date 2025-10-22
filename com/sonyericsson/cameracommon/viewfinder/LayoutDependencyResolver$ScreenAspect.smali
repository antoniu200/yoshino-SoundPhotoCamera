.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;
.super Ljava/lang/Enum;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenAspect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field public static final enum EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field public static final enum NOT_DEFINED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field public static final enum SIXTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;


# instance fields
.field private final mScreenAspectRatio:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    const-string v1, "NOT_DEFINED"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    const-string v1, "SIXTEEN_NINE"

    const v2, 0x3fe38e39

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    const-string v1, "EIGHTEEN_NINE"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .param p3, "screenAspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->mScreenAspectRatio:F

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    return-object v0
.end method


# virtual methods
.method public getScreenAspectRatio()F
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->mScreenAspectRatio:F

    return v0
.end method
