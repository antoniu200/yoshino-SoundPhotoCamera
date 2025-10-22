.class public Lcom/sonymobile/cameracommon/research/ResearchUtil;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearCaptureTriggerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$TryPanoramaTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$BackWorkerThreadFactory;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    }
.end annotation


# static fields
.field private static final MAX_NUM_SHOOTING_INFO:I = 0x64

.field private static final OVER_MAX_NUM_SHOOTING_INFO:Ljava/lang/String; = "_OVER_MAX_NUM"

.field public static final TAG:Ljava/lang/String; = "ResearchUtil"

.field private static final sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# instance fields
.field private mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCountRecordResume:I

.field private mCountRecordSnapshot:I

.field private mIsFailedToOpenCamera:Z

.field private mIsViewEventSent:Z

.field private mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

.field private mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

.field private mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 223
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 221
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 225
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    .line 227
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    .line 232
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    .line 234
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    .line 236
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    .line 239
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 1184
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1461
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return v0
.end method

.method static synthetic access$2702(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p1
.end method

.method static synthetic access$2708(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p1
.end method

.method static synthetic access$2808(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .registers 3
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .registers 1

    .prologue
    .line 259
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-object v0
.end method

.method private sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 1057
    iget-object v7, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1058
    return-void
.end method

.method private sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1650
    .local p2, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1651
    return-void
.end method

.method private setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V
    .registers 11
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .prologue
    .line 411
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 413
    .local v0, "gaLaunchedBy":Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    sget-object v6, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_52

    .line 447
    :goto_d
    const-string v6, "gagtm-launchedBy"

    .line 448
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v7

    .line 447
    invoke-static {v6, v7}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    .line 451
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V
    invoke-static {v6, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->access$1600(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;)V

    .line 452
    return-void

    .line 415
    :pswitch_23
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 416
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v5

    .line 417
    .local v5, "isOneShot":Z
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isLaunchedByPowerKeyDoubleTap()Z

    move-result v4

    .line 418
    .local v4, "isLaunchedByPowerKeyDoubleTap":Z
    const-string v6, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 419
    .local v2, "hasExtra":Z
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    .line 427
    .local v1, "hasCategory":Z
    if-eqz v2, :cond_42

    if-eqz v1, :cond_42

    .line 428
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    goto :goto_d

    .line 429
    :cond_42
    if-eqz v5, :cond_47

    .line 430
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    goto :goto_d

    .line 431
    :cond_47
    if-eqz v4, :cond_4c

    .line 432
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->POWER_KEY_DOUBLE_TAP:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    goto :goto_d

    .line 434
    :cond_4c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->HOME:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 436
    goto :goto_d

    .line 439
    .end local v1    # "hasCategory":Z
    .end local v2    # "hasExtra":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isLaunchedByPowerKeyDoubleTap":Z
    .end local v5    # "isOneShot":Z
    :pswitch_4f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;->VIEWER:Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;

    .line 440
    goto :goto_d

    .line 413
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_23
        :pswitch_4f
    .end packed-switch
.end method

.method private setTime(ZJ)V
    .registers 6
    .param p1, "isStart"    # Z
    .param p2, "time"    # J

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1500
    return-void
.end method


# virtual methods
.method public clearCaptureTrigger()V
    .registers 4

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearCaptureTriggerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearCaptureTriggerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1411
    return-void
.end method

.method public clearFaceNum()V
    .registers 4

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method public clearTemporarySettingValues()V
    .registers 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1192
    return-void
.end method

.method public incrementCountRecordResume()V
    .registers 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 910
    return-void
.end method

.method public incrementCountSnapshotInRecording()V
    .registers 4

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 271
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    .line 274
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_12

    .line 275
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$BackWorkerThreadFactory;

    invoke-direct {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$BackWorkerThreadFactory;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 279
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public onDestroy()V
    .registers 7

    .prologue
    .line 375
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 378
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/16 v2, 0x3e8

    :try_start_10
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_15} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_15} :catch_28

    .line 387
    :goto_15
    return-void

    .line 379
    :catch_16
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "ResearchUtil"

    const-string v3, "OnDestroyTask has been interrupted."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 381
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v0

    .line 382
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "ResearchUtil"

    const-string v3, "OnDestroyTask failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 383
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_28
    move-exception v0

    .line 384
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "ResearchUtil"

    const-string v3, "OnDestroyTask is Timeout."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public onPause(Z)V
    .registers 5
    .param p1, "isSameActivity"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public onResume(Z)V
    .registers 5
    .param p1, "isPanorama"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public sendCameraNotAvailableEvent()V
    .registers 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V
    .registers 5
    .param p1, "coolMode"    # Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;
    .param p2, "isRecording"    # Z

    .prologue
    .line 568
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object v0

    .line 570
    .local v0, "forceQuit":Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    .line 571
    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V
    .registers 10
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "action"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Action;
    .param p3, "label"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Label;

    .prologue
    .line 1025
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V

    .line 1026
    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V
    .registers 12
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "action"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Action;
    .param p3, "label"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Label;
    .param p4, "value"    # J

    .prologue
    const/4 v3, 0x0

    .line 1037
    if-nez p2, :cond_d

    move-object v2, v3

    .line 1038
    .local v2, "strAction":Ljava/lang/String;
    :goto_4
    if-nez p3, :cond_12

    .local v3, "strLabel":Ljava/lang/String;
    :goto_6
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 1040
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1041
    return-void

    .line 1037
    .end local v2    # "strAction":Ljava/lang/String;
    .end local v3    # "strLabel":Ljava/lang/String;
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1038
    .restart local v2    # "strAction":Ljava/lang/String;
    :cond_12
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "category"    # Lcom/sonymobile/cameracommon/research/parameters/Event$Category;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1051
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1052
    return-void
.end method

.method public sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "before"    # Ljava/lang/String;
    .param p3, "after"    # Ljava/lang/String;

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1689
    return-void
.end method

.method public sendLowBatteryEvent(ZZ)V
    .registers 6
    .param p1, "isOnStartup"    # Z
    .param p2, "isRecording"    # Z

    .prologue
    .line 581
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object v1

    .line 582
    .local v1, "lowBatteryMitigation":Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object v0

    .line 584
    .local v0, "forceQuit":Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v2, v1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    .line 585
    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZ)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "isHeated"    # Z

    .prologue
    .line 1594
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    .line 1595
    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "isHeated"    # Z
    .param p5, "batteryLevel"    # Ljava/lang/String;

    .prologue
    .line 1608
    iget-object v7, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;-><init>(Ljava/lang/String;JZLjava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1609
    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZ)V
    .registers 13
    .param p1, "userOperation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .param p2, "isThermalStop"    # Z
    .param p3, "isLowBatteryStop"    # Z
    .param p4, "recTimeMillis"    # I
    .param p5, "isLaunchViewerAfterRec"    # Z

    .prologue
    .line 742
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;)V

    .line 748
    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;)V
    .registers 17
    .param p1, "userOperation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .param p2, "isThermalStop"    # Z
    .param p3, "isLowBatteryStop"    # Z
    .param p4, "recTimeMillis"    # I
    .param p5, "isLaunchViewerAfterRec"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "ZZIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p6, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 773
    return-void
.end method

.method public sendSelfTimerCancelledEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V
    .registers 4
    .param p1, "trigger"    # Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;

    .prologue
    .line 1583
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    .line 1584
    return-void
.end method

.method public sendSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 5
    .param p1, "commonValue"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 642
    return-void
.end method

.method public sendSettingsCommon(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public sendSlowMotionEvent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "slowMotion"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 597
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public sendThermalEvent(ZZ)V
    .registers 6
    .param p1, "isOnStartup"    # Z
    .param p2, "isRecording"    # Z

    .prologue
    .line 554
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;

    move-result-object v1

    .line 555
    .local v1, "thermalMitigation":Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object v0

    .line 557
    .local v0, "forceQuit":Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v2, v1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    .line 558
    return-void
.end method

.method public sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 11
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p3, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 465
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewWithActivityTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method public sendView(Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .registers 6
    .param p1, "launchedBy"    # Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;
    .param p2, "screen"    # Lcom/sonymobile/cameracommon/research/parameters/Screen;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public setCameraNotAvailableFailedToOpen()V
    .registers 4

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method public setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .registers 4
    .param p1, "trigger"    # Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1382
    return-void
.end method

.method public setContinuousCapture()V
    .registers 4

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1469
    return-void
.end method

.method public setFaceNum(I)V
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1271
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1240
    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .registers 4
    .param p1, "predictiveCaptureNum"    # I

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1351
    return-void
.end method

.method public setRecordingMaxFaceNum(I)V
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1302
    return-void
.end method

.method public setTimeAfDone()V
    .registers 4

    .prologue
    .line 1485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1486
    .local v0, "time":J
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    .line 1487
    return-void
.end method

.method public setTimeCaptureStart()V
    .registers 4

    .prologue
    .line 1493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1494
    .local v0, "time":J
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    .line 1495
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .registers 3
    .param p1, "operation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .prologue
    const/4 v0, 0x0

    .line 940
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    .line 941
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .registers 11
    .param p1, "operation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    .local p3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 954
    return-void
.end method

.method public setViewerLaunched()V
    .registers 4

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method public setZoomRatio(F)V
    .registers 4
    .param p1, "zoomRatio"    # F

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1209
    return-void
.end method

.method public startCatchException(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$startCatchExceptionTask;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1740
    return-void
.end method

.method public succeedInPanorama()V
    .registers 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SucceedInPanoramaTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1006
    return-void
.end method

.method public tryPanorama()V
    .registers 4

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TryPanoramaTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TryPanoramaTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 989
    return-void
.end method
