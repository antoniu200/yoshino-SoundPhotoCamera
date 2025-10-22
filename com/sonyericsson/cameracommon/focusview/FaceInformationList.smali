.class public Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
.super Ljava/lang/Object;
.source "FaceInformationList.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FaceInformationList"


# instance fields
.field private mNamedFaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSmileGuage:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    return-void
.end method

.method public static dumpFaceInformationList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .registers 6
    .param p0, "list"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    .prologue
    .line 70
    if-nez p0, :cond_a

    .line 71
    const-string v1, "FaceInformationList"

    const-string v2, "dumpFaceInformationList() argument is null"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_9
    return-void

    .line 75
    :cond_a
    const-string v1, "FaceInformationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpFaceInformationList use smile guage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->isUseSmileGuage()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "FaceInformationList"

    const-string v2, "################"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 79
    .local v0, "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    const-string v2, "FaceInformationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 85
    .end local v0    # "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_74
    const-string v1, "FaceInformationList"

    const-string v2, "################"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public addNamedFace(Lcom/sonyericsson/cameracommon/focusview/NamedFace;)V
    .registers 3
    .param p1, "namedFace"    # Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public addNamedFaceList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "namedFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/focusview/NamedFace;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    return-void
.end method

.method public clearNamedFaceList()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    return-void
.end method

.method public getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_22

    .line 40
    const-string v0, "FaceInformationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNamedFace index overflow index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    goto :goto_21
.end method

.method public getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "returnFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    .line 61
    .local v0, "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v3, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 62
    move-object v1, v0

    .line 66
    .end local v0    # "face":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_1c
    return-object v1
.end method

.method public getNamedFaceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    return-object v0
.end method

.method public isUseSmileGuage()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    return v0
.end method

.method public setNamedFaceList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/NamedFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "namedFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/focusview/NamedFace;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mNamedFaceList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setUseSmileGuage(Z)V
    .registers 2
    .param p1, "useSmileGuage"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->mUseSmileGuage:Z

    .line 52
    return-void
.end method
