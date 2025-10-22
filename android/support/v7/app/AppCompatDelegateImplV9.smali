.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
    }
.end annotation


# static fields
.field private static final IS_PRE_LOLLIPOP:Z


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 127
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 150
    return-void
.end method

.method private applyFixedSizeWindow()V
    .registers 8

    .prologue
    .line 530
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;

    .line 536
    .local v1, "cfl":Landroid/support/v7/widget/ContentFrameLayout;
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 537
    .local v2, "windowDecor":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 538
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 539
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 537
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 541
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 542
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 543
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 545
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 546
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 547
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 546
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 549
    :cond_4f
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 550
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 551
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 550
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 553
    :cond_60
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 554
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 555
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 554
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 557
    :cond_71
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 558
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 559
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 558
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 561
    :cond_82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 563
    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 564
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .registers 16

    .prologue
    const v14, 0x1020002

    const/16 v13, 0x6d

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 350
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 352
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_23

    .line 353
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 358
    :cond_23
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 359
    invoke-virtual {p0, v12}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 364
    :cond_2e
    :goto_2e
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 365
    invoke-virtual {p0, v13}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 367
    :cond_39
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 368
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 370
    :cond_46
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    .line 371
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 376
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 377
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 380
    .local v5, "subDecor":Landroid/view/ViewGroup;
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-nez v8, :cond_135

    .line 381
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v8, :cond_d3

    .line 383
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 387
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 468
    :cond_71
    :goto_71
    if-nez v5, :cond_167

    .line 469
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 360
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_c4
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 362
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    goto/16 :goto_2e

    .line 388
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_d3
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v8, :cond_71

    .line 394
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 395
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 398
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_132

    .line 399
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 405
    .local v6, "themedContext":Landroid/content/Context;
    :goto_f4
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 406
    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 408
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    sget v8, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 409
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/DecorContentParent;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 410
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 415
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v8, :cond_11c

    .line 416
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v8, v13}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 418
    :cond_11c
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v8, :cond_126

    .line 419
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 421
    :cond_126
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v8, :cond_71

    .line 422
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    goto/16 :goto_71

    .line 401
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_132
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .restart local v6    # "themedContext":Landroid/content/Context;
    goto :goto_f4

    .line 426
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_135
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v8, :cond_151

    .line 427
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 433
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :goto_141
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_15a

    .line 436
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$2;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v5, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_71

    .line 430
    :cond_151
    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    goto :goto_141

    :cond_15a
    move-object v8, v5

    .line 458
    check-cast v8, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$3;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v8, v9}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    goto/16 :goto_71

    .line 479
    :cond_167
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v8, :cond_175

    .line 480
    sget v8, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    .line 484
    :cond_175
    invoke-static {v5}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 486
    sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ContentFrameLayout;

    .line 489
    .local v2, "contentView":Landroid/support/v7/widget/ContentFrameLayout;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 490
    .local v7, "windowContentView":Landroid/view/ViewGroup;
    if-eqz v7, :cond_1ab

    .line 493
    :goto_18a
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_19b

    .line 494
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 495
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 496
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_18a

    .line 501
    .end local v1    # "child":Landroid/view/View;
    :cond_19b
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 502
    invoke-virtual {v2, v14}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 506
    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_1ab

    .line 507
    check-cast v7, Landroid/widget/FrameLayout;

    .end local v7    # "windowContentView":Landroid/view/ViewGroup;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_1ab
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 514
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$4;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 524
    return-object v5
.end method

.method private ensureSubDecor()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v2, :cond_38

    .line 323
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    .line 326
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 327
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 328
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 331
    :cond_18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    .line 333
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 335
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    .line 342
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 343
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_38

    if-eqz v0, :cond_33

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v2, :cond_38

    .line 344
    :cond_33
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 347
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_38
    return-void
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 6
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1299
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 1300
    iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1316
    :cond_a
    :goto_a
    return v1

    .line 1304
    :cond_b
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_11

    move v1, v2

    .line 1305
    goto :goto_a

    .line 1308
    :cond_11
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v3, :cond_1c

    .line 1309
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1312
    :cond_1c
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1314
    .local v0, "menuView":Landroid/support/v7/view/menu/MenuView;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Landroid/support/v7/view/menu/MenuView;
    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1316
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_a
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 4
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    .line 1205
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1206
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1207
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    .line 1208
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .registers 11
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .prologue
    const/4 v8, 0x1

    .line 1256
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1259
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_d

    iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_5f

    :cond_d
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v6, :cond_5f

    .line 1261
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1262
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1263
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1265
    const/4 v5, 0x0

    .line 1266
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6b

    .line 1267
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1268
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1269
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1270
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1277
    :goto_39
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4f

    .line 1278
    if-nez v5, :cond_4a

    .line 1279
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1280
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1282
    :cond_4a
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1285
    :cond_4f
    if-eqz v5, :cond_5f

    .line 1286
    new-instance v2, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1287
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1291
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_5f
    new-instance v3, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1292
    .local v3, "menu":Landroid/support/v7/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1293
    invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1295
    return v8

    .line 1273
    .end local v3    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_6b
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_39
.end method

.method private invalidatePanelMenu(I)V
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1620
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    .line 1622
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_19

    .line 1623
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1624
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    .line 1626
    :cond_19
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1474
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_14

    .line 1475
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1476
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_14

    .line 1477
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1481
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1485
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v5, :cond_8

    move v1, v4

    .line 1534
    :cond_7
    :goto_7
    return v1

    .line 1489
    :cond_8
    const/4 v1, 0x0

    .line 1490
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1491
    .local v3, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez p1, :cond_5a

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v5, :cond_5a

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1492
    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_5a

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1493
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 1494
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v5

    if-nez v5, :cond_53

    .line 1495
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_41

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1496
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .line 1525
    :cond_41
    :goto_41
    if-eqz v1, :cond_7

    .line 1526
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1528
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_7e

    .line 1529
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_7

    .line 1499
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_53
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    goto :goto_41

    .line 1502
    :cond_5a
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v5, :cond_62

    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v5, :cond_68

    .line 1505
    :cond_62
    iget-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1507
    invoke-virtual {p0, v3, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_41

    .line 1508
    :cond_68
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v5, :cond_41

    .line 1509
    const/4 v2, 0x1

    .line 1510
    .local v2, "show":Z
    iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v5, :cond_77

    .line 1513
    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1514
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1517
    :cond_77
    if-eqz v2, :cond_41

    .line 1519
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1520
    const/4 v1, 0x1

    goto :goto_41

    .line 1531
    .end local v2    # "show":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_7e
    const-string v4, "AppCompatDelegate"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .registers 21
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1106
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1202
    :cond_c
    :goto_c
    return-void

    .line 1112
    :cond_d
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v4, :cond_36

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1114
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 1115
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_53

    const/4 v15, 0x1

    .line 1117
    .local v15, "isXLarge":Z
    :goto_27
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_55

    const/4 v14, 0x1

    .line 1120
    .local v14, "isHoneycombApp":Z
    :goto_32
    if-eqz v15, :cond_36

    if-nez v14, :cond_c

    .line 1125
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 1126
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_57

    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 1128
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_c

    .line 1115
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_53
    const/4 v15, 0x0

    goto :goto_27

    .line 1117
    .restart local v15    # "isXLarge":Z
    :cond_55
    const/4 v14, 0x0

    goto :goto_32

    .line 1132
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 1133
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_c

    .line 1138
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1142
    const/4 v3, -0x2

    .line 1143
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_78

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_136

    .line 1144
    :cond_78
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v4, :cond_11d

    .line 1146
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_c

    .line 1154
    :cond_8a
    :goto_8a
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1158
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1159
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_a7

    .line 1160
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1163
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a7
    move-object/from16 v0, p1

    iget v10, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    .line 1164
    .local v10, "backgroundResId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1166
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 1167
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_cd

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_cd

    .line 1168
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1170
    :cond_cd
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 1177
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1188
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_e9
    :goto_e9
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1190
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v7, 0x3ea

    const/high16 v8, 0x820000

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1197
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1198
    move-object/from16 v0, p1

    iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1200
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    goto/16 :goto_c

    .line 1148
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_11d
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_8a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_8a

    .line 1150
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_8a

    .line 1179
    :cond_136
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_e9

    .line 1182
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1183
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_e9

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e9

    .line 1184
    const/4 v3, -0x1

    goto :goto_e9
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .registers 7
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1596
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1597
    const/4 v0, 0x0

    .line 1616
    :cond_7
    :goto_7
    return v0

    .line 1600
    :cond_8
    const/4 v0, 0x0

    .line 1604
    .local v0, "handled":Z
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_13

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_13
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1d

    .line 1606
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1609
    :cond_1d
    if-eqz v0, :cond_7

    .line 1611
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_7

    .line 1612
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_7
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1320
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1420
    :cond_9
    :goto_9
    return v5

    .line 1325
    :cond_a
    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_10

    move v5, v4

    .line 1326
    goto :goto_9

    .line 1329
    :cond_10
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v3, p1, :cond_1d

    .line 1331
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1334
    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1336
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2b

    .line 1337
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1340
    :cond_2b
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_35

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v6, 0x6c

    if-ne v3, v6, :cond_a0

    :cond_35
    move v1, v4

    .line 1343
    .local v1, "isActionBarMenu":Z
    :goto_36
    if-eqz v1, :cond_41

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_41

    .line 1346
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v3}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1349
    :cond_41
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_f3

    if-eqz v1, :cond_4f

    .line 1350
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v3, :cond_f3

    .line 1353
    :cond_4f
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_57

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_a4

    .line 1354
    :cond_57
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_65

    .line 1355
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v3, :cond_9

    .line 1360
    :cond_65
    if-eqz v1, :cond_7f

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_7f

    .line 1361
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v3, :cond_76

    .line 1362
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1364
    :cond_76
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1369
    :cond_7f
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1370
    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1372
    invoke-virtual {p1, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1374
    if-eqz v1, :cond_9

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_9

    .line 1376
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_9

    .end local v1    # "isActionBarMenu":Z
    :cond_a0
    move v1, v5

    .line 1340
    goto :goto_36

    .line 1382
    .restart local v1    # "isActionBarMenu":Z
    :cond_a2
    iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1387
    :cond_a4
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1391
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_b6

    .line 1392
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1393
    iput-object v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1397
    :cond_b6
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 1398
    if-eqz v1, :cond_cd

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v3, :cond_cd

    .line 1401
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1403
    :cond_cd
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_9

    .line 1408
    :cond_d4
    if-eqz p2, :cond_fc

    .line 1409
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 1408
    :goto_da
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1410
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_fe

    move v3, v4

    :goto_e5
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    .line 1411
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1412
    iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1416
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_f3
    iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1417
    iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1418
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move v5, v4

    .line 1420
    goto/16 :goto_9

    .line 1409
    :cond_fc
    const/4 v3, -0x1

    goto :goto_da

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_fe
    move v3, v5

    .line 1410
    goto :goto_e5
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 10
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x6c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1212
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1213
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1214
    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1216
    :cond_24
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1218
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_32

    if-nez p2, :cond_75

    .line 1219
    :cond_32
    if-eqz v0, :cond_74

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_74

    .line 1221
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_54

    iget v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_54

    .line 1223
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1224
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1227
    :cond_54
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1231
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_74

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_74

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1232
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1233
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1234
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1253
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_74
    :goto_74
    return-void

    .line 1238
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_75
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1239
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_74

    .line 1240
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1241
    .restart local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_74

    .line 1247
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_8a
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1249
    .restart local v1    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iput-boolean v5, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1250
    invoke-virtual {p0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1252
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_74
.end method

.method private sanitizeWindowFeatureId(I)I
    .registers 4
    .param p1, "featureId"    # I

    .prologue
    .line 1739
    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    .line 1740
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const/16 p1, 0x6c

    .line 1749
    .end local p1    # "featureId":I
    :cond_d
    :goto_d
    return p1

    .line 1743
    .restart local p1    # "featureId":I
    :cond_e
    const/16 v0, 0x9

    if-ne p1, v0, :cond_d

    .line 1744
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/16 p1, 0x6d

    goto :goto_d
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v2, 0x0

    .line 1032
    if-nez p1, :cond_5

    move v1, v2

    .line 1050
    :goto_4
    return v1

    .line 1036
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1038
    .local v0, "windowDecor":Landroid/view/View;
    :goto_b
    if-nez p1, :cond_f

    .line 1043
    const/4 v1, 0x1

    goto :goto_4

    .line 1044
    :cond_f
    if-eq p1, v0, :cond_1e

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1e

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 1045
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    move v1, v2

    .line 1050
    goto :goto_4

    .line 1052
    :cond_20
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_b
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .registers 3

    .prologue
    .line 1732
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_c

    .line 1733
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1736
    :cond_c
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 303
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 304
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 306
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1094
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_11

    .line 1095
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory;

    .line 1096
    invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1097
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 1101
    .end local v0    # "result":Landroid/view/View;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "panel"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1539
    if-nez p3, :cond_13

    .line 1541
    if-nez p2, :cond_f

    .line 1542
    if-ltz p1, :cond_f

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_f

    .line 1543
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1547
    :cond_f
    if-eqz p2, :cond_13

    .line 1549
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1554
    :cond_13
    if-eqz p2, :cond_1a

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_1a

    .line 1563
    :cond_19
    :goto_19
    return-void

    .line 1557
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1561
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_19
.end method

.method checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 1424
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v1, :cond_5

    .line 1435
    :goto_4
    return-void

    .line 1428
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1429
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1430
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1431
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1432
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1434
    :cond_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    goto :goto_4
.end method

.method closePanel(I)V
    .registers 4
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1438
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1439
    return-void
.end method

.method closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .registers 8
    .param p1, "st"    # Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1442
    if-eqz p2, :cond_1a

    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1443
    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1444
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1471
    :cond_19
    :goto_19
    return-void

    .line 1448
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1449
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_3a

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3a

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3a

    .line 1450
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1452
    if-eqz p2, :cond_3a

    .line 1453
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v1, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1457
    :cond_3a
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1458
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1459
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1462
    iput-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1466
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1468
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v1, p1, :cond_19

    .line 1469
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    goto :goto_19
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 14
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 1011
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_c

    .line 1012
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1015
    :cond_c
    const/4 v5, 0x0

    .line 1016
    .local v5, "inheritContext":Z
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z

    if-eqz v0, :cond_1f

    .line 1017
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_32

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1019
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_30

    move v5, v7

    .line 1024
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    sget-boolean v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z

    .line 1027
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1024
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_30
    const/4 v5, 0x0

    goto :goto_1f

    :cond_32
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1021
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v5

    goto :goto_1f
.end method

.method dismissPopups()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1757
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v1, :cond_a

    .line 1758
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1761
    :cond_a
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_29

    .line 1762
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1763
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1765
    :try_start_21
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_3c

    .line 1771
    :cond_26
    :goto_26
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1773
    :cond_29
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1775
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1776
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_3b

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3b

    .line 1777
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1779
    :cond_3b
    return-void

    .line 1766
    .end local v0    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :catch_3c
    move-exception v1

    goto :goto_26
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 942
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_12

    .line 944
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 953
    :goto_11
    return v3

    .line 949
    :cond_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 950
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 951
    .local v0, "action":I
    if-nez v0, :cond_24

    move v1, v3

    .line 953
    .local v1, "isDown":Z
    :goto_1d
    if-eqz v1, :cond_26

    invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_11

    .line 951
    .end local v1    # "isDown":Z
    :cond_24
    const/4 v1, 0x0

    goto :goto_1d

    .line 953
    .restart local v1    # "isDown":Z
    :cond_26
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_11
.end method

.method doInvalidatePanelMenu(I)V
    .registers 7
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1629
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1630
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    const/4 v0, 0x0

    .line 1631
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_27

    .line 1632
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1633
    .restart local v0    # "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 1635
    iput-object v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1638
    :cond_1d
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1639
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1641
    :cond_27
    iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1642
    iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1645
    const/16 v2, 0x6c

    if-eq p1, v2, :cond_31

    if-nez p1, :cond_41

    :cond_31
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v2, :cond_41

    .line 1647
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1648
    if-eqz v1, :cond_41

    .line 1649
    iput-boolean v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1650
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1653
    :cond_41
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    .line 882
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 884
    :cond_9
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1566
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1567
    .local v3, "panels":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v3, :cond_11

    array-length v0, v3

    .line 1568
    .local v0, "N":I
    :goto_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_16

    .line 1569
    aget-object v2, v3, v1

    .line 1570
    .local v2, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v2, :cond_13

    iget-object v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_13

    .line 1574
    .end local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_10
    return-object v2

    .line 1567
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 1568
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1574
    .end local v2    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_16
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 234
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .registers 8
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1579
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .local v0, "ar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_8

    array-length v3, v0

    if-gt v3, p1, :cond_15

    .line 1580
    :cond_8
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1581
    .local v1, "nar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_12

    .line 1582
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1584
    :cond_12
    move-object v0, v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1587
    .end local v1    # "nar":[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_15
    aget-object v2, v0, p1

    .line 1588
    .local v2, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-nez v2, :cond_20

    .line 1589
    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .end local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-direct {v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    .restart local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    aput-object v2, v0, p1

    .line 1591
    :cond_20
    return-object v2
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 611
    sparse-switch p1, :sswitch_data_1c

    .line 625
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 613
    :sswitch_9
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    goto :goto_8

    .line 615
    :sswitch_c
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    goto :goto_8

    .line 617
    :sswitch_f
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    goto :goto_8

    .line 619
    :sswitch_12
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    goto :goto_8

    .line 621
    :sswitch_15
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    goto :goto_8

    .line 623
    :sswitch_18
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    goto :goto_8

    .line 611
    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_12
        0x5 -> :sswitch_15
        0xa -> :sswitch_f
        0x6c -> :sswitch_9
        0x6d -> :sswitch_c
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .registers 4

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 177
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_c

    .line 190
    :cond_b
    :goto_b
    return-void

    .line 181
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 182
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 187
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_b

    .line 184
    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1f

    .line 185
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1f
.end method

.method public installViewFactory()V
    .registers 4

    .prologue
    .line 1058
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1059
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1060
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1067
    :cond_f
    :goto_f
    return-void

    .line 1062
    :cond_10
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v1, :cond_f

    .line 1063
    const-string v1, "AppCompatDelegate"

    const-string v2, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 716
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 719
    :goto_c
    return-void

    .line 718
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    goto :goto_c
.end method

.method onBackPressed()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 888
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_b

    .line 889
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 900
    :cond_a
    :goto_a
    return v1

    .line 894
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 895
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v2

    if-nez v2, :cond_a

    .line 900
    :cond_17
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 241
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v1, :cond_11

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 245
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_11

    .line 246
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_11
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyDayNight()Z

    .line 255
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_19

    .line 155
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 157
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 158
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_1a

    .line 159
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    .line 165
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_19
    :goto_19
    return-void

    .line 161
    .restart local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_1a
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_19
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1075
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1076
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 1081
    .end local v0    # "view":Landroid/view/View;
    :goto_6
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_f

    .line 311
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 314
    :cond_f
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V

    .line 316
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1b

    .line 317
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 319
    :cond_1b
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 984
    sparse-switch p1, :sswitch_data_22

    .line 1000
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_e

    .line 1003
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_e
    move v0, v1

    .line 1005
    :goto_f
    return v0

    .line 986
    :sswitch_10
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_f

    .line 994
    :sswitch_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1f

    :goto_1c
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    goto :goto_5

    :cond_1f
    move v0, v1

    goto :goto_1c

    .line 984
    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_14
        0x52 -> :sswitch_10
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 906
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 907
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 937
    :cond_e
    :goto_e
    return v3

    .line 913
    :cond_f
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v5, :cond_28

    .line 914
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v5, v6, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 916
    .local v1, "handled":Z
    if-eqz v1, :cond_28

    .line 917
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v4, :cond_e

    .line 918
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v3, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    goto :goto_e

    .line 928
    .end local v1    # "handled":Z
    :cond_28
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-nez v5, :cond_3f

    .line 929
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    .line 930
    .local v2, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 931
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 932
    .restart local v1    # "handled":Z
    iput-boolean v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 933
    if-nez v1, :cond_e

    .end local v1    # "handled":Z
    .end local v2    # "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :cond_3f
    move v3, v4

    .line 937
    goto :goto_e
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 957
    sparse-switch p1, :sswitch_data_26

    :cond_5
    move v2, v3

    .line 980
    :cond_6
    :goto_6
    return v2

    .line 959
    :sswitch_7
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_6

    .line 962
    :sswitch_b
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 963
    .local v1, "wasLongPressBackDown":Z
    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 965
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 966
    .local v0, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v0, :cond_1f

    iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_1f

    .line 967
    if-nez v1, :cond_6

    .line 971
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_6

    .line 975
    :cond_1f
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    .line 957
    :sswitch_data_26
    .sparse-switch
        0x4 -> :sswitch_b
        0x52 -> :sswitch_7
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 671
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 672
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 673
    .local v1, "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    if-eqz v1, :cond_1d

    .line 674
    iget v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 677
    .end local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 682
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 683
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 658
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_f

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 660
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_e

    .line 661
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 665
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_e
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .registers 7
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 641
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_f

    .line 642
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 643
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_e

    .line 644
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 654
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_e
    :goto_e
    return-void

    .line 646
    :cond_f
    if-nez p1, :cond_e

    .line 649
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 650
    .local v1, "st":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_e

    .line 651
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_e
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 171
    return-void
.end method

.method public onPostResume()V
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 268
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_a

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 271
    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 260
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_a

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 263
    :cond_a
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 527
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_a

    .line 631
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 637
    :cond_9
    :goto_9
    return-void

    .line 632
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 633
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 634
    :cond_18
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 635
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method public requestWindowFeature(I)Z
    .registers 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 568
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 570
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x6c

    if-ne p1, v2, :cond_f

    .line 605
    :goto_e
    return v0

    .line 573
    :cond_f
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v2, :cond_17

    if-ne p1, v1, :cond_17

    .line 575
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 578
    :cond_17
    sparse-switch p1, :sswitch_data_4c

    .line 605
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_e

    .line 580
    :sswitch_21
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 581
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    move v0, v1

    .line 582
    goto :goto_e

    .line 584
    :sswitch_28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 585
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    move v0, v1

    .line 586
    goto :goto_e

    .line 588
    :sswitch_2f
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 589
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    move v0, v1

    .line 590
    goto :goto_e

    .line 592
    :sswitch_36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 593
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    move v0, v1

    .line 594
    goto :goto_e

    .line 596
    :sswitch_3d
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 597
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    move v0, v1

    .line 598
    goto :goto_e

    .line 600
    :sswitch_44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 601
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    move v0, v1

    .line 602
    goto :goto_e

    .line 578
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_44
        0x2 -> :sswitch_36
        0x5 -> :sswitch_3d
        0xa -> :sswitch_2f
        0x6c -> :sswitch_21
        0x6d -> :sswitch_28
    .end sparse-switch
.end method

.method public setContentView(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 285
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 287
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 288
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 289
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 276
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 277
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 278
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 280
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 294
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 295
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 296
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 298
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .registers 6
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_8

    .line 227
    :goto_7
    return-void

    .line 199
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 200
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    instance-of v2, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v2, :cond_18

    .line 201
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_18
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;

    .line 211
    if-eqz v0, :cond_1f

    .line 212
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 215
    :cond_1f
    if-eqz p1, :cond_3f

    .line 216
    new-instance v1, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v2, Landroid/app/Activity;

    .line 217
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v2, v3}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 218
    .local v1, "tbab":Landroid/support/v7/app/ToolbarActionBar;
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 219
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 226
    .end local v1    # "tbab":Landroid/support/v7/app/ToolbarActionBar;
    :goto_3b
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidateOptionsMenu()V

    goto :goto_7

    .line 221
    :cond_3f
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 223
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_3b
.end method

.method final shouldAnimateActionModeView()Z
    .registers 2

    .prologue
    .line 877
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 6
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 687
    if-nez p1, :cond_a

    .line 688
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 691
    :cond_a
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_13

    .line 692
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 695
    :cond_13
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 697
    .local v1, "wrappedCallback":Landroid/support/v7/view/ActionMode$Callback;
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 698
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_33

    .line 699
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 700
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v2, :cond_33

    .line 701
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v2, v3}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 705
    :cond_33
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v2, :cond_3d

    .line 707
    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 710
    :cond_3d
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v2
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .registers 13
    .param p1, "callback"    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 724
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_c

    .line 725
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v8}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 728
    :cond_c
    instance-of v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v8, :cond_16

    .line 730
    new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .end local p1    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    .local v3, "callback":Landroid/support/v7/view/ActionMode$Callback;
    move-object p1, v3

    .line 733
    .end local v3    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    .restart local p1    # "callback":Landroid/support/v7/view/ActionMode$Callback;
    :cond_16
    const/4 v5, 0x0

    .line 734
    .local v5, "mode":Landroid/support/v7/view/ActionMode;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_27

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_27

    .line 736
    :try_start_21
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v8, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_26
    .catch Ljava/lang/AbstractMethodError; {:try_start_21 .. :try_end_26} :catch_187

    move-result-object v5

    .line 742
    :cond_27
    :goto_27
    if-eqz v5, :cond_3d

    .line 743
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 868
    :cond_2b
    :goto_2b
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v8, :cond_3a

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v8, :cond_3a

    .line 869
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 871
    :cond_3a
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v8

    .line 745
    :cond_3d
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v8, :cond_ca

    .line 746
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v8, :cond_135

    .line 748
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 749
    .local v6, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 750
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 753
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_131

    .line 754
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 755
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 756
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 758
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 759
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 764
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_7c
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 765
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    sget v10, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v8, v0, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 767
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 769
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 770
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 772
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 774
    iget v8, v6, Landroid/util/TypedValue;->data:I

    .line 775
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 774
    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 776
    .local v4, "height":I
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 777
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 778
    new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$5;

    invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 819
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "height":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_ca
    :goto_ca
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v8, :cond_2b

    .line 820
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 821
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 822
    new-instance v5, Landroid/support/v7/view/StandaloneActionMode;

    .end local v5    # "mode":Landroid/support/v7/view/ActionMode;
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_156

    const/4 v8, 0x1

    :goto_e5
    invoke-direct {v5, v9, v10, p1, v8}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 824
    .restart local v5    # "mode":Landroid/support/v7/view/ActionMode;
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_182

    .line 825
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 826
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v5}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 827
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 829
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v8

    if-eqz v8, :cond_158

    .line 830
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 831
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 832
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$6;

    invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 860
    :cond_120
    :goto_120
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_2b

    .line 861
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    .line 761
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_131
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_7c

    .line 809
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_135
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 810
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ViewStubCompat;

    .line 811
    .local v7, "stub":Landroid/support/v7/widget/ViewStubCompat;
    if-eqz v7, :cond_ca

    .line 813
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 814
    invoke-virtual {v7}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_ca

    .line 822
    .end local v5    # "mode":Landroid/support/v7/view/ActionMode;
    .end local v7    # "stub":Landroid/support/v7/widget/ViewStubCompat;
    :cond_156
    const/4 v8, 0x0

    goto :goto_e5

    .line 851
    .restart local v5    # "mode":Landroid/support/v7/view/ActionMode;
    :cond_158
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    .line 852
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 853
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 855
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_120

    .line 856
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_120

    .line 864
    :cond_182
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_2b

    .line 737
    :catch_187
    move-exception v8

    goto/16 :goto_27
.end method

.method updateStatusGuard(I)I
    .registers 14
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1662
    const/4 v6, 0x0

    .line 1664
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v8, :cond_89

    .line 1665
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_89

    .line 1666
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1667
    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1668
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1670
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_ab

    .line 1671
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_34

    .line 1672
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1673
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1675
    :cond_34
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1676
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1677
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1679
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1680
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_95

    move v5, p1

    .line 1681
    .local v5, "newMargin":I
    :goto_45
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_76

    .line 1682
    const/4 v4, 0x1

    .line 1683
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1685
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_97

    .line 1686
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    .line 1687
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1688
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1687
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1689
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1703
    :cond_76
    :goto_76
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_a9

    const/4 v6, 0x1

    .line 1709
    :goto_7b
    iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v8, :cond_82

    if-eqz v6, :cond_82

    .line 1710
    const/4 p1, 0x0

    .line 1719
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_82
    :goto_82
    if-eqz v4, :cond_89

    .line 1720
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_89
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_94

    .line 1725
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b3

    :goto_91
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    :cond_94
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_95
    move v5, v7

    .line 1680
    goto :goto_45

    .line 1693
    .restart local v5    # "newMargin":I
    :cond_97
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1694
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_76

    .line 1695
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1696
    iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_76

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a9
    move v6, v7

    .line 1703
    goto :goto_7b

    .line 1714
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_ab
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_82

    .line 1715
    const/4 v4, 0x1

    .line 1716
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_82

    .line 1725
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_b3
    const/16 v7, 0x8

    goto :goto_91
.end method
