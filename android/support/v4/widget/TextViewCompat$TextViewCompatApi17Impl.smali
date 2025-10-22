.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_18

    .line 267
    .local v2, "rtl":Z
    :goto_9
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    .line 270
    aget-object v3, v0, v6

    .line 271
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v4

    .line 272
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    aput-object v3, v0, v4

    .line 273
    aput-object v1, v0, v6

    .line 275
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    :cond_17
    return-object v0

    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "rtl":Z
    :cond_18
    move v2, v4

    .line 266
    goto :goto_9
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 242
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 243
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p4

    :goto_a
    if-eqz v0, :cond_14

    .end local p2    # "start":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void

    .line 242
    .end local v0    # "rtl":Z
    .restart local p2    # "start":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move-object v1, p2

    .line 243
    goto :goto_a

    :cond_14
    move-object p2, p4

    goto :goto_c
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "top"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "bottom"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 260
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move v1, p4

    :goto_a
    if-eqz v0, :cond_14

    .end local p2    # "start":I
    :goto_c
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 262
    return-void

    .line 259
    .end local v0    # "rtl":Z
    .restart local p2    # "start":I
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move v1, p2

    .line 260
    goto :goto_a

    :cond_14
    move p2, p4

    goto :goto_c
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 250
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 251
    .local v0, "rtl":Z
    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p4

    :goto_a
    if-eqz v0, :cond_14

    .end local p2    # "start":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void

    .line 250
    .end local v0    # "rtl":Z
    .restart local p2    # "start":Landroid/graphics/drawable/Drawable;
    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "rtl":Z
    :cond_12
    move-object v1, p2

    .line 251
    goto :goto_a

    :cond_14
    move-object p2, p4

    goto :goto_c
.end method
