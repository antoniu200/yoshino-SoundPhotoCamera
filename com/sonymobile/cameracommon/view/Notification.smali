.class public Lcom/sonymobile/cameracommon/view/Notification;
.super Landroid/widget/RelativeLayout;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;,
        Lcom/sonymobile/cameracommon/view/Notification$FadeoutAnimtion;,
        Lcom/sonymobile/cameracommon/view/Notification$AnimationListenerImpl;,
        Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Notification"


# instance fields
.field private mAnimating:Z

.field private mConditionIcon:Landroid/widget/ImageView;

.field private mConditionText:Landroid/widget/TextView;

.field private mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

.field private mSceneIcon:Landroid/widget/ImageView;

.field private mSceneText:Landroid/widget/TextView;

.field private mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/view/Notification;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/Notification;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    return v0
.end method

.method private setOrientationConditionText()V
    .registers 3

    .prologue
    .line 351
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 352
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 358
    :goto_e
    return-void

    .line 355
    :cond_f
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 356
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private setOrientationSceneText()V
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 339
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    sget-object v1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    if-eq v0, v1, :cond_18

    .line 340
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 342
    sget-object v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 348
    :cond_18
    :goto_18
    return-void

    .line 345
    :cond_19
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->cancelSceneTextAnimation()V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method


# virtual methods
.method protected cancelSceneTextAnimation()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->cancel()V

    .line 220
    return-void
.end method

.method protected createSceneTextAnimation()V
    .registers 2

    .prologue
    .line 204
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;-><init>(Lcom/sonymobile/cameracommon/view/Notification;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    .line 205
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->create()V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->releaseSceneTextAnimation()V

    .line 81
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_icon:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_icon:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->createSceneTextAnimation()V

    .line 75
    return-void
.end method

.method public onMacroStatusChanged(ZLcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V
    .registers 5
    .param p1, "show"    # Z
    .param p2, "sceneMode"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .prologue
    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_2f

    .line 86
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_condition:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_scene_recog_macro_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_focus_mode_macro_txt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 107
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 108
    return-void

    .line 100
    :cond_2f
    sget-object v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    if-ne p2, v0, :cond_2b

    .line 101
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b
.end method

.method public onModeChanged(IZ)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "isOneShot"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 177
    if-eqz p2, :cond_17

    .line 178
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_16
    return-void

    .line 182
    :cond_17
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    .line 183
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16

    .line 187
    :cond_2d
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 188
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->scene_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->condition_indicator:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method

.method public onRecognisedConditionChanged(Lcom/sonymobile/cameracommon/view/RecognizedCondition;)V
    .registers 7
    .param p1, "condition"    # Lcom/sonymobile/cameracommon/view/RecognizedCondition;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getIconId()I

    move-result v0

    .line 145
    .local v0, "iconId":I
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedCondition;->getTextId()I

    move-result v1

    .line 146
    .local v1, "textId":I
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_condition:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 147
    if-lez v0, :cond_37

    .line 148
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_1f
    if-lez v1, :cond_3d

    .line 154
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_33

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 163
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 164
    return-void

    .line 151
    :cond_37
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 161
    :cond_3d
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33
.end method

.method public onRecognisedSceneChanged(Lcom/sonymobile/cameracommon/view/RecognizedScene;)V
    .registers 6
    .param p1, "scene"    # Lcom/sonymobile/cameracommon/view/RecognizedScene;

    .prologue
    .line 114
    sget-object v2, Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;->AUTO:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 115
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getIconId()I

    move-result v0

    .line 116
    .local v0, "iconId":I
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getTextId()I

    move-result v1

    .line 117
    .local v1, "textId":I
    if-lez v0, :cond_37

    if-lez v1, :cond_37

    .line 118
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->startSceneTextAnimation()V

    .line 137
    :goto_2c
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 138
    return-void

    .line 131
    :cond_30
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/view/RecognizedScene;->getSceneMode()Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification;->mScene:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    goto :goto_2c

    .line 135
    :cond_37
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->recognised_scene:I

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/view/Notification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c
.end method

.method protected releaseSceneTextAnimation()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->release()V

    .line 210
    return-void
.end method

.method protected setAnimationStatus(Z)V
    .registers 3
    .param p1, "isAnimating"    # Z

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    if-ne v0, p1, :cond_5

    .line 201
    :goto_4
    return-void

    .line 200
    :cond_5
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mAnimating:Z

    goto :goto_4
.end method

.method public setSensorOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSensorOrientation:I

    .line 329
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 331
    .local v0, "degree":F
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 332
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationSceneText()V

    .line 333
    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification;->mConditionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 334
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/Notification;->setOrientationConditionText()V

    .line 335
    return-void
.end method

.method protected startSceneTextAnimation()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification;->mSceneTextAnimation:Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;->start()V

    .line 215
    return-void
.end method

.method public updateLayout()V
    .registers 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->requestLayout()V

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification;->invalidate()V

    .line 172
    return-void
.end method
