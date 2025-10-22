.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;
.super Ljava/lang/Object;
.source "SettingDialogAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingDialogAnimation"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mTranslateDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_column_height:I

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getPixel(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    .line 33
    return-void
.end method

.method private getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;
    .registers 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 46
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 48
    return-object v0
.end method

.method private getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;
    .registers 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 38
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 86
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 87
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->setting_dialog_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 90
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 91
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 93
    const/4 v2, 0x1

    if-ne p2, v2, :cond_29

    .line 94
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v2, v4, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    :goto_25
    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 100
    return-object v1

    .line 96
    :cond_29
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v4, v4, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForAccelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_25
.end method

.method public setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 60
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mContext:Landroid/content/Context;

    sget v3, Lcom/sonyericsson/cameracommon/R$anim;->setting_dialog_fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 64
    .local v0, "alpha":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 65
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 67
    const/4 v2, 0x1

    if-ne p2, v2, :cond_29

    .line 68
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v2, v4, v4, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 72
    :goto_25
    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 74
    return-object v1

    .line 70
    :cond_29
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->mTranslateDistance:F

    invoke-direct {p0, v4, v4, v2, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->getTranslateForDecelerate(FFFF)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_25
.end method
