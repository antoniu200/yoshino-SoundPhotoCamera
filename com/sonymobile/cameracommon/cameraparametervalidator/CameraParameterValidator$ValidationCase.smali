.class Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationCase"
.end annotation


# instance fields
.field private mBaseConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckConditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;-><init>()V

    return-void
.end method


# virtual methods
.method public addBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V
    .registers 3
    .param p1, "set"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V
    .registers 3
    .param p1, "set"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public checkInvalid(Landroid/hardware/Camera$Parameters;)V
    .registers 7
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 152
    .local v1, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "realValue":Ljava/lang/String;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 154
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraParameterValidator ERROR : [KEY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  INVALID  : [VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    .end local v0    # "realValue":Ljava/lang/String;
    .end local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_53
    return-void
.end method

.method public checkValid(Landroid/hardware/Camera$Parameters;)V
    .registers 7
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 132
    .local v1, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "realValue":Ljava/lang/String;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 134
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraParameterValidator ERROR : [KEY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  EXPECTED : [VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ACTUAL   : [VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v0    # "realValue":Ljava/lang/String;
    .end local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_63
    return-void
.end method

.method public isBaseCondition(Landroid/hardware/Camera$Parameters;)Z
    .registers 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 121
    iget-object v2, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 122
    .local v1, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "realValue":Ljava/lang/String;
    iget-object v3, v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 124
    const/4 v2, 0x0

    .line 127
    .end local v0    # "realValue":Ljava/lang/String;
    .end local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "ValidationSet :\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v2, "  BaseConditionList :\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v2, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mBaseConditionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 175
    .local v1, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 180
    .end local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_33
    const-string v2, "  CheckConditionList :\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v2, p0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->mCheckConditionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    .line 182
    .restart local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 187
    .end local v1    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
