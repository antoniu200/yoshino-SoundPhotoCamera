.class public final Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi18Impl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi16Impl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field private static final IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    .line 64
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    .line 70
    :goto_d
    return-void

    .line 65
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 66
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi16Impl;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoApi16Impl;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    goto :goto_d

    .line 68
    :cond_1c
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I

    .prologue
    .line 427
    packed-switch p0, :pswitch_data_12

    .line 437
    :pswitch_3
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 429
    :pswitch_6
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    goto :goto_5

    .line 431
    :pswitch_9
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    goto :goto_5

    .line 433
    :pswitch_c
    const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_5

    .line 435
    :pswitch_f
    const-string v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    goto :goto_5

    .line 427
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_3
        :pswitch_c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "feedbackType"    # I

    .prologue
    const/4 v3, 0x1

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_b
    if-lez p0, :cond_43

    .line 348
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int v1, v3, v2

    .line 349
    .local v1, "feedbackTypeFlag":I
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p0, v2

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v3, :cond_21

    .line 351
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_21
    sparse-switch v1, :sswitch_data_4e

    goto :goto_b

    .line 364
    :sswitch_25
    const-string v2, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 355
    :sswitch_2b
    const-string v2, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 358
    :sswitch_31
    const-string v2, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 361
    :sswitch_37
    const-string v2, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 367
    :sswitch_3d
    const-string v2, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 371
    .end local v1    # "feedbackTypeFlag":I
    :cond_43
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 353
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_31
        0x4 -> :sswitch_2b
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_37
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .prologue
    .line 384
    sparse-switch p0, :sswitch_data_18

    .line 398
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 386
    :sswitch_5
    const-string v0, "DEFAULT"

    goto :goto_4

    .line 388
    :sswitch_8
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    goto :goto_4

    .line 390
    :sswitch_b
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    goto :goto_4

    .line 392
    :sswitch_e
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    goto :goto_4

    .line 394
    :sswitch_11
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    goto :goto_4

    .line 396
    :sswitch_14
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    goto :goto_4

    .line 384
    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x4 -> :sswitch_b
        0x8 -> :sswitch_e
        0x10 -> :sswitch_11
        0x20 -> :sswitch_14
    .end sparse-switch
.end method

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    return v0
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 415
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;->getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 3
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 333
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoBaseImpl;->loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
