.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAMERA_SWITCHING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_STORE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_STANDBY_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

.field public static final enum STATE_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;


# instance fields
.field final mCanApplicationBeFinished:Z

.field final mCanHandleAsynchronizedTask:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_NONE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 41
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_INITIALIZE"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 42
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_RESUME"

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 43
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_BASE"

    invoke-direct {v0, v1, v6, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 45
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_ZOOMING_BASE"

    invoke-direct {v0, v1, v7, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 46
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_STANDBY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 47
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_ZOOMING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 48
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_ZOOMING_IN_TOUCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 49
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_STANDBY_DIALOG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 50
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_AF_SEARCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 51
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_AF_SEARCH_IN_TOUCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 52
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 53
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_AF_DONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 54
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_AF_DONE_IN_TOUCH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 55
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 56
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_CAPTURE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 57
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 58
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_STORE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 59
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PHOTO_SELFTIMER_COUNTDOWN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 60
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_PAUSE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 61
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_WARNING"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 62
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_FINALIZE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 63
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    const-string v1, "STATE_CAMERA_SWITCHING"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    .line 36
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_BASE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_NEXT_CAPTURE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p3, "canHandleLazyInitializationTask"    # Z
    .param p4, "canBeFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-boolean p3, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 77
    iput-boolean p4, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;

    return-object v0
.end method


# virtual methods
.method public canApplicationBeFinished()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return v0
.end method

.method public canHandleAsynchronizedTask()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return v0
.end method
