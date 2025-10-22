.class public Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;,
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;,
        Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;
    }
.end annotation


# static fields
.field private static final BASE_CONDITION_TAG:Ljava/lang/String; = "base-condition"

.field private static final CHECK_CONDITION_TAG:Ljava/lang/String; = "check-condition"

.field private static final KEY_ATTRIBUTE_INDEX:I = 0x0

.field private static final KEY_VALUE_SET_TAG:Ljava/lang/String; = "key-value-set"

.field private static final LOCAL_LOG:Z = false

.field public static final TAG:Ljava/lang/String; = "CameraParameterValidator"

.field private static final VALIDATION_SET_TAG:Ljava/lang/String; = "validation-set"

.field private static final VALUE_ATTRIBUTE_INDEX:I = 0x1

.field private static mInvalidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mIsAlreadyLoaded:Z

.field private static mValidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p0, "validationCase"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 273
    .local v0, "eventType":I
    :goto_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_13

    const-string v4, "base-condition"

    .line 275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 278
    :cond_13
    packed-switch v0, :pswitch_data_3c

    .line 290
    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 280
    :pswitch_1b
    const-string v4, "key-value-set"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 281
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v1, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->addBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V

    goto :goto_16

    .line 292
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3a
    return-void

    .line 278
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_1b
    .end packed-switch
.end method

.method private static loadCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p0, "validationCase"    # Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 297
    .local v0, "eventType":I
    :goto_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_13

    const-string v4, "check-condition"

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 302
    :cond_13
    packed-switch v0, :pswitch_data_3c

    .line 314
    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    .line 304
    :pswitch_1b
    const-string v4, "key-value-set"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 305
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v1, v3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v2, "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->addCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;)V

    goto :goto_16

    .line 316
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "set":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$KeyValueSet;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3a
    return-void

    .line 302
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_1b
    .end packed-switch
.end method

.method private static loadCheckList(Landroid/content/Context;Ljava/util/List;I)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "xmlId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 216
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 219
    .local v4, "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    if-eqz v1, :cond_78

    .line 220
    :try_start_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_e} :catch_7c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_67

    move-result v3

    .local v3, "type":I
    move-object v5, v4

    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .local v5, "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_10
    const/4 v6, 0x1

    if-eq v3, v6, :cond_77

    .line 223
    :try_start_13
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_56
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_79

    move-result-object v2

    .line 224
    .local v2, "tag":Ljava/lang/String;
    packed-switch v3, :pswitch_data_7e

    :cond_1a
    :goto_1a
    move-object v4, v5

    .line 221
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_1b
    :try_start_1b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1e} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_67

    move-result v3

    move-object v5, v4

    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_10

    .line 227
    :pswitch_21
    :try_start_21
    const-string v6, "validation-set"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 229
    new-instance v4, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;-><init>(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$1;)V

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_1b

    .line 230
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_30
    const-string v6, "base-condition"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 232
    invoke-static {v5, v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadBaseCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_1b

    .line 233
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_3d
    const-string v6, "check-condition"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 235
    invoke-static {v5, v1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckCondition(Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_1b

    .line 240
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :pswitch_4a
    const-string v6, "validation-set"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 242
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_55} :catch_79

    goto :goto_1a

    .line 249
    .end local v2    # "tag":Ljava/lang/String;
    :catch_56
    move-exception v0

    move-object v4, v5

    .line 250
    .end local v3    # "type":I
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :goto_58
    const-string v6, "CameraParameterValidator"

    const-string v7, "Fail to load of CheckList."

    invoke-static {v6, v7, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    new-instance v6, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    const-string v7, "loadCheckList():[XmlPullParserException]"

    invoke-direct {v6, v7}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_67
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :goto_68
    const-string v6, "CameraParameterValidator"

    const-string v7, "Fail to load of CheckList."

    invoke-static {v6, v7, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    new-instance v6, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;

    const-string v7, "loadCheckList():[IOException]"

    invoke-direct {v6, v7}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v3    # "type":I
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_77
    move-object v4, v5

    .line 268
    .end local v3    # "type":I
    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_78
    return-void

    .line 252
    .end local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v3    # "type":I
    .restart local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :catch_79
    move-exception v0

    move-object v4, v5

    .end local v5    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    .restart local v4    # "validationCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    goto :goto_68

    .line 249
    .end local v3    # "type":I
    :catch_7c
    move-exception v0

    goto :goto_58

    .line 224
    :pswitch_data_7e
    .packed-switch 0x2
        :pswitch_21
        :pswitch_4a
    .end packed-switch
.end method

.method public static declared-synchronized validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invalidListXmlId"    # I
    .param p2, "validListXmlId"    # I
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 73
    const-class v2, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    if-nez v1, :cond_14

    .line 78
    sget-object v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-static {p0, v1, p1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 79
    sget-object v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    invoke-static {p0, v1, p2}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 80
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mIsAlreadyLoaded:Z

    .line 88
    :cond_14
    sget-object v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    .line 89
    .local v0, "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    invoke-virtual {v0, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->isBaseCondition(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 91
    invoke-virtual {v0, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->checkInvalid(Landroid/hardware/Camera$Parameters;)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_30

    goto :goto_1a

    .line 73
    .end local v0    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1

    .line 96
    :cond_33
    :try_start_33
    sget-object v1, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;

    .line 97
    .restart local v0    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    invoke-virtual {v0, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->isBaseCondition(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 99
    invoke-virtual {v0, p3}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;->checkValid(Landroid/hardware/Camera$Parameters;)V
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_30

    goto :goto_39

    .line 106
    .end local v0    # "testCase":Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator$ValidationCase;
    :cond_4f
    monitor-exit v2

    return-void
.end method
