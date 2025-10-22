.class public Lcom/sonymobile/cameracommon/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FontUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "type"    # Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz p0, :cond_1a

    new-instance v1, Ljava/io/File;

    # getter for: Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 49
    # getter for: Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->mPath:Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->access$000(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 52
    :cond_1a
    return-object v0
.end method

.method public static setBold(Landroid/widget/Button;)Z
    .registers 2
    .param p0, "view"    # Landroid/widget/Button;

    .prologue
    .line 88
    if-nez p0, :cond_4

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_3
    return v0

    .line 91
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setBold(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_3
    return v0

    .line 83
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setDefault(Landroid/widget/Button;)Z
    .registers 2
    .param p0, "view"    # Landroid/widget/Button;

    .prologue
    .line 104
    if-nez p0, :cond_4

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_3
    return v0

    .line 107
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setDefault(Landroid/widget/TextView;)Z
    .registers 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 96
    if-nez p0, :cond_4

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_3
    return v0

    .line 99
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static setRobotoFont(Landroid/widget/Button;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .registers 4
    .param p0, "view"    # Landroid/widget/Button;
    .param p1, "type"    # Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 76
    :cond_5
    :goto_5
    return v1

    .line 71
    :cond_6
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 72
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public static setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z
    .registers 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "type"    # Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    .prologue
    const/4 v1, 0x0

    .line 56
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 64
    :cond_5
    :goto_5
    return v1

    .line 59
    :cond_6
    invoke-static {p1}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 60
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    const/4 v1, 0x1

    goto :goto_5
.end method
