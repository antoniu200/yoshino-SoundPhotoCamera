.class Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentUserOperationHolder"
.end annotation


# instance fields
.field private mLabelInfo:Ljava/lang/StringBuffer;

.field private mShootingNum:I

.field private mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 69
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    .line 72
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->sendUserOperation()V

    return-void
.end method

.method private sendUserOperation()V
    .registers 9

    .prologue
    .line 152
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 153
    .local v2, "userOperation":Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    .line 155
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    if-eqz v2, :cond_36

    if-eqz v1, :cond_36

    .line 156
    iget v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "shootingNum":Ljava/lang/String;
    invoke-interface {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getCategory()Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    move-result-object v3

    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Shots"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 158
    invoke-static {v3, v4, v5, v6, v7}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 163
    .end local v0    # "shootingNum":Ljava/lang/String;
    :cond_36
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->clear()V

    .line 164
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    .line 171
    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    .line 172
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .registers 3
    .param p1, "operation"    # Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    .line 76
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
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;>;"
    .local p3, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x64

    .line 83
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    if-nez v3, :cond_d

    .line 84
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    .line 87
    :cond_d
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->isShooting()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 89
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    .local v2, "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 92
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 93
    .local v1, "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 96
    .end local v1    # "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    :cond_4a
    if-eqz p2, :cond_6c

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 98
    .restart local v1    # "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 101
    .end local v1    # "param":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    :cond_6c
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 102
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    .line 103
    .local v0, "p":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    if-eqz v0, :cond_8f

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v0    # "p":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    :cond_8f
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    if-nez p3, :cond_9a

    new-instance p3, Landroid/util/ArrayMap;

    .end local p3    # "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    :cond_9a
    # invokes: Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static {v3, v4, v2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 110
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 112
    iget v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    if-ne v3, v6, :cond_cb

    .line 113
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    const-string v4, "_OVER_MAX_NUM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_b0
    :goto_b0
    iget v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    .line 137
    .end local v2    # "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b6
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz v3, :cond_c0

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    if-ne v3, v4, :cond_c2

    .line 138
    :cond_c0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 141
    :cond_c2
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {p1, v3}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->updateOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 142
    return-void

    .line 114
    .restart local v2    # "paramSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_cb
    iget v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mShootingNum:I

    if-gt v3, v6, :cond_b0

    .line 117
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 118
    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterList()Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->convertParameterToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    if-eqz p2, :cond_ed

    .line 120
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->convertParameterToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :cond_ed
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 124
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v0

    .line 125
    .restart local v0    # "p":Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    if-eqz v0, :cond_10a

    .line 126
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mLabelInfo:Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;->getConvertedCharacter()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    :cond_10a
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    # getter for: Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->clear()V

    goto :goto_b0
.end method

.method public setViewerLaunched()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-nez v0, :cond_8

    .line 146
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 148
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getViewer()Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 149
    return-void
.end method
