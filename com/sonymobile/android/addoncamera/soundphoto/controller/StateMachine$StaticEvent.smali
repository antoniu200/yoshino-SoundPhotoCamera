.class public final enum Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StaticEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_DEVICE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_SETTING_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_STOP_BUFFERING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

.field public static final enum EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_PHOTO_STACK_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 158
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 159
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_FACE_DETECTED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 160
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ZOOM_CHANGED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 161
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_ORIENTATION_CHANGED"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 162
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_RECORD_PROGRESS_UPDATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 163
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_STOP_BUFFERING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_STOP_BUFFERING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 164
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_SETTING_CHANGED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_SETTING_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 165
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_LAZY_INITIALIZATION_TASK_RUN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 166
    new-instance v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    const-string v1, "EVENT_ON_DEVICE_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_DEVICE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    .line 156
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_PHOTO_STACK_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_HEAD_UP_DISPLAY_INITIALIZED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_RECORD_PROGRESS_UPDATED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_STOP_BUFFERING:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_SETTING_CHANGED:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->EVENT_ON_DEVICE_ERROR:Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->$VALUES:[Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/controller/StateMachine$StaticEvent;

    return-object v0
.end method
