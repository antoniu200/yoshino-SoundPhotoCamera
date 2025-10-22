.class public Lcom/sonyericsson/cameracommon/utility/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field public static final INVALID_RESOURCE_ID:I = -0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field public static final TAG:Ljava/lang/String; = "ResourceUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 206
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 207
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v3

    .line 208
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_10
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 102
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 108
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 110
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_d
    move-exception v1

    .line 111
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 189
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 195
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    .local v0, "camR":Landroid/content/res/Resources;
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v3

    return-object v3

    .line 197
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_e
    move-exception v1

    .line 198
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 174
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimension(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getDimension(Landroid/content/Context;Ljava/lang/String;I)F
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 180
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 182
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_d
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 147
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 153
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 155
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_d
    move-exception v1

    .line 156
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 132
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 138
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 140
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_d
    move-exception v1

    .line 141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 117
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 123
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "camR":Landroid/content/res/Resources;
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v3

    return-object v3

    .line 125
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_e
    move-exception v1

    .line 126
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getFloat(Landroid/content/Context;I)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;I)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 83
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v3

    return v3

    .line 91
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_d
    move-exception v1

    .line 92
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getLayout(Landroid/content/Context;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 36
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static getLayout(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 43
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 45
    .local v6, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_5
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 47
    const/4 v7, 0x2

    .line 48
    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "ctx":Landroid/content/Context;
    const-string v7, "layout_inflater"

    .line 50
    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 51
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1f

    .line 52
    invoke-virtual {v3, p4}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 54
    :cond_1f
    invoke-virtual {v3, v6, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_22} :catch_29
    .catchall {:try_start_5 .. :try_end_22} :catchall_38

    move-result-object v5

    .line 60
    .local v5, "viewGroup":Landroid/view/View;
    if-eqz v6, :cond_28

    .line 61
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v0    # "camR":Landroid/content/res/Resources;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "viewGroup":Landroid/view/View;
    :cond_28
    :goto_28
    return-object v5

    .line 56
    :catch_29
    move-exception v2

    .line 57
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2a
    const-string v7, "ResourceUtil"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_38

    .line 58
    const/4 v5, 0x0

    .line 60
    if-eqz v6, :cond_28

    .line 61
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_28

    .line 60
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_38
    move-exception v7

    if-eqz v6, :cond_3e

    .line 61
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3e
    throw v7
.end method

.method public static getPixelFromRate(Landroid/content/Context;II)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "base"    # I

    .prologue
    .line 170
    int-to-float v0, p2

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getFloat(Landroid/content/Context;I)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 67
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 73
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v3

    .line 78
    .end local v0    # "camR":Landroid/content/res/Resources;
    :goto_c
    return-object v3

    .line 76
    :catch_d
    move-exception v1

    .line 77
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ResourceUtil"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v3, 0x0

    goto :goto_c
.end method
