.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mImageTint:Landroid/support/v7/widget/TintInfo;

.field private mInternalImageTint:Landroid/support/v7/widget/TintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 46
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "imageSource"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    if-nez v4, :cond_c

    .line 196
    new-instance v4, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v4}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 198
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 199
    .local v0, "info":Landroid/support/v7/widget/TintInfo;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 201
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 202
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1d

    .line 203
    iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 204
    iput-object v2, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 206
    :cond_1d
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 207
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_29

    .line 208
    iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 209
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    :cond_29
    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_31

    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_3b

    .line 213
    :cond_31
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 217
    :goto_3a
    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 174
    .local v0, "sdk":I
    if-le v0, v3, :cond_f

    .line 177
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v3, :cond_d

    .line 185
    :cond_c
    :goto_c
    return v1

    :cond_d
    move v1, v2

    .line 177
    goto :goto_c

    .line 178
    :cond_f
    if-eq v0, v3, :cond_c

    move v1, v2

    .line 185
    goto :goto_c
.end method


# virtual methods
.method applySupportImageTint()V
    .registers 4

    .prologue
    .line 136
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 138
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_b
    if-eqz v0, :cond_19

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 143
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 157
    :cond_19
    :goto_19
    return-void

    .line 149
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_2a

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_19

    .line 152
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_19

    .line 153
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 153
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_19
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method hasOverlappingRendering()Z
    .registers 4

    .prologue
    .line 98
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_12

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_12

    .line 103
    const/4 v1, 0x0

    .line 105
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v6, -0x1

    .line 49
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v5, 0x0

    invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_e
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_30

    .line 56
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 57
    .local v2, "id":I
    if-eq v2, v6, :cond_30

    .line 58
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_30

    .line 60
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .end local v2    # "id":I
    :cond_30
    if-eqz v1, :cond_35

    .line 66
    invoke-static {v1}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_35
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 70
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 71
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 70
    invoke-static {v3, v4}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 73
    :cond_48
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 74
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    const/4 v5, -0x1

    .line 76
    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x0

    .line 75
    invoke-static {v4, v5}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_65

    .line 79
    :cond_61
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 81
    return-void

    .line 79
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_65
    move-exception v3

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v3
.end method

.method public setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 84
    if-eqz p1, :cond_1a

    .line 85
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 87
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_11
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 95
    return-void

    .line 91
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 160
    if-eqz p1, :cond_1a

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_d

    .line 162
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    .line 164
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 169
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 170
    return-void

    .line 167
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    goto :goto_16
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 112
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 115
    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 125
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 129
    return-void
.end method
