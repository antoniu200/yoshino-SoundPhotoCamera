.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchEventSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

.field public static final enum CAPTURE_AREA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

.field public static final enum FACE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

.field public static final enum PHOTO_BUTTON:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

.field public static final enum UNKNOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->UNKNOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    .line 179
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    const-string v1, "CAPTURE_AREA"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    .line 180
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->FACE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    .line 181
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    const-string v1, "PHOTO_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->UNKNOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->FACE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$TouchEventSource;

    return-object v0
.end method
