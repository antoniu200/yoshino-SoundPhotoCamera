.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;
.super Ljava/lang/Enum;
.source "HelpGuide.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

.field private static final CATEGORY_CAPTURE:Ljava/lang/String; = "Capture"

.field private static final HELP_APP_PKG_NAME:Ljava/lang/String; = "com.sonymobile.support"

.field public static final HELP_CATEGORY_CAPTURE:Ljava/lang/String; = "Capture"

.field public static final enum NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

.field public static final TAG:Ljava/lang/String; = "HelpGuide"


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->mIconId:I

    .line 51
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->mTextId:I

    .line 52
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;
    .registers 1

    .prologue
    .line 184
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    return-object v0
.end method

.method private static getHelpAppStartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget-object v1, Lcom/sonymobile/help/HelpUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "app"

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "Capture"

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    .local v0, "helpIntentBuilder":Landroid/net/Uri$Builder;
    invoke-static {p0, v0}, Lcom/sonymobile/help/HelpUtils;->uriWithAddedVersionParameter(Landroid/content/Context;Landroid/net/Uri$Builder;)V

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static getOnlineHelpIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    if-nez p0, :cond_4

    .line 147
    const/4 v1, 0x0

    .line 165
    :goto_3
    return-object v1

    .line 150
    :cond_4
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 151
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    const-string v1, "ids.indevice.sonymobile.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    const-string v1, "in-device/getSoftwareSupport.htm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    const-string v1, "sourceAppName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    const-string v1, "sourceAppVersion"

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 156
    const-string v1, "sourceAppView"

    const-string v2, "Capture"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    const-string v1, "androidVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    const-string v1, "output"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 172
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 174
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_f
    return-object v2

    .line 173
    :catch_10
    move-exception v0

    .line 174
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static isHelpAppAvailable(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->getHelpAppStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 114
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 115
    .local v5, "retVal":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 117
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_9
    const-string v6, "com.sonymobile.support"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 118
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1f

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 120
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1b

    .line 122
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    :cond_1b
    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1e} :catch_20

    move-result v5

    .line 130
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1f
    :goto_1f
    return v5

    .line 126
    :catch_20
    move-exception v1

    .line 127
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HelpGuide"

    const-string v7, "Somc in-device help app not found."

    invoke-static {v6, v7, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public static startHelpApp(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->getHelpAppStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 101
    :goto_7
    return-void

    .line 98
    :catch_8
    move-exception v0

    .line 99
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "HelpGuide"

    const-string v2, "startResolvedActivity failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static startOnlineHelp(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->getOnlineHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 109
    :goto_7
    return-void

    .line 106
    :catch_8
    move-exception v0

    .line 107
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "HelpGuide"

    const-string v2, "startOnlineHelp failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->HELP_GUIDE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->mIconId:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/HelpGuide;->mTextId:I

    return v0
.end method
