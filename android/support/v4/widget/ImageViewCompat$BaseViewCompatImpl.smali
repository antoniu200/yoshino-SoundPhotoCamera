.class Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 43
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .line 44
    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p1    # "view":Landroid/widget/ImageView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 64
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .line 65
    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    .restart local p1    # "view":Landroid/widget/ImageView;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 50
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 51
    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    :cond_9
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 57
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 58
    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 60
    :cond_9
    return-void
.end method
