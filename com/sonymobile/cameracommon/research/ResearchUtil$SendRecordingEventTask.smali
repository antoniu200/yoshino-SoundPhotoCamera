.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRecordingEventTask"
.end annotation


# instance fields
.field private final mIsLaunchViewerAfterRec:Z

.field private final mIsLowBatteryStop:Z

.field private final mIsThermalStop:Z

.field private final mRecTimeMillis:I

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;)V
    .registers 8
    .param p2, "userOperation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .param p3, "isThermalStop"    # Z
    .param p4, "isLowBatteryStop"    # Z
    .param p5, "recTimeMillis"    # I
    .param p6, "isLaunchViewerAfterRec"    # Z
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
    .line 798
    .local p7, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 800
    iput-boolean p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsThermalStop:Z

    .line 801
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLowBatteryStop:Z

    .line 802
    iput p5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    .line 803
    iput-boolean p6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    .line 804
    iput-object p7, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    .line 805
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 9
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/util/Map;
    .param p8, "x7"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 775
    invoke-direct/range {p0 .. p7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;ZZIZLjava/util/Map;)V

    return-void
.end method

.method private getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 865
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Other"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 866
    :cond_e
    const-string v0, "_V0"

    .line 900
    :goto_10
    return-object v0

    .line 871
    :cond_11
    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 897
    const-string v0, "_V0"

    .local v0, "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 873
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_23
    const-string v0, "_V1"

    .line 874
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 876
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_26
    const-string v0, "_V2"

    .line 877
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 879
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_29
    const-string v0, "_V3"

    .line 880
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 882
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_2c
    const-string v0, "_V4"

    .line 883
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 885
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_2f
    const-string v0, "_V5"

    .line 886
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 888
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_32
    const-string v0, "_V6"

    .line 889
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 891
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_35
    const-string v0, "_V7"

    .line 892
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 894
    .end local v0    # "videoSizeLabel":Ljava/lang/String;
    :pswitch_38
    const-string v0, "_V8"

    .line 895
    .restart local v0    # "videoSizeLabel":Ljava/lang/String;
    goto :goto_10

    .line 871
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 809
    iget-boolean v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsThermalStop:Z

    iget-boolean v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLowBatteryStop:Z

    invoke-static {v5, v6}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->getType(ZZ)Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    move-result-object v4

    .line 810
    .local v4, "stopOperation":Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;
    iget v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    div-int/lit16 v3, v5, 0x3e8

    .line 812
    .local v3, "recTimeSec":I
    if-ltz v3, :cond_139

    .line 813
    iget-boolean v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz v5, :cond_1e

    .line 814
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-virtual {v5, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 818
    :cond_1e
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 819
    .local v2, "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v5

    if-eqz v5, :cond_55

    .line 821
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterListForRecording()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 822
    .local v1, "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 825
    .end local v1    # "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    :cond_55
    const-string v5, "rec_time"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v5, "resume"

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v5, "snapshot"

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v5, "stop_factor"

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v6, "VIDEO_SIZE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 830
    :cond_99
    const-string v5, "video_size"

    const-string v6, "Other"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :goto_a0
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-nez v5, :cond_149

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    :goto_ad
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v6, v7, v2, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 840
    .local v0, "labelInfo":Ljava/lang/StringBuffer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    const-string v5, "_Sec_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    const-string v5, "_Resume_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 844
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    const-string v5, "_Snapshot_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I
    invoke-static {v5, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2702(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 848
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # setter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I
    invoke-static {v5, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2802(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I

    .line 850
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v5

    if-eqz v5, :cond_10d

    .line 851
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->toStringForRecording()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearRecordingMaxFaceNum()V

    .line 854
    :cond_10d
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-eqz v5, :cond_121

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v6, "VIDEO_SIZE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 855
    :cond_121
    const-string v5, "Other"

    invoke-direct {p0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    :goto_12a
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .end local v0    # "labelInfo":Ljava/lang/StringBuffer;
    .end local v2    # "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_139
    return-void

    .line 832
    .restart local v2    # "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13a
    const-string v5, "video_size"

    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v7, "VIDEO_SIZE"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a0

    .line 835
    :cond_149
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    goto/16 :goto_ad

    .line 857
    .restart local v0    # "labelInfo":Ljava/lang/StringBuffer;
    :cond_14d
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    const-string v6, "VIDEO_SIZE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12a
.end method
