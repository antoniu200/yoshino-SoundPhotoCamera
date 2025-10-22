.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;
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
    name = "SendSettingsCommonValueTask"
.end annotation


# instance fields
.field private final mValue:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .registers 3
    .param p2, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 654
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .param p3, "x2"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 644
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 658
    sget-object v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2a

    .line 677
    :goto_11
    return-void

    .line 669
    :pswitch_12
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 658
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
