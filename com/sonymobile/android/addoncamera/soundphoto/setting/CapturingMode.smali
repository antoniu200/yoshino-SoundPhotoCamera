.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
.super Ljava/lang/Enum;
.source "CapturingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

.field public static final enum FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

.field public static final enum MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final cameraId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 20
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 24
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->cameraId:I

    .line 31
    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultMode"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .prologue
    .line 47
    move-object v1, p1

    .line 49
    .local v1, "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :try_start_1
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 53
    :goto_5
    return-object v1

    .line 50
    :catch_6
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static getDefaultValue()Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method public static translateIdToCapturingMode(I)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 2
    .param p0, "cameraId"    # I

    .prologue
    .line 59
    packed-switch p0, :pswitch_data_c

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :goto_4
    return-object v0

    .line 61
    .end local v0    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :pswitch_5
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->MAIN:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 62
    .restart local v0    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    goto :goto_4

    .line 64
    .end local v0    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    :pswitch_8
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->FRONT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    .line 65
    .restart local v0    # "mode":Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    goto :goto_4

    .line 59
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/CapturingMode;

    return-object v0
.end method
