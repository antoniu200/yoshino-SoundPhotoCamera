.class Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "BaseViewFinderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewContainerLayout"
.end annotation


# instance fields
.field public final mPreviewContainer:Landroid/widget/FrameLayout;

.field public final mPreviewContainerFill:Landroid/widget/FrameLayout;

.field public final mPreviewOverlayContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 817
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 819
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 820
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 821
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v3, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 824
    .local v3, "previewContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 825
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 826
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 829
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    .line 830
    .local v2, "previewContainerId":I
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 832
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    .line 833
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 834
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 837
    .local v1, "previewContainerFillParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 838
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 839
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    sget v9, Lcom/sonyericsson/cameracommon/R$drawable;->cam_viewfinder_4_3_background_icn:I

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 841
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 842
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewContainerFill:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 845
    .local v5, "previewOverlayContainerParent":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->addView(Landroid/view/View;)V

    .line 846
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 849
    .local v6, "previewOverlayContainerParentParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    .line 852
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 853
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 856
    .local v4, "previewOverlayContainerParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x3

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 857
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 858
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 859
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 862
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/sonyericsson/cameracommon/R$layout;->viewfinder_recording_indicator:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 864
    .local v7, "recordingIndicator":Landroid/view/ViewGroup;
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 865
    return-void
.end method
