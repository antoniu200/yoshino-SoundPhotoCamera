.class public Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
.super Ljava/lang/Object;
.source "BaseViewFinderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;,
        Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseViewFinderLayout"


# instance fields
.field private mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

.field private mCaptureButtonGroup:Landroid/widget/RelativeLayout;

.field private mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

.field private mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

.field private mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

.field private mRootView:Landroid/view/ViewGroup;

.field protected final mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field private mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

.field private mZoombarGroup:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V
    .registers 5
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 77
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 91
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 93
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 106
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 111
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 113
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    .line 115
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupPreviewContainer()V

    .line 120
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method private getPreviousNavigationBarVisibility()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;
    .registers 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    return-object v0
.end method

.method private inflate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 547
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 548
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    if-eqz v2, :cond_59

    .line 550
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 551
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 558
    :goto_13
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 559
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 560
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 561
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 562
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 564
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container:I

    .line 565
    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 567
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container_fullscreen:I

    .line 568
    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 569
    return-void

    .line 554
    .end local v0    # "container":Landroid/widget/FrameLayout;
    :cond_59
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->viewfinder_layout:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    goto :goto_13
.end method

.method private releaseHeadUpDesplay()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 447
    return-void
.end method

.method private setupCaptureButton()V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_right_bottom_button:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_right_bottom:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonGroup:Landroid/widget/RelativeLayout;

    .line 315
    return-void
.end method

.method private setupCaptureButtonGroup()V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_button_group:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    .line 303
    return-void
.end method

.method private setupCapturingModeButton()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_selector_button:I

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .line 356
    return-void
.end method

.method private setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .registers 5
    .param p1, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_24

    .line 335
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 337
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->resume()V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 343
    :cond_24
    return-void
.end method

.method private setupGridLineView()V
    .registers 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-nez v0, :cond_2d

    .line 797
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 798
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setSurfaceSize(II)V

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 803
    :cond_2d
    return-void
.end method

.method private setupPreviewContainer()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 129
    new-instance v4, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    .line 130
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v0, "previewContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 135
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 136
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne v4, v5, :cond_78

    .line 138
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 139
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->left_icon_area_height:I

    .line 138
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 141
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 142
    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->right_icon_area_height:I

    .line 141
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 144
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x10

    .line 147
    .local v3, "unitWidth":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v1, v4, 0x9

    .line 148
    .local v1, "unitHeight":I
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 150
    .local v2, "unitLength":I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_70

    .line 151
    add-int/lit8 v2, v2, -0x1

    .line 154
    :cond_70
    mul-int/lit8 v4, v2, 0x10

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 155
    mul-int/lit8 v4, v2, 0x9

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 157
    .end local v1    # "unitHeight":I
    .end local v2    # "unitLength":I
    .end local v3    # "unitWidth":I
    :cond_78
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->setLayoutDirection(I)V

    .line 161
    return-void
.end method

.method private setupRecordingIndicator()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_2b

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_progress_indicator:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setScreenAspect(Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 416
    :cond_2b
    return-void
.end method

.method private setupSettingIndicators()V
    .registers 4

    .prologue
    .line 360
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->geo_tag_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 364
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->low_memory_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 368
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->thermal_indicator:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 370
    return-void
.end method

.method private setupZoombar()V
    .registers 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_36

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->zoombar:I

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->zoombar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideImmediately()V

    .line 384
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 387
    :cond_36
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->repositionZoombar()V

    .line 388
    return-void
.end method


# virtual methods
.method public addLazyInflatedUiComponent(Landroid/view/View;)V
    .registers 3
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 698
    return-void
.end method

.method public addLazyInflatedUiComponentFullScreen(Landroid/view/View;)V
    .registers 3
    .param p1, "component"    # Landroid/view/View;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 702
    return-void
.end method

.method public attachToWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->setActivity(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;->enableTouchEvent()V

    .line 183
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    .line 184
    return-void
.end method

.method public checkGridLineIsDisplayedOrNot()V
    .registers 4

    .prologue
    .line 756
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GRID_LINE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    .line 757
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getProviderValue()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "gridLineValue":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 759
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->enableGridLineView()V

    .line 763
    :goto_1b
    return-void

    .line 761
    :cond_1c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->disableGridLineView()V

    goto :goto_1b
.end method

.method public disableGridLineView()V
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_9

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    .line 775
    :cond_9
    return-void
.end method

.method public enableGridLineView()V
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_9

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->enable()V

    .line 769
    :cond_9
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method public getAllEventListener()Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mAllEventListener:Lcom/sonyericsson/cameracommon/viewfinder/AllEventListener;

    return-object v0
.end method

.method public getCaptureButtonGroup()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonGroup:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCaptureButtonIcon()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    return-object v0
.end method

.method public getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->capture_method_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    return-object v0
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->center_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    return v0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->lazy_inflated_ui_component_container_back:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 688
    .local v0, "mLazyInflatedUiComponentContainerBack":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_22

    .line 689
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 691
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->left_icon_area_height:I

    .line 690
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 689
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 693
    :cond_22
    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getModeIndicatorContainer()Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->mode_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    return-object v0
.end method

.method public getPreview()Landroid/view/View;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    return-object v0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewContainerFill()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewContainerRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    return-object v0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .registers 8
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 420
    if-nez p2, :cond_12

    if-nez p3, :cond_12

    .line 436
    const-string v1, "BaseViewFinderLayout"

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    :goto_11
    return-object v0

    :cond_12
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_11
.end method

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSettingIndicatorContainer()Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->setting_indicator_container:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    return-object v0
.end method

.method public hideBlankScreen()V
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_a
    return-void
.end method

.method public hideContentsViewController()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    .line 461
    :cond_9
    return-void
.end method

.method protected hideGridLineView()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_9

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->hide()V

    .line 781
    :cond_9
    return-void
.end method

.method public hideIcons()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 722
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 723
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 724
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 725
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    return-void
.end method

.method public hideLeftIconContainer()V
    .registers 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 742
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    return-void
.end method

.method public hideRightIconContainer()V
    .registers 4

    .prologue
    .line 751
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    return-void
.end method

.method public isHeadUpDisplayReady()Z
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 475
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-eqz v0, :cond_1f

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(IZ)V

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 480
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_29

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 483
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_32

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->hide()V

    .line 486
    :cond_32
    return-void
.end method

.method public refresh()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 504
    return-void
.end method

.method release()V
    .registers 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseContentsViewController()V

    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseUiComponentContainer()V

    .line 235
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseBlankScreen()V

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->releaseHeadUpDesplay()V

    .line 237
    return-void
.end method

.method public releaseBlankScreen()V
    .registers 2

    .prologue
    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 528
    return-void
.end method

.method public releaseContentsViewController()V
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 498
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 499
    return-void
.end method

.method public releaseUiComponentContainer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 579
    :cond_a
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 581
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    :cond_15
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 585
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .registers 3
    .param p1, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_8

    .line 465
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 469
    :goto_7
    return-void

    .line 467
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_7
.end method

.method protected repositionZoombar()V
    .registers 5

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v3

    if-nez v3, :cond_7

    .line 405
    :cond_6
    :goto_6
    return-void

    .line 397
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 398
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 400
    .local v0, "currentWidth":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 401
    .local v1, "newWidth":I
    if-eq v1, v0, :cond_6

    .line 402
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 403
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_6
.end method

.method requestToDimSystemUi()V
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 609
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 610
    return-void
.end method

.method requestToRecoverSystemUi()V
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRecoverSystemUi(Landroid/view/View;)V

    .line 614
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 615
    return-void
.end method

.method requestToRemoveSystemUi()V
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->requestToRemoveSystemUi(Landroid/view/View;)V

    .line 604
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->HIDE:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V

    .line 605
    return-void
.end method

.method requestToRestoreSystemUi()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    if-nez v0, :cond_5

    .line 639
    :goto_4
    return-void

    .line 622
    :cond_5
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$1;->$SwitchMap$com$sonyericsson$cameracommon$viewfinder$BaseViewFinderLayout$NavigationBarVisibility:[I

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviousNavigationBarVisibility()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    goto :goto_4

    .line 624
    :pswitch_15
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRecoverSystemUi()V

    goto :goto_4

    .line 628
    :pswitch_19
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToDimSystemUi()V

    goto :goto_4

    .line 632
    :pswitch_1d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRemoveSystemUi()V

    goto :goto_4

    .line 622
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method

.method setCurrentNavigationBarVisibility(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;)V
    .registers 2
    .param p1, "visibility"    # Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mNavigationBarVisibility:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$NavigationBarVisibility;

    .line 643
    return-void
.end method

.method public setLeftAndRightIconContainerParams()V
    .registers 7

    .prologue
    .line 709
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne v2, v3, :cond_44

    .line 710
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 711
    .local v0, "left":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 712
    .local v1, "right":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 713
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->left_icon_area_height:I

    .line 712
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 715
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 717
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->capture_button_offset_18_9:I

    .line 716
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 719
    .end local v0    # "left":Landroid/view/ViewGroup;
    .end local v1    # "right":Landroid/view/ViewGroup;
    :cond_44
    return-void
.end method

.method public setOnKeyEventListener(Landroid/view/View$OnKeyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 593
    if-nez p1, :cond_14

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 600
    :goto_13
    return-void

    .line 597
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    goto :goto_13
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 589
    return-void
.end method

.method setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 256
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(II)V

    .line 257
    return-void
.end method

.method setOrientation(II)V
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "recordingOrientation"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCaptureButtonIcon:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCapturingModeButton:Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setSensorOrientation(I)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mLowMemory:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mZoombar:Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 274
    :cond_33
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .registers 2
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    .line 573
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 278
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 281
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->updateGridLine(II)V

    .line 285
    return-void
.end method

.method setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;
    .param p2, "clickListener"    # Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "isHeadUpDisplayReady":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDisplayReady()Z

    move-result v1

    if-nez v1, :cond_b

    .line 203
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->inflate()V

    .line 204
    const/4 v0, 0x1

    .line 207
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1b

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCapturingModeButton()V

    .line 214
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setLeftAndRightIconContainerParams()V

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCaptureButtonGroup()V

    .line 216
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupCaptureButton()V

    .line 217
    if-eqz v0, :cond_29

    .line 218
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 220
    :cond_29
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupSettingIndicators()V

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupZoombar()V

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupRecordingIndicator()V

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupGridLineView()V

    .line 225
    if-eqz v0, :cond_3e

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;)V

    .line 229
    :cond_3e
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mCurrentOrientation:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 230
    return-void
.end method

.method public setupBlankScreen()V
    .registers 6

    .prologue
    .line 507
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-nez v3, :cond_c

    .line 508
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 509
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez v1, :cond_d

    .line 517
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_c
    :goto_c
    return-void

    .line 512
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_d
    sget v3, Lcom/sonyericsson/cameracommon/R$layout;->camera_window_cover:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 513
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 514
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 515
    .local v0, "coverParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c
.end method

.method public setupPreviewView()V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    if-eqz v1, :cond_18

    .line 188
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "mPreviewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreviewContainerLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mPreview:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .end local v0    # "mPreviewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_18
    return-void
.end method

.method public showBlankScreen()V
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_a
    return-void
.end method

.method public showContentsViewController()V
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_9

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    .line 492
    :cond_9
    return-void
.end method

.method protected showGridLineView()V
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_9

    .line 785
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->showIfEnabled()V

    .line 787
    :cond_9
    return-void
.end method

.method public showIcons()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 729
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 730
    .local v0, "left":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 731
    .local v1, "right":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 733
    return-void
.end method

.method public showLeftIconContainer()V
    .registers 4

    .prologue
    .line 736
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->left_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    return-void
.end method

.method public showRightIconContainer()V
    .registers 4

    .prologue
    .line 746
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->right_container:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 747
    .local v0, "left":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    return-void
.end method

.method public tearDownBlankScreen()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 521
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideBlankScreen()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mWindowCover:Landroid/view/View;

    .line 524
    :cond_a
    return-void
.end method

.method public updateGridLine(II)V
    .registers 4
    .param p1, "viewfinderWidth"    # I
    .param p2, "viewfinderHeight"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_9

    .line 791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setSurfaceSize(II)V

    .line 793
    :cond_9
    return-void
.end method

.method public updatePreviewContainer()V
    .registers 2

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 870
    return-void
.end method
