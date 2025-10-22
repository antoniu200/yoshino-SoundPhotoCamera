.class public abstract Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
.super Landroid/widget/ImageView;
.source "ReviewMenuButton.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ReviewMenuButton"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

.field protected mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;-><init>(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;-><init>(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton$1;-><init>(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->notifySelected()V

    return-void
.end method

.method private notifySelected()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;->onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;)V

    .line 91
    :cond_9
    return-void
.end method

.method private notifySelected(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V
    .registers 3
    .param p1, "doalog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;->onSelected(Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)V

    .line 97
    :cond_9
    return-void
.end method


# virtual methods
.method protected getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 67
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 73
    return-void
.end method

.method protected abstract select()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end method

.method public setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mOnSelectedListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 81
    return-void
.end method

.method public setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V
    .registers 2
    .param p1, "reviewScreen"    # Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->mReviewScreen:Lcom/sonyericsson/cameracommon/review/ReviewScreen;

    .line 77
    return-void
.end method
