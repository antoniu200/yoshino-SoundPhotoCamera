.class public final enum Lcom/sonyericsson/cameracommon/utility/PerfLog;
.super Ljava/lang/Enum;
.source "PerfLog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/utility/PerfLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum ACTIVITY_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum ACTIVITY_ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum ACTIVITY_ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum ACTIVITY_ON_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum ACTIVITY_ON_STOP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum APPLICATION_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BIND_SYSMON_SERVICE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BURST_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_PREPARE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAMERA_BYPASS_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAMERA_EXTENSION_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAMERA_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAMERA_SET_PREVIEW_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAMERA_START_PREVIEW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum CAPTURE_BUTTON_TAP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum EVF_REQUEST_RESIZE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum FAST_PRE_CAPTURE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum FAST_PRE_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum FAST_STORE_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final IS_ENABLE:Z

.field public static final enum MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum MODE_CHANGE_TASK_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum MODE_CHANGE_TASK_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum PARAMETER_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum START_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum STATE_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum STOP_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum STORAGE_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum SURFACE_CREATED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum SURFACE_DESTROYED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum SWIPE_ANIMATION_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum SWIPE_ANIMATION_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field private static final TAG:Ljava/lang/String; = "CAMPERF"

.field public static final enum TASK_INFLATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum THUMBNAIL_SHOW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

.field public static final enum VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "APPLICATION_ON_CREATE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 23
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "APPLICATION_PRELOAD_THREAD"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "ACTIVITY_ON_CREATE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 26
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "ACTIVITY_ON_RESUME"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "ACTIVITY_ON_PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 28
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "ACTIVITY_ON_STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 29
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "ACTIVITY_ON_DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAMERA_OPEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAMERA_EXTENSION_OPEN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_EXTENSION_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAMERA_BYPASS_OPEN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_BYPASS_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAMERA_START_PREVIEW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_START_PREVIEW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAMERA_SET_PREVIEW_DISPLAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_SET_PREVIEW_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 37
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "SURFACE_CREATED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_CREATED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "SURFACE_CHANGED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "SURFACE_DESTROYED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_DESTROYED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "EVF_REQUEST_RESIZE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->EVF_REQUEST_RESIZE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BIND_SYSMON_SERVICE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "PARAMETER_MANAGER_SETUP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->PARAMETER_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "STATE_RESUME"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STATE_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "VIEWFINDER_SETUP_HEADUP_DISPLAY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "VIEWFINDER_FIRST_DRAW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "STORAGE_MANAGER_SETUP"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "DCF_PATH_BUILDER_SCAN"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "SWIPE_ANIMATION_START"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "SWIPE_ANIMATION_END"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SWIPE_ANIMATION_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "MODE_CHANGE_TASK_START"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "MODE_CHANGE_TASK_END"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "MODE_CHANGE_SHOW_SURFACE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "START_REC"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->START_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "STOP_REC"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STOP_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "CAPTURE_BUTTON_TAP"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "THUMBNAIL_SHOW"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "STORE_COMPLETE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BURST_STORE_COMPLETE"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "FAST_CAMERA_BUTTON_INTENT_RECEIVED"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "FAST_PRE_SCAN"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 70
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "FAST_PRE_CAPTURE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "FAST_STORE_DONE"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_STORE_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_PREPARE"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 74
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_REQUEST_SNAPSHOT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_SHUTTER_DONE"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 76
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_SNAPSHOT_DONE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 77
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_IMAGE_AVAILABLE"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "BYPASSCAMERA_ON_STORE_COMPLETE"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 80
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "TASK_VIEW_FINDER_INITIALIZATION"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 81
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    const-string v1, "TASK_INFLATE"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PerfLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 20
    const/16 v0, 0x2e

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/PerfLog;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->APPLICATION_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->APPLICATION_PRELOAD_THREAD:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_CREATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_STOP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->ACTIVITY_ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_EXTENSION_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_BYPASS_OPEN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_START_PREVIEW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAMERA_SET_PREVIEW_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_CREATED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SURFACE_DESTROYED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->EVF_REQUEST_RESIZE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BIND_SYSMON_SERVICE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->PARAMETER_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STATE_RESUME:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->VIEWFINDER_SETUP_HEADUP_DISPLAY:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->VIEWFINDER_FIRST_DRAW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORAGE_MANAGER_SETUP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SWIPE_ANIMATION_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->SWIPE_ANIMATION_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_TASK_START:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_TASK_END:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->MODE_CHANGE_SHOW_SURFACE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->START_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STOP_REC:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->CAPTURE_BUTTON_TAP:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BURST_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_CAMERA_BUTTON_INTENT_RECEIVED:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_PRE_SCAN:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_PRE_CAPTURE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->FAST_STORE_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_PREPARE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_REQUEST_SNAPSHOT:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_SHUTTER_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_SNAPSHOT_DONE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_IMAGE_AVAILABLE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->BYPASSCAMERA_ON_STORE_COMPLETE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/PerfLog;

    .line 86
    const-string v0, "CAMPERF"

    .line 87
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->IS_ENABLE:Z

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->mText:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "CAMPERF"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/PerfLog;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/PerfLog;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/PerfLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/PerfLog;

    return-object v0
.end method


# virtual methods
.method public begin()V
    .registers 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_1c

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->log(Ljava/lang/String;)V

    .line 99
    :cond_1c
    return-void
.end method

.method public end()V
    .registers 3

    .prologue
    .line 102
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_1c

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->log(Ljava/lang/String;)V

    .line 105
    :cond_1c
    return-void
.end method

.method public transit()V
    .registers 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->IS_ENABLE:Z

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PerfLog;->mText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->log(Ljava/lang/String;)V

    .line 111
    :cond_9
    return-void
.end method
