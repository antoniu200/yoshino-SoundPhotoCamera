.class public Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;
.super Ljava/lang/Object;
.source "SecondLayerLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;


# static fields
.field public static final TAG:Ljava/lang/String; = "SecondLayerLayoutCoordinator"


# instance fields
.field private final mAnchor:Landroid/graphics/Rect;

.field private final mBounds:Landroid/graphics/Rect;

.field private mDialogHeight:I

.field public mDialogRect:Landroid/graphics/Rect;

.field private mDialogWidth:I

.field private final mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

.field private final mTopMargin:I

.field private final mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 8
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p2, "containerRect"    # Landroid/graphics/Rect;
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "menuDialogRowCount"    # I
    .param p5, "numberOfTabs"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 50
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mAnchor:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p4, p5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->second_layer_dialog_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mTopMargin:I

    .line 56
    return-void
.end method

.method private isPortrait(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 112
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public coordinatePosition(I)V
    .registers 12
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    .line 60
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeWidth(I)I

    move-result v2

    .line 61
    .local v2, "parentDialogWidth":I
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeHeight(I)I

    move-result v1

    .line 64
    .local v1, "parentDialogHeight":I
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isMirroringRequired(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mAnchor:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 67
    .local v0, "left":I
    :goto_1d
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mAnchor:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mTopMargin:I

    add-int v6, v7, v8

    .line 69
    .local v6, "top":I
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v8, v6

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v5, "targetRect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v9, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .local v4, "rotationSourceArea":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computePosition(I)Landroid/graphics/Point;

    move-result-object v3

    .line 73
    .local v3, "rotationDestPosition":Landroid/graphics/Point;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->isPortrait(I)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 75
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_55

    .line 76
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Point;->x:I

    .line 85
    :cond_55
    :goto_55
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-static {p1, v7, v5, v4, v3}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinateUtil;->coodinatePosition(ILandroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 91
    return-void

    .line 64
    .end local v0    # "left":I
    .end local v3    # "rotationDestPosition":Landroid/graphics/Point;
    .end local v4    # "rotationSourceArea":Landroid/graphics/Rect;
    .end local v5    # "targetRect":Landroid/graphics/Rect;
    .end local v6    # "top":I
    :cond_5e
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mAnchor:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogWidth:I

    sub-int v0, v7, v8

    goto :goto_1d

    .line 80
    .restart local v0    # "left":I
    .restart local v3    # "rotationDestPosition":Landroid/graphics/Point;
    .restart local v4    # "rotationSourceArea":Landroid/graphics/Rect;
    .restart local v5    # "targetRect":Landroid/graphics/Rect;
    .restart local v6    # "top":I
    :cond_67
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-le v7, v8, :cond_55

    .line 81
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Point;->y:I

    goto :goto_55
.end method

.method public coordinateSize(I)V
    .registers 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->isPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 97
    .local v0, "heightLimit":I
    :goto_d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v1

    .line 99
    .local v1, "numRows":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogWidth:I

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogHeight:I

    .line 102
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    return-void

    .line 95
    .end local v0    # "heightLimit":I
    .end local v1    # "numRows":I
    :cond_47
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_d
.end method

.method public getDialogRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/SecondLayerLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-object v0
.end method
