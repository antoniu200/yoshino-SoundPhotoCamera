.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingIndicator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecordingIndicator"


# instance fields
.field private mConstraintIndicator:Landroid/widget/LinearLayout;

.field private mConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDisplayOrientation:I

.field private mDuration:I

.field private mIsConstraint:Z

.field private mIsRecording:Z

.field private mIsSequence:Z

.field private mIsThumbnailReady:Z

.field private mMaxDurationText:Landroid/widget/TextView;

.field private mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mPivotForRotationConstraint:I

.field private mPivotForRotationSequence:I

.field private mPivotForRotationUnConstraint:I

.field private mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

.field private final mRadius:F

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

.field private mSequenceIndicator:Landroid/widget/LinearLayout;

.field private mSequenceRec:Landroid/widget/TextView;

.field private mSequenceRecordingTimeText:Landroid/widget/TextView;

.field private mStringFormatRecordingTime:Ljava/lang/String;

.field private mStringFormatRemainConstraintTime:Ljava/lang/String;

.field private mThumbnailCnt:I

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private final mThumbnailMaxNum:I

.field private final mThumbnailPadding:I

.field private final mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mThumbnailSize:I

.field private final mThumbnails:[Landroid/graphics/Bitmap;

.field private mTimeContainer:Landroid/widget/LinearLayout;

.field private mUnConstraintIndicator:Landroid/widget/LinearLayout;

.field private mUnConstraintRecordingTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 50
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 53
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 54
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 55
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 58
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 59
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 60
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 61
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 62
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 64
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$integer;->rec_sequence_thumbnail_max_num:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_width_height:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_padding:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    .line 79
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 83
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 85
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 88
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 90
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 93
    iput v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 94
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    .line 97
    iput v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 98
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 99
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_unconstraint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_constraint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    .line 117
    return-void
.end method

.method private addEmptyThumbnails()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 464
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    .local v0, "emptyThumbnail":Landroid/graphics/Bitmap;
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 468
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 469
    .local v1, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v2, v5, v5, v3}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 471
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method private createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    .registers 5
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 399
    new-instance v0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setClickable(Z)V

    .line 403
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusable(Z)V

    .line 404
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusableInTouchMode(Z)V

    .line 406
    return-object v0
.end method

.method private resetThumbnails()V
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 460
    :cond_c
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addEmptyThumbnails()V

    .line 461
    return-void
.end method

.method private updateLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 504
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 506
    .local v1, "rotation":F
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    .line 507
    .local v0, "layoutScreenOrientation":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_16

    .line 508
    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    .line 511
    :cond_16
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    if-ne v2, v3, :cond_3b

    .line 513
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v2, :cond_96

    .line 514
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 515
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->recording_indicator_offset_18_9:I

    .line 514
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 522
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_59

    .line 523
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 524
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 525
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 526
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 528
    :cond_59
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_77

    .line 529
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 530
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 531
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 532
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 534
    :cond_77
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_95

    .line 535
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayoutParams(Landroid/widget/LinearLayout;)V

    .line 536
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 538
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 540
    :cond_95
    return-void

    .line 517
    :cond_96
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 518
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->recording_indicator_offset_18_9:I

    .line 517
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_3b
.end method

.method private updateLayoutParams(Landroid/widget/LinearLayout;)V
    .registers 8
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 489
    .line 490
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 492
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    .line 493
    .local v1, "layoutScreenOrientation":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v1, v2, :cond_21

    .line 494
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 495
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 500
    :goto_1d
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 501
    return-void

    .line 497
    :cond_21
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 498
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1d
.end method

.method private updateProgressbar(I)V
    .registers 4
    .param p1, "msec"    # I

    .prologue
    .line 254
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    if-le p1, v0, :cond_5

    .line 260
    :goto_4
    return-void

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    goto :goto_4
.end method

.method private updateThumbnails(Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "thumbnailImg"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 352
    iput-boolean v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 353
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 355
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v2

    .line 357
    .local v2, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-nez v3, :cond_2e

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 361
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 362
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v3, v5

    .line 389
    :goto_22
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 394
    return-void

    .line 364
    :cond_2e
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    invoke-virtual {v2, v3, v5, v5, v5}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setPadding(IIII)V

    .line 366
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-ne v3, v7, :cond_44

    .line 367
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v3, v7

    .line 385
    :cond_3b
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    add-int/lit8 v4, v4, -0x1

    aput-object p1, v3, v4

    goto :goto_22

    .line 368
    :cond_44
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    if-lt v3, v4, :cond_3b

    .line 370
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 373
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 374
    .local v1, "replaceView":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v3, v6, v6, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 377
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 378
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_69
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3b

    .line 381
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_69
.end method


# virtual methods
.method public addChapter([BI)V
    .registers 11
    .param p1, "imageData"    # [B
    .param p2, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v4, :cond_7

    .line 341
    :goto_6
    return-void

    .line 313
    :cond_7
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 316
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 317
    array-length v4, p1

    invoke-static {p1, v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 318
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 319
    .local v1, "height":I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 322
    .local v3, "width":I
    if-ge v1, v3, :cond_40

    .line 323
    int-to-float v4, v1

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 329
    :cond_23
    :goto_23
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 331
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 333
    array-length v4, p1

    invoke-static {p1, v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-static {v0, v4, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateThumbnails(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 324
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_40
    if-ge v3, v1, :cond_23

    .line 325
    int-to-float v4, v3

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_23
.end method

.method public onFinishInflate()V
    .registers 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 125
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->unconstraint:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 132
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->constraint:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_devider:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->remain_time:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 142
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 145
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sequence_video:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setBold(Landroid/widget/TextView;)Z

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->thumbnail_container:I

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    :cond_c0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->time_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 159
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 160
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 161
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->recording:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/widget/RelativeLayout;

    .line 162
    return-void
.end method

.method public prepareBeforeRecording(IZ)V
    .registers 13
    .param p1, "duration"    # I
    .param p2, "isVideoHdrUsed"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_time_width:I

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 191
    .local v0, "recordingTimeWidth":I
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v1, :cond_a5

    .line 193
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 197
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {v1, v6, v6}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 203
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    .line 206
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 209
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 208
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_8e
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v1, :cond_116

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_a1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 250
    return-void

    .line 211
    :cond_a5
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 214
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v1, :cond_e9

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->resetThumbnails()V

    .line 218
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 220
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_8e

    .line 226
    :cond_e9
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 228
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 226
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_8e

    .line 239
    :cond_116
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v1, :cond_12b

    .line 240
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a1

    .line 244
    :cond_12b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a1
.end method

.method public release()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public setConstraint(Z)V
    .registers 2
    .param p1, "isConstraint"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 166
    return-void
.end method

.method public setIndicator(Z)V
    .registers 10
    .param p1, "isOnRecording"    # Z

    .prologue
    const/4 v7, 0x0

    .line 412
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 414
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v3, :cond_8

    .line 449
    :cond_7
    :goto_7
    return-void

    .line 418
    :cond_8
    if-eqz p1, :cond_47

    .line 419
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    if-eqz v3, :cond_7

    .line 430
    :goto_e
    if-eqz p1, :cond_4a

    .line 431
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_sequential_video_rec_bg_rec_icn:I

    .line 432
    .local v0, "backgroundResource":I
    const/4 v2, 0x0

    .line 438
    .local v2, "visibility":I
    :goto_13
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 439
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_text_margin_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 442
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_text_margin_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 439
    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 444
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 445
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 446
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 447
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 425
    .end local v0    # "backgroundResource":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "visibility":I
    :cond_47
    iput-boolean v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    goto :goto_e

    .line 434
    :cond_4a
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_sequential_video_rec_bg_pause_right_icn:I

    .line 435
    .restart local v0    # "backgroundResource":I
    const/16 v2, 0x8

    .restart local v2    # "visibility":I
    goto :goto_13
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 484
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 486
    return-void
.end method

.method public setScreenAspect(Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)V
    .registers 2
    .param p1, "screenAspect"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mScreenAspect:Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    .line 566
    return-void
.end method

.method public setSequenceMode(Z)V
    .registers 2
    .param p1, "isSequence"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 170
    return-void
.end method

.method public setVisible(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 543
    if-eqz p1, :cond_3d

    .line 544
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v0, :cond_19

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    :goto_18
    return-void

    .line 548
    :cond_19
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v0, :cond_2d

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 553
    :cond_2d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18

    .line 558
    :cond_3d
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18
.end method

.method public updateRecordingTime(I)V
    .registers 11
    .param p1, "msec"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "recordingTimeWidth":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-ge v2, v7, :cond_59

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 278
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 278
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "recording":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_time_width:I

    .line 281
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 292
    :goto_4c
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v2, :cond_9d

    .line 293
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateProgressbar(I)V

    .line 304
    :goto_58
    return-void

    .line 283
    .end local v0    # "recording":Ljava/lang/String;
    :cond_59
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_hours_time_format_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 285
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 286
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 285
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "recording":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_hours_time_width:I

    .line 289
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_4c

    .line 296
    :cond_9d
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v2, :cond_af

    .line 297
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_58

    .line 300
    :cond_af
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_58
.end method
