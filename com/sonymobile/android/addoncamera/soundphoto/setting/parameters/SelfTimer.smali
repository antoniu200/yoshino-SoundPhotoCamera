.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;
.super Ljava/lang/Enum;
.source "SelfTimer.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
.implements Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
        "Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

.field public static final enum LONG:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

.field public static final enum SHORT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;


# instance fields
.field private final mButtonType:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

.field private final mDuration:I

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    const-string v1, "LONG"

    const v3, 0x7f020103

    const v4, 0x7f08022c

    const/16 v5, 0x2710

    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_LONG:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->LONG:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .line 30
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    const-string v4, "SHORT"

    const v6, 0x7f020104

    const v7, 0x7f08022e

    const/16 v8, 0xbb8

    sget-object v9, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->SELFTIMER_SHORT:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->SHORT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .line 35
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    const-string v4, "OFF"

    const v6, 0x7f020105

    const v7, 0x7f080236

    sget-object v9, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    move v5, v11

    move v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;-><init>(Ljava/lang/String;IIIILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->LONG:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->SHORT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .registers 7
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "duration"    # I
    .param p6, "buttonType"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mIconId:I

    .line 50
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mTextId:I

    .line 51
    iput p5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mDuration:I

    .line 52
    iput-object p6, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mButtonType:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .line 53
    return-void
.end method

.method public static getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;
    .registers 1

    .prologue
    .line 76
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;

    return-object v0
.end method


# virtual methods
.method public getButtonType()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mButtonType:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    return-object v0
.end method

.method public getCountDownIconId()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method public getDurationInMillisecond()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mDuration:I

    return v0
.end method

.method public iconId()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mIconId:I

    return v0
.end method

.method public key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->SELF_TIMER:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-object v0
.end method

.method public textId()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/SelfTimer;->mTextId:I

    return v0
.end method
