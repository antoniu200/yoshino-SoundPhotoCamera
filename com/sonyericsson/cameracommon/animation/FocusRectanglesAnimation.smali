.class public Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
.super Ljava/lang/Object;
.source "FocusRectanglesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;,
        Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusRectanglesAnimation"


# instance fields
.field private final mAnimationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/animation/Animation;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

.field private final mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

.field private final mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_single:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 72
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_single_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_touch:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_width:I

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->focus_rect_object_height:I

    sget v4, Lcom/sonyericsson/cameracommon/R$attr;->focus_indicator_animation_mag_object:I

    sget v5, Lcom/sonyericsson/cameracommon/R$integer;->focus_indicator_animation_focusin_duration:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    return-object v0
.end method

.method private getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;
    .registers 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_1b

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_indicator_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    :cond_1b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private playAfFadeOutAnimation(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFadeOutAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 158
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$FadeOutAnimationListener;-><init>(Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mAnimationMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method private playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-object p2
.end method

.method private playTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    return-object p2
.end method

.method private playTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;

    move-result-object p2

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    return-object p2
.end method


# virtual methods
.method public cancelAfFocusAnimationObject(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_14

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_2b

    .line 248
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 252
    :cond_2b
    return-void
.end method

.method public cancelAfFocusAnimationSingle(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_14

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_2b

    .line 260
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mSingleConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 264
    :cond_2b
    return-void
.end method

.method public cancelAfFocusAnimationTouch(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    if-ne v0, v1, :cond_14

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    if-eq v0, v1, :cond_2b

    .line 272
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    iget v1, v1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 276
    :cond_2b
    return-void
.end method

.method public getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 180
    if-nez p2, :cond_22

    .line 181
    new-instance v0, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;-><init>(Landroid/view/View;)V

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    iget v2, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setFromSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    iget v2, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setToSize(II)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    iget v1, p3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mDuration:I

    .line 184
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->setDuration(I)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation$Builder;->create()Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object p2

    .line 189
    :goto_21
    return-object p2

    .line 187
    :cond_22
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;->recycle()V

    goto :goto_21
.end method

.method public getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object v0
.end method

.method public getTouchAnimation(Landroid/view/View;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationTouch:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mTouchConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    return-object v0
.end method

.method public getTouchDownAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 194
    if-nez p2, :cond_c

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_touch_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .end local p2    # "animation":Landroid/view/animation/AnimationSet;
    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 199
    .restart local p2    # "animation":Landroid/view/animation/AnimationSet;
    :cond_c
    return-object p2
.end method

.method public getTouchUpAnimation(Landroid/view/View;Landroid/view/animation/AnimationSet;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Landroid/view/animation/AnimationSet;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/view/animation/AnimationSet;
    .param p3, "config"    # Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .prologue
    .line 204
    if-nez p2, :cond_c

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mContext:Landroid/content/Context;

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->focus_touch_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .end local p2    # "animation":Landroid/view/animation/AnimationSet;
    check-cast p2, Landroid/view/animation/AnimationSet;

    .line 209
    .restart local p2    # "animation":Landroid/view/animation/AnimationSet;
    :cond_c
    return-object p2
.end method

.method public playAfFadeOutAnimationObject(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public playAfFadeOutAnimationSingle(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public playAfFadeOutAnimationTouch(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFadeOutAnimation(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public playAfFocusInAnimationObject(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mObjectConfig:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    .line 138
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playAfFocusInAnimation(Landroid/view/View;Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;)Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->mFocusInAnimationObject:Lcom/sonyericsson/cameracommon/animation/ScaleLayoutAnimation;

    .line 139
    return-void
.end method

.method public playAfFocusInAnimationSingle(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 95
    return-void
.end method

.method public playAfFocusInAnimationTouch(Landroid/view/View;I)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 111
    return-void
.end method

.method public playTouchDownAnimation(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->TOUCH:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 99
    return-void
.end method

.method public playTouchUpAnimation(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->RELEASE:I

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    .line 103
    return-void
.end method

.method public startFocusAnimation(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # I

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_11

    .line 117
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 123
    :cond_10
    :goto_10
    return-void

    .line 118
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_10
.end method

.method public stopFocusAnimation(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_d

    .line 128
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 130
    :cond_d
    return-void
.end method
