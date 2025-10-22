.class public Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;
.super Ljava/lang/Object;
.source "FaceDetectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;,
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;,
        Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceDetectUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 7
    .param p0, "faceRect"    # Landroid/graphics/Rect;
    .param p1, "centerPosition"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v3

    .line 103
    invoke-virtual {v3, p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceFromDeviceToPreview(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    .local v0, "faceRectPreview":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v1, v3, v4

    .line 107
    .local v1, "xDistance":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v2, v3, v4

    .line 111
    .local v2, "yDistance":I
    if-gez v1, :cond_20

    .line 112
    mul-int/lit8 v1, v1, -0x1

    .line 116
    :cond_20
    if-gez v2, :cond_24

    .line 117
    mul-int/lit8 v2, v2, -0x1

    .line 120
    :cond_24
    add-int v3, v1, v2

    return v3
.end method

.method private static createSortedDistanceList(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;
    .registers 10
    .param p0, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p1, "centerPosition"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 66
    if-nez p0, :cond_5

    move-object v4, v5

    .line 92
    :goto_4
    return-object v4

    .line 70
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    if-nez v6, :cond_b

    move-object v4, v5

    .line 71
    goto :goto_4

    .line 75
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    const/4 v1, 0x0

    .line 79
    .local v1, "i":I
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Face;

    .line 81
    .local v0, "face":Landroid/hardware/Camera$Face;
    iget-object v7, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v7, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->computeClosesDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 83
    .local v2, "tempDistance":I
    new-instance v3, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    invoke-direct {v3, v1, v2}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;-><init>(II)V

    .line 85
    .local v3, "tempItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_17

    .line 90
    .end local v0    # "face":Landroid/hardware/Camera$Face;
    .end local v2    # "tempDistance":I
    .end local v3    # "tempItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    :cond_34
    new-instance v6, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;

    invoke-direct {v6, v5}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceComparator;-><init>(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$1;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4
.end method

.method public static dumpDistanceMapList(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    return-void
.end method

.method public static getFaceInformationList(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Landroid/graphics/Rect;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .registers 12
    .param p0, "faceDetectResultList"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .param p1, "centerPosition"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 156
    if-nez p0, :cond_4

    .line 199
    :cond_3
    :goto_3
    return-object v3

    .line 165
    :cond_4
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->createSortedDistanceList(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, "sortedDistanceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;>;"
    if-eqz v4, :cond_3

    .line 177
    new-instance v3, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-direct {v3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;-><init>()V

    .line 180
    .local v3, "resultList":Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;

    .line 181
    .local v0, "distanceItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;->getArrayIndex()I

    move-result v6

    .line 183
    .local v6, "tempIndex":I
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Face;

    .line 184
    .local v1, "face":Landroid/hardware/Camera$Face;
    iget v9, v1, Landroid/hardware/Camera$Face;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "uuid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 186
    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 189
    .local v5, "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    new-instance v5, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .end local v5    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v9, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-direct {v5, v2, v7, v9}, Lcom/sonyericsson/cameracommon/focusview/NamedFace;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 194
    .restart local v5    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V

    goto :goto_13

    .line 197
    .end local v0    # "distanceItem":Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$DistanceMapItem;
    .end local v1    # "face":Landroid/hardware/Camera$Face;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "tempData":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v6    # "tempIndex":I
    .end local v7    # "uuid":Ljava/lang/String;
    :cond_3e
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->logFaceDetectionResult(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V

    goto :goto_3
.end method

.method public static hasValidFaceId(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)Ljava/lang/Boolean;
    .registers 6
    .param p0, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 207
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    .local v1, "isSupport":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Face;

    .line 209
    .local v0, "face":Landroid/hardware/Camera$Face;
    iget v3, v0, Landroid/hardware/Camera$Face;->id:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 211
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    .end local v0    # "face":Landroid/hardware/Camera$Face;
    :cond_1b
    return-object v1
.end method

.method public static logFaceDetectionResult(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)V
    .registers 7
    .param p0, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 124
    if-nez p0, :cond_a

    .line 125
    const-string v3, "FaceDetectUtil"

    const-string v4, "onFaceDetection: result is null"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_9
    return-void

    .line 129
    :cond_a
    const-string v3, "FaceDetectUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceDetection: Number of faces: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "i":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Face;

    .line 134
    .local v0, "face":Landroid/hardware/Camera$Face;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FACE["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "logRecord":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.score = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Face;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.leftEye = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.mouth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " face.rightEye = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v4, "FaceDetectUtil"

    invoke-static {v4, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto/16 :goto_37
.end method

.method public static setUuidFaceDetectionResult(Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;)Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;
    .registers 5
    .param p0, "result"    # Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "index":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil$FaceDetectionResult;->faceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Face;

    .line 224
    .local v0, "face":Landroid/hardware/Camera$Face;
    iput v1, v0, Landroid/hardware/Camera$Face;->id:I

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 226
    goto :goto_7

    .line 227
    .end local v0    # "face":Landroid/hardware/Camera$Face;
    :cond_18
    return-object p0
.end method
