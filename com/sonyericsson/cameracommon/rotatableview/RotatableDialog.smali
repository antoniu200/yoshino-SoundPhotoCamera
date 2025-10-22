.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableDialog"


# instance fields
.field private final mAnimationsForLand:I

.field private final mAnimationsForPort:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogWidthForLand:I

.field private mDialogWidthForPort:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mHalfDiffBetweenDisplayWidthAndHeight:I

.field private mOrientation:I

.field private mScrollableView:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/app/AlertDialog;)V
    .registers 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    .line 170
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 171
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 172
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 175
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->WindowAnimationDeviceDefaultDialogLandscape:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    .line 177
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->WindowAnimationDeviceDefaultDialogPortrait:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    .line 179
    return-void
.end method

.method private attachScrollableView()V
    .registers 11

    .prologue
    const/4 v9, -0x1

    .line 271
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-nez v5, :cond_6

    .line 321
    :cond_5
    :goto_5
    return-void

    .line 277
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "messageView":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 281
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v2, "scrollableViewContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    .line 284
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 291
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 304
    .local v4, "viewParent":Landroid/view/ViewParent;
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_58

    .line 306
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .local v3, "scrollview":Landroid/widget/ScrollView;
    move-object v1, v4

    .line 307
    check-cast v1, Landroid/view/View;

    .line 316
    .local v1, "removeTargetView":Landroid/view/View;
    :goto_51
    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 317
    invoke-virtual {v3, v2, v9, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    goto :goto_5

    .end local v1    # "removeTargetView":Landroid/view/View;
    .end local v3    # "scrollview":Landroid/widget/ScrollView;
    :cond_58
    move-object v3, v4

    .line 310
    check-cast v3, Landroid/widget/ScrollView;

    .line 311
    .restart local v3    # "scrollview":Landroid/widget/ScrollView;
    move-object v1, v0

    .restart local v1    # "removeTargetView":Landroid/view/View;
    goto :goto_51
.end method

.method private calculateOutValue(III)I
    .registers 5
    .param p1, "value"    # I
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 404
    if-ge p1, p2, :cond_5

    .line 405
    sub-int v0, p1, p2

    .line 412
    .local v0, "outValue":I
    :goto_4
    return v0

    .line 406
    .end local v0    # "outValue":I
    :cond_5
    if-ge p3, p1, :cond_a

    .line 407
    sub-int v0, p1, p3

    .restart local v0    # "outValue":I
    goto :goto_4

    .line 409
    .end local v0    # "outValue":I
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "outValue":I
    goto :goto_4
.end method

.method private initialize()V
    .registers 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    .line 215
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 217
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v8}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v1, "displaySize":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 225
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_8c

    .line 226
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 227
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    .line 235
    :goto_3d
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iget v9, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    .line 239
    :try_start_46
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 241
    .local v7, "res":Landroid/content/res/Resources;
    const v8, 0x1050003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "major":Ljava/lang/String;
    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "minor":Ljava/lang/String;
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v8, "%"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v4, v8, v10

    .line 248
    .local v4, "minWidthMajor":F
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v5, v8, v10

    .line 250
    .local v5, "minWidthMinor":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    .line 251
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I
    :try_end_88
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_88} :catch_99
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_88} :catch_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_88} :catch_ab

    .line 261
    .end local v3    # "major":Ljava/lang/String;
    .end local v4    # "minWidthMajor":F
    .end local v5    # "minWidthMinor":F
    .end local v6    # "minor":Ljava/lang/String;
    .end local v7    # "res":Landroid/content/res/Resources;
    :goto_88
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->attachScrollableView()V

    .line 262
    return-void

    .line 231
    :cond_8c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    goto :goto_3d

    .line 252
    :catch_99
    move-exception v2

    .line 253
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "RotatableDialog"

    const-string v9, "Fail to get width of dialog for each orientation."

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 254
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_a2
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "RotatableDialog"

    const-string v9, "Fail to get width of dialog for each orientation."

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 256
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_ab
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v8, "RotatableDialog"

    const-string v9, "Fail to get width of dialog for each orientation."

    invoke-static {v8, v9, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88
.end method

.method private release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 190
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 191
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 192
    return-void
.end method

.method private setWindowAnimations(I)V
    .registers 4
    .param p1, "orientation"    # I

    .prologue
    .line 199
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 204
    :goto_a
    return-void

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_a
.end method

.method private updateLayout(I)V
    .registers 12
    .param p1, "displayOrientation"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_a

    .line 399
    :goto_9
    return-void

    .line 330
    :cond_a
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 332
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 334
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 336
    .local v0, "decorParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 338
    .local v5, "panelView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .local v4, "panelParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 343
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    .line 349
    .local v2, "layoutOrientation":Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v6, :cond_76

    .line 351
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 352
    if-ne p1, v9, :cond_5c

    .line 354
    invoke-virtual {v5, v8}, Landroid/view/View;->setRotation(F)V

    .line 355
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 356
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 358
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 359
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 397
    :goto_4f
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 362
    :cond_5c
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    .line 363
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 364
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 369
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    .line 370
    .local v3, "padding":I
    invoke-virtual {v1, v7, v3, v7, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 373
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4f

    .line 377
    .end local v3    # "padding":I
    :cond_76
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 378
    if-ne p1, v9, :cond_91

    .line 380
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    .line 381
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 386
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_4f

    .line 389
    :cond_91
    invoke-virtual {v5, v8}, Landroid/view/View;->setRotation(F)V

    .line 390
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 393
    iget v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_4f
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 548
    :cond_9
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 541
    :cond_9
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 534
    :cond_9
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 590
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isShown(Landroid/content/DialogInterface;)Z
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_6

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 454
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 457
    .local v4, "panelView":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v2

    .line 462
    .local v2, "outX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v3

    .line 466
    .local v3, "outY":I
    if-nez v2, :cond_33

    if-eqz v3, :cond_58

    .line 467
    :cond_33
    if-lez v2, :cond_3a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 468
    :cond_3a
    if-lez v3, :cond_41

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 470
    :cond_41
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 471
    .local v1, "newEvent":Landroid/view/MotionEvent;
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 476
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 477
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 479
    :cond_55
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 482
    .end local v1    # "newEvent":Landroid/view/MotionEvent;
    :cond_58
    return v8
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 424
    .local v1, "decorView":Landroid/view/ViewGroup;
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 425
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 433
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 434
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->release()V

    .line 439
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3
    .param p1, "cancel"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 554
    :cond_9
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "cancel"    # Z

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 560
    :cond_9
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 572
    :cond_9
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 578
    :cond_9
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 566
    :cond_9
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 496
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 497
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_10

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 596
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_10

    .line 597
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 600
    .end local v0    # "button":Landroid/widget/Button;
    :cond_10
    return-void
.end method

.method public setViewAsScrollable(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    :cond_d
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 525
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->initialize()V

    .line 527
    :cond_c
    return-void
.end method
