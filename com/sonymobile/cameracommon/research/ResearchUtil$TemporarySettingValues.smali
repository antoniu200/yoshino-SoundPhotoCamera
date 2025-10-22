.class Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporarySettingValues"
.end annotation


# instance fields
.field private mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field private mFaceNum:I

.field private mOrientation:I

.field private mPredictiveCaptureNum:I

.field private mRecordingMaxFaceNum:I

.field private mZoomRatio:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    .line 1103
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    .line 1104
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 1105
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 1106
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    .line 1107
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 1108
    return-void
.end method

.method private roundZoomRatio()I
    .registers 3

    .prologue
    .line 1151
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 1152
    const/4 v0, 0x0

    .line 1154
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    float-to-int v0, v0

    goto :goto_d
.end method


# virtual methods
.method public clearCaptureTrigger()V
    .registers 2

    .prologue
    .line 1145
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 1146
    return-void
.end method

.method public clearFaceNum()V
    .registers 2

    .prologue
    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 1138
    return-void
.end method

.method public clearRecordingMaxFaceNum()V
    .registers 2

    .prologue
    .line 1141
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 1142
    return-void
.end method

.method public getParameterList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveCaptureNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getCaptureTriggerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    return-object v0
.end method

.method public getParameterListForRecording()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringForRecording()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .registers 2
    .param p1, "trigger"    # Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 1134
    return-void
.end method

.method public updateFaceNum(I)V
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 1119
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 1120
    return-void
.end method

.method public updateOrientation(I)V
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 1115
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    .line 1116
    return-void
.end method

.method public updatePredictiveCaptureNum(I)V
    .registers 2
    .param p1, "val"    # I

    .prologue
    .line 1129
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    .line 1130
    return-void
.end method

.method public updateRecordingMaxFaceNum(I)V
    .registers 3
    .param p1, "val"    # I

    .prologue
    .line 1123
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    if-ge v0, p1, :cond_6

    .line 1124
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 1126
    :cond_6
    return-void
.end method

.method public updateZoomRatio(F)V
    .registers 2
    .param p1, "val"    # F

    .prologue
    .line 1111
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    .line 1112
    return-void
.end method
