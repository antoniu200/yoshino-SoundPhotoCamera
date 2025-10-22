.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;
.super Ljava/lang/Enum;
.source "AutoReview.java"

# interfaces
.implements Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;",
        ">;",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

.field public static final enum EDIT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

.field public static final enum OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

.field public static final enum ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;


# instance fields
.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    const-string v1, "ON"

    const v2, 0x7f080237

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    .line 24
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    const-string v1, "OFF"

    const v2, 0x7f080236

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    .line 26
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    const-string v1, "EDIT"

    const v2, 0x7f0801dd

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->ON:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->OFF:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "textId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->mTextId:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;

    return-object v0
.end method


# virtual methods
.method public iconId()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, -0x1

    return v0
.end method

.method public key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;->AUTO_REVIEW:Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    return-object v0
.end method

.method public textId()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/parameters/AutoReview;->mTextId:I

    return v0
.end method
