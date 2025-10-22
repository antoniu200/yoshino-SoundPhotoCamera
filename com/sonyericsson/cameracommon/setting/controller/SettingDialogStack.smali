.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
.super Ljava/lang/Object;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;
    }
.end annotation


# static fields
.field private static final DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final TAG:Ljava/lang/String; = "SettingDialogStack"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

.field private final mDialogBackground:Landroid/view/ViewGroup;

.field private final mDialogTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMenuDialogOpened:Z

.field private mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

.field private mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mMenuDialogRowCount:I

.field private mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

.field private mOrientation:I

.field private mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mShortcutDialotTitleId:I

.field private final mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

.field private mTargetAreaList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 862
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;
    .param p5, "settingShortcutItems"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    .line 76
    iput v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;-><init>(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {v0, p1, p3, p5}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    .line 114
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 115
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 116
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 117
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 122
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 124
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Landroid/view/View$OnKeyListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    return-object v0
.end method

.method private closeControlDialog(Z)Z
    .registers 5
    .param p1, "isAnimation"    # Z

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_23

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    if-eqz p1, :cond_16

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 604
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->close()V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 609
    const/4 v0, 0x1

    .line 611
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private closeMenuDialog(Z)Z
    .registers 6
    .param p1, "isAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 557
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v1, :cond_25

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    if-eqz p1, :cond_17

    .line 562
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 565
    :cond_17
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->close()V

    .line 566
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 567
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 569
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 571
    const/4 v0, 0x1

    .line 573
    :cond_25
    return v0
.end method

.method private closeSecondLayerDialog(Z)Z
    .registers 5
    .param p1, "isAnimation"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_26

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-eqz p1, :cond_16

    .line 620
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 623
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->close()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 626
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 628
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 629
    const/4 v0, 0x1

    .line 631
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private closeShortcutDialog(Z)Z
    .registers 5
    .param p1, "isAnimation"    # Z

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_23

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    if-eqz p1, :cond_16

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 585
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->close()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 590
    const/4 v0, 0x1

    .line 592
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 691
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 692
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_8

    .line 703
    :cond_7
    :goto_7
    return-object v2

    .line 696
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 697
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_7

    .line 700
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 701
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 703
    :cond_1f
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_7
.end method

.method private generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 668
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_8

    .line 687
    :cond_7
    :goto_7
    return-object v2

    .line 672
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 673
    .local v1, "menuItem":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v3, :cond_1f

    .line 674
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 687
    :cond_19
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 678
    :cond_1f
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_7

    .line 679
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_7
.end method

.method private generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 651
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_8

    .line 662
    :cond_7
    :goto_7
    return-object v2

    .line 655
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 656
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_7

    .line 659
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 660
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 662
    :cond_1f
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_7
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .registers 8

    .prologue
    .line 708
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 709
    .local v0, "container":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 710
    const/4 v0, 0x0

    .line 722
    .end local v0    # "container":Landroid/graphics/Rect;
    :goto_e
    return-object v0

    .line 713
    .restart local v0    # "container":Landroid/graphics/Rect;
    :cond_f
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 714
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 715
    .local v1, "marginLeft":I
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 716
    .local v2, "marginRight":I
    const/4 v4, 0x0

    .line 719
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    .line 720
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 716
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_e
.end method

.method private getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .registers 5

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_10

    aget-object v0, v2, v1

    .line 530
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_d

    .line 534
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :goto_c
    return-object v0

    .line 529
    .restart local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 534
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .registers 4

    .prologue
    .line 641
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Ljava/lang/Object;I)Z
    .registers 11
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "dialog"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .param p3, "tag"    # Ljava/lang/Object;
    .param p4, "menuDialogRowCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    .line 251
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v4, :cond_9

    .line 297
    :goto_8
    return v2

    .line 256
    :cond_9
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-nez v4, :cond_15

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_8

    .line 261
    :cond_15
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 262
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    .line 264
    .local v1, "isAnimation":Z
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v4, :cond_1f

    .line 265
    const/4 v1, 0x1

    .line 269
    :cond_1f
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 270
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 271
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 272
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 274
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v2, :cond_5c

    .line 275
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 279
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v2, :cond_45

    if-eqz v1, :cond_45

    .line 280
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 283
    :cond_45
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSensorOrientation(I)V

    .line 285
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 291
    :cond_5c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 292
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 294
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 297
    goto :goto_8
.end method

.method private removeLastRectList()V
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 844
    :cond_d
    return-void
.end method

.method private resetEnabledOfDialogs()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 540
    const/4 v3, 0x4

    new-array v2, v3, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v6, v2, v3

    .line 547
    .local v2, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .line 549
    .local v0, "current":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v7, v2

    move v6, v5

    :goto_1d
    if-ge v6, v7, :cond_2f

    aget-object v1, v2, v6

    .line 550
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v1, :cond_29

    .line 551
    if-ne v1, v0, :cond_2d

    move v3, v4

    :goto_26
    invoke-interface {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setEnabled(Z)V

    .line 549
    :cond_29
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1d

    :cond_2d
    move v3, v5

    .line 551
    goto :goto_26

    .line 554
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2f
    return-void
.end method


# virtual methods
.method public clearShortcutSelected()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 150
    return-void
.end method

.method public closeCurrentDialog()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "handled":Z
    if-nez v0, :cond_8

    .line 452
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v0

    .line 454
    :cond_8
    if-nez v0, :cond_e

    .line 455
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v0

    .line 457
    :cond_e
    if-nez v0, :cond_14

    .line 458
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v0

    .line 460
    :cond_14
    if-nez v0, :cond_1a

    .line 461
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v0

    .line 463
    :cond_1a
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 465
    if-eqz v0, :cond_39

    .line 466
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 469
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 484
    :cond_39
    :goto_39
    return v0

    .line 476
    :cond_3a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    goto :goto_39
.end method

.method public closeDialogs()V
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 489
    return-void
.end method

.method public closeDialogs(Z)V
    .registers 5
    .param p1, "withAnimation"    # Z

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 496
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 497
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 498
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 502
    if-eqz v0, :cond_30

    .line 504
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_30

    .line 505
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 512
    :cond_30
    return-void
.end method

.method public getBlurTargetAreaList()Ljava/util/Stack;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clear()V

    .line 819
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 820
    .local v3, "shortcutIconRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 821
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_17
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v1

    .line 827
    .local v1, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_3d

    .line 828
    aget-object v0, v1, v2

    .line 829
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_3a

    .line 830
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v4, v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinatePosition(I)V

    .line 831
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->getDialogRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 834
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_3d
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    return-object v4
.end method

.method public getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .registers 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    return-object v0
.end method

.method public getSecondLayerDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    return-object v0
.end method

.method public hideShortcutTray()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->hide()V

    .line 146
    return-void
.end method

.method public isControlDialogOpened()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDialogOpened()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isMenuDialogOpened()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpened(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "i":Ljava/lang/Object;
    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 175
    const/4 v1, 0x1

    .line 178
    .end local v0    # "i":Ljava/lang/Object;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .registers 3
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v4, :cond_7

    .line 352
    :cond_6
    :goto_6
    return v2

    .line 318
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 325
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 326
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 327
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 328
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 330
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    .line 331
    .local v1, "coordinateData":Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    if-eqz v1, :cond_6

    .line 334
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createControl(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 338
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 340
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->open(Landroid/view/ViewGroup;)V

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setSensorOrientation(I)V

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 346
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 348
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 352
    goto :goto_6
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;I)Z
    .registers 8
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "titleTextResource"    # I
    .param p3, "tag"    # Ljava/lang/Object;
    .param p4, "menuDialogRowCount"    # I

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_17

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 233
    invoke-static {v1, v2, p2, p4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createSimpleMenu(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v0

    .line 235
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Ljava/lang/Object;I)Z

    move-result v1

    .line 237
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)Z
    .registers 9
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "requestUpdate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 194
    new-array v2, v5, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;I)Z
    .registers 10
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p3, "onSelectedTabListener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    .param p4, "tag"    # Ljava/lang/Object;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_1e

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    array-length v3, p2

    invoke-static {v1, v2, p5, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createMenu(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v0

    .line 215
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 216
    invoke-virtual {v0, p3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setOnSelectedTabListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V

    .line 218
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Ljava/lang/Object;I)Z

    move-result v1

    .line 220
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .registers 3
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 417
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 419
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_48

    .line 421
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogRowCount:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 425
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->numberOfTabs()I

    move-result v4

    .line 421
    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createSecondLayerDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 433
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_48
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    .line 443
    return v5
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z
    .registers 9
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    if-ne v3, p2, :cond_b

    .line 404
    :goto_a
    return v1

    .line 371
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 374
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 375
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 376
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 377
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 379
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 380
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_54

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-static {v1, v3, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->open(Landroid/view/ViewGroup;)V

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 392
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    .line 393
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_54
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v1, v2

    .line 404
    goto :goto_a
.end method

.method public setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 185
    if-nez p1, :cond_7

    .line 186
    sget-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    .line 190
    :goto_6
    return-void

    .line 188
    :cond_7
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    goto :goto_6
.end method

.method public setUiOrientation(I)V
    .registers 7
    .param p1, "orientation"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    .line 516
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v1, :cond_d

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 519
    :cond_d
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 520
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_1e

    .line 521
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v0, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setSensorOrientation(I)V

    .line 519
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 524
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_21
    return-void
.end method

.method public setupShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 133
    return-void
.end method

.method public showShortcutTray()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 142
    return-void
.end method

.method public updateMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 6
    .param p1, "commonKeyAdapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 847
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 848
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->clear()V

    .line 850
    const/4 v2, 0x0

    .line 853
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 854
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 855
    .restart local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 859
    :cond_1d
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    .line 860
    return-void
.end method

.method public updateShortcutSelected(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 138
    return-void
.end method
