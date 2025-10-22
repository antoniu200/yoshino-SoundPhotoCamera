.class public Lcom/sonyericsson/cameracommon/widget/Switch;
.super Landroid/widget/LinearLayout;
.source "Switch.java"


# static fields
.field private static final DISABLED_FILTER:I

.field private static final OFF_POSITION:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Switch"


# instance fields
.field private mIsChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnPosition:I

.field protected mSwitchBundle:Landroid/view/View;

.field private mSwitchKnob:Landroid/widget/ImageView;

.field private mSwitchTrack:Landroid/widget/ImageView;

.field protected mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/sonyericsson/cameracommon/R$color;->disabled_filter:I

    sput v0, Lcom/sonyericsson/cameracommon/widget/Switch;->DISABLED_FILTER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    .line 47
    return-void
.end method

.method private updateIcon()V
    .registers 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v0, :cond_2a

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_switch_on_bg_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_switch_on_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    :goto_12
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    .line 120
    return-void

    .line 112
    :cond_2a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_switch_off_bg_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/R$drawable;->cam_setting_switch_off_icn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_12
.end method

.method private updatePosition()V
    .registers 3

    .prologue
    .line 103
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnPosition:I

    :goto_6
    int-to-float v0, v1

    .line 104
    .local v0, "x":F
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 105
    return-void

    .line 103
    .end local v0    # "x":F
    :cond_d
    const/4 v1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public changeState()V
    .registers 4

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 96
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 100
    :cond_18
    return-void

    .line 95
    :cond_19
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_track:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_knob:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchKnob:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_category:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->switch_bundle:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchBundle:Landroid/view/View;

    .line 56
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mIsChecked:Z

    .line 64
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updateIcon()V

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->updatePosition()V

    .line 66
    return-void
.end method

.method public setEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/16 v4, 0x17

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v4, v0, :cond_25

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 88
    :goto_24
    return-void

    .line 76
    :cond_25
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->default_text_col:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1f

    .line 80
    :cond_35
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v4, v0, :cond_5f

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mSwitchTrack:Landroid/widget/ImageView;

    sget v1, Lcom/sonyericsson/cameracommon/widget/Switch;->DISABLED_FILTER:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_24

    .line 84
    :cond_5f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->grayout_text_col:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_57
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 92
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/Switch;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
