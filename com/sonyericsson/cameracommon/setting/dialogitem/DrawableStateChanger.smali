.class Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
.super Ljava/lang/Object;
.source "SettingDialogItem.java"


# static fields
.field private static final DRAWABLE_LEVEL_BOTTOM:I = 0x2

.field private static final DRAWABLE_LEVEL_NORMAL:I = 0x0

.field private static final DRAWABLE_LEVEL_TOP:I = 0x1


# instance fields
.field private mBackground:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field private mDividerLeft:Landroid/view/View;

.field private mDividerRight:Landroid/view/View;

.field private final mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .registers 3
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .line 79
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    .line 83
    return-void
.end method

.method private getDrawbleLevel(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)I
    .registers 3
    .param p1, "params"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->top:Z

    if-eqz v0, :cond_8

    .line 137
    const/4 v0, 0x1

    .line 141
    :goto_7
    return v0

    .line 138
    :cond_8
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->bottom:Z

    if-eqz v0, :cond_e

    .line 139
    const/4 v0, 0x2

    goto :goto_7

    .line 141
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public apply()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    if-eqz v0, :cond_49

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_4a

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->getDrawbleLevel(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 133
    :cond_49
    return-void

    .line 116
    :cond_4a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->left:Z

    if-eqz v0, :cond_5b

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 119
    :cond_5b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mParams:Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter$ItemLayoutParams;->right:Z

    if-eqz v0, :cond_6c

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 123
    :cond_6c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e
.end method

.method public background(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .registers 2
    .param p1, "background"    # Landroid/view/View;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mBackground:Landroid/view/View;

    .line 98
    return-object p0
.end method

.method public dividerHorizontal(Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .registers 2
    .param p1, "bottom"    # Landroid/view/View;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerBottom:Landroid/view/View;

    .line 87
    return-object p0
.end method

.method public dividerVertical(Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;
    .registers 3
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerLeft:Landroid/view/View;

    .line 92
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/dialogitem/DrawableStateChanger;->mDividerRight:Landroid/view/View;

    .line 93
    return-object p0
.end method
