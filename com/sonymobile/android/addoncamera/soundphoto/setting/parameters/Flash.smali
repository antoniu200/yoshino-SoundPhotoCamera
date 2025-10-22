.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
.super Ljava/lang/Enum;
.source "Flash.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

.field public static final enum AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

.field public static final enum LED_ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

.field public static final enum RED_EYE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;


# instance fields
.field private final mCameraParameterValue:Ljava/lang/String;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    const-string v1, "AUTO"

    const v3, 0x7f0200c5

    const v4, 0x7f080235

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 31
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    const-string v4, "ON"

    const v6, 0x7f0200c6

    const v7, 0x7f080164

    const-string v8, "on"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 35
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    const-string v4, "RED_EYE"

    const v6, 0x7f0200c8

    const v7, 0x7f080167

    const-string v8, "red-eye"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->RED_EYE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 39
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    const-string v4, "OFF"

    const v6, 0x7f0200c7

    const v7, 0x7f080236

    const-string v8, "off"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 43
    new-instance v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    const-string v4, "LED_ON"

    const v6, 0x7f0200c9

    const v7, 0x7f080169

    const-string v8, "torch"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->LED_ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->RED_EYE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->LED_ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "cameraParameterValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mIconId:I

    .line 61
    iput p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mTextId:I

    .line 62
    iput-object p5, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mCameraParameterValue:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static getDefaultValue([Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    .registers 3
    .param p0, "options"    # [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .prologue
    .line 83
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    .line 84
    :cond_5
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    .line 88
    :goto_7
    return-object v0

    .line 85
    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 86
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->AUTO:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    goto :goto_7

    .line 88
    :cond_17
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    goto :goto_7
.end method

.method public static getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    .registers 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;>;"
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    move-result-object v0

    .line 69
    .local v0, "expectedOptions":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    if-eqz v3, :cond_3c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 70
    array-length v7, v0

    move v5, v6

    :goto_18
    if-ge v5, v7, :cond_3c

    aget-object v4, v0, v5

    .line 71
    .local v4, "value":Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "supportedValue":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->cameraParameterValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 73
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "supportedValue":Ljava/lang/String;
    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 79
    .end local v4    # "value":Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    :cond_3c
    new-array v5, v6, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    return-object v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;

    return-object v0
.end method


# virtual methods
.method public cameraParameterValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mCameraParameterValue:Ljava/lang/String;

    return-object v0
.end method

.method public iconId()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mIconId:I

    return v0
.end method

.method public key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->FLASH:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-object v0
.end method

.method public textId()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/Flash;->mTextId:I

    return v0
.end method
