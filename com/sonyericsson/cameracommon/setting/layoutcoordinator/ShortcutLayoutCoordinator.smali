.class public Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;
.super Ljava/lang/Object;
.source "ShortcutLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;


# static fields
.field public static final TAG:Ljava/lang/String; = "ShortcutLayoutCoordinator"


# instance fields
.field private final mAnchorRect:Landroid/graphics/Rect;

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mDialogHeight:I

.field public mDialogRect:Landroid/graphics/Rect;

.field private mDialogWidth:I

.field private final mIsTablet:Z

.field private final mMaxHeightMargin:I

.field private final mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p2, "containerRect"    # Landroid/graphics/Rect;
    .param p3, "anchorRect"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 52
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    .line 56
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    if-eqz v1, :cond_2c

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_tablet:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    :goto_29
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mMaxHeightMargin:I

    .line 60
    return-void

    .line 58
    :cond_2c
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_phone:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_29
.end method

.method private coordinatePositionPhone(I)V
    .registers 10
    .param p1, "orientation"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotX(F)V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotY(F)V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRotation(F)V

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 81
    .local v0, "left":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 83
    .local v1, "top":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 88
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 89
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 90
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 91
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 105
    :goto_78
    return-void

    .line 93
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_79
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 94
    .restart local v0    # "left":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 95
    .restart local v1    # "top":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 97
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 99
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 100
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 101
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 102
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 103
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    goto :goto_78
.end method

.method private coordinatePositionTablet(I)V
    .registers 13
    .param p1, "orientation"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 109
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    .line 110
    .local v2, "shortcutCount":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 112
    .local v3, "shortcutSize":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    .line 114
    .local v1, "marginVertical":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotX(F)V

    .line 115
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotY(F)V

    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 118
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 119
    .local v0, "left":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 121
    .local v4, "top":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_ad

    .line 122
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int v4, v5, v6

    .line 127
    :cond_60
    :goto_60
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 128
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 129
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 130
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 131
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 132
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 133
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 134
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 135
    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 155
    :goto_a3
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRotation(F)V

    .line 156
    return-void

    .line 123
    :cond_ad
    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_60

    .line 124
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int v4, v5, v6

    goto :goto_60

    .line 137
    .end local v0    # "left":I
    .end local v4    # "top":I
    :cond_c7
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 138
    .restart local v0    # "left":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 139
    .restart local v4    # "top":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_12f

    .line 140
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v4, v5, v1

    .line 145
    :cond_ea
    :goto_ea
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 146
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 147
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 148
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 149
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 150
    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 151
    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 152
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 153
    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    goto/16 :goto_a3

    .line 141
    :cond_12f
    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_ea

    .line 142
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    sub-int v4, v5, v6

    goto :goto_ea
.end method

.method private isPortrait(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 203
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public coordinatePosition(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    if-eqz v0, :cond_8

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->coordinatePositionTablet(I)V

    .line 72
    :goto_7
    return-void

    .line 70
    :cond_8
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->coordinatePositionPhone(I)V

    goto :goto_7
.end method

.method public coordinateSize(I)V
    .registers 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 163
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 165
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 168
    .local v0, "containerHeight":I
    :goto_14
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mMaxHeightMargin:I

    sub-int v1, v0, v4

    .line 170
    .local v1, "maxHeight":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v4

    if-le v4, v1, :cond_a8

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 171
    const/16 v4, 0x18

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v4, v5, :cond_82

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 172
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 173
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le v4, v5, :cond_82

    .line 175
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v2

    .line 177
    .local v2, "numRows":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 193
    :goto_72
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    .line 194
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    .line 195
    return-void

    .line 166
    .end local v0    # "containerHeight":I
    .end local v1    # "maxHeight":I
    .end local v2    # "numRows":I
    :cond_7b
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_14

    .line 180
    .restart local v0    # "containerHeight":I
    .restart local v1    # "maxHeight":I
    :cond_82
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 181
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v2

    .line 182
    .restart local v2    # "numRows":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_72

    .line 186
    .end local v2    # "numRows":I
    :cond_a8
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 188
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v2

    .line 189
    .restart local v2    # "numRows":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_72
.end method

.method public getDialogRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-object v0
.end method
