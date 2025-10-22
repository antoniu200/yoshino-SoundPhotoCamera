.class public Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;
.super Lcom/sonyericsson/cameracommon/review/ReviewScreen;
.source "AutoReviewWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;,
        Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;
    }
.end annotation


# static fields
.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "AutoReviewWindow"


# instance fields
.field private mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDuration:J

.field private mInterceptKeyListener:Landroid/view/View$OnKeyListener;

.field private mIsOpened:Z

.field protected mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

.field private mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field private final mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

.field private mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

    sput-object v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$DismissListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$OnSelectedListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 69
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 81
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    .line 156
    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Z)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "isFast"    # Z

    .prologue
    .line 166
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    .line 168
    return-void
.end method

.method public static launchEditor(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 96
    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v5, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 101
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 108
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_2a

    .line 109
    const/16 v4, 0xf

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 112
    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static launchEditorHighFrameRate(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 120
    sget v4, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_in:I

    sget v5, Lcom/sonyericsson/cameracommon/R$anim;->edit_activity_fade_out:I

    invoke-static {p0, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 125
    .local v2, "options":Landroid/app/ActivityOptions;
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 129
    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 132
    .local v1, "isActivityAvailable":Z
    if-eqz v1, :cond_28

    .line 133
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 136
    :goto_27
    return v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public static launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/launcher/AlbumLauncher;->launchPlayer(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private transferKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_b

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v1, p0, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 371
    :cond_b
    return v0
.end method


# virtual methods
.method backToViewFinder()V
    .registers 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hide()V

    .line 531
    return-void
.end method

.method getContentResolverUtilListener()Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    return-object v0
.end method

.method getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->cancelDialog()V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_c

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 319
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->clearFocus()V

    .line 321
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->hideScreen()V

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v0, :cond_21

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowClose()V

    .line 328
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mUri:Landroid/net/Uri;

    .line 329
    return-void
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 180
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->onAttachedToWindow()V

    .line 184
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setBackgroundColor(I)V

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mPictureImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewScreenListener;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 190
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mOnSelectListener:Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_19

    .line 193
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_2e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;

    .line 201
    .local v0, "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setReviewScreen(Lcom/sonyericsson/cameracommon/review/ReviewScreen;)V

    .line 202
    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;->setOnSelectedListener(Lcom/sonyericsson/cameracommon/review/OnSelectedReviewMenuButtonListener;)V

    goto :goto_7

    .line 205
    .end local v0    # "button":Lcom/sonyericsson/cameracommon/review/ReviewMenuButton;
    :cond_1a
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 206
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 208
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/review/ReviewScreen;->onDetachedFromWindow()V

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 211
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->transferKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 380
    .local v0, "intercepted":Z
    if-eqz v0, :cond_9

    .line 413
    :cond_8
    :goto_8
    return v2

    .line 384
    :cond_9
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 385
    invoke-virtual {v4, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v1

    .line 387
    .local v1, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    sget-object v4, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2c

    move v2, v3

    .line 410
    goto :goto_8

    .line 395
    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    goto :goto_8

    :pswitch_26
    move v2, v3

    .line 401
    goto :goto_8

    .line 406
    :pswitch_28
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    goto :goto_8

    .line 387
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_26
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->transferKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 422
    .local v0, "intercepted":Z
    if-eqz v0, :cond_8

    .line 437
    :goto_7
    return v1

    .line 426
    :cond_8
    sparse-switch p1, :sswitch_data_12

    .line 434
    const/4 v1, 0x0

    goto :goto_7

    .line 430
    :sswitch_d
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->backToViewFinder()V

    goto :goto_7

    .line 426
    nop

    :sswitch_data_12
    .sparse-switch
        0x4 -> :sswitch_d
        0x52 -> :sswitch_d
    .end sparse-switch
.end method

.method public open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z
    .registers 26
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "pictureRect"    # Landroid/graphics/Rect;
    .param p5, "reviewOrientation"    # I
    .param p6, "pictureOrientation"    # I
    .param p7, "isFront"    # Z
    .param p8, "listener"    # Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
    .param p9, "crListener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 226
    const-string v2, "video/mp4"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "video/3gpp"

    .line 227
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 228
    :cond_1a
    const-wide/16 v14, -0x1

    .line 233
    .local v14, "duration":J
    :goto_1c
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_29

    .line 235
    const/4 v2, 0x0

    .line 270
    :goto_23
    return v2

    .line 230
    .end local v14    # "duration":J
    :cond_24
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .restart local v14    # "duration":J
    goto :goto_1c

    .line 239
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_37

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    :cond_37
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 246
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 248
    move-object/from16 v4, p2

    .line 249
    .local v4, "outputUri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 250
    .local v13, "path":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 254
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 255
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 256
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 259
    :cond_69
    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 261
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-result-object v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 259
    invoke-virtual/range {v2 .. v12}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 263
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->startTimer(J)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v2, :cond_a2

    .line 265
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    .line 268
    :cond_a2
    const/4 v2, 0x1

    goto :goto_23

    .line 270
    :cond_a4
    const/4 v2, 0x0

    goto/16 :goto_23
.end method

.method public open(Lcom/sonyericsson/cameracommon/activity/BaseActivity;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/review/ReviewWindowListener;Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)Z
    .registers 27
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "pictureData"    # [B
    .param p3, "videoPath"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;
    .param p5, "pictureRect"    # Landroid/graphics/Rect;
    .param p6, "reviewOrientation"    # I
    .param p7, "pictureOrientation"    # I
    .param p8, "isFront"    # Z
    .param p9, "listener"    # Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;
    .param p10, "crListener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 279
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 281
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->UNLIMITED:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoReview;->getDuration()I

    move-result v2

    int-to-long v14, v2

    .line 284
    .local v14, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1c

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mAutoReviewRight:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    :cond_1c
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    .line 289
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mCrListener:Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .line 291
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mBaseActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 293
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getScreenAspect()Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;

    move-result-object v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 291
    invoke-virtual/range {v2 .. v12}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setupScreen(Landroid/app/Activity;Landroid/net/Uri;[BLjava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;IIZLcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver$ScreenAspect;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->show()V

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->startTimer(J)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    if-eqz v2, :cond_63

    .line 297
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mIsOpened:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mListener:Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/review/ReviewWindowListener;->onReviewWindowOpen()V

    .line 300
    :cond_63
    const/4 v2, 0x1

    .line 302
    :goto_64
    return v2

    :cond_65
    const/4 v2, 0x0

    goto :goto_64
.end method

.method public setDuration(J)V
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mDuration:J

    .line 217
    return-void
.end method

.method public setInterceptKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 2
    .param p1, "interceptKeyListener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mInterceptKeyListener:Landroid/view/View$OnKeyListener;

    .line 355
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V
    .registers 4
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 84
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V

    .line 85
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;)V
    .registers 3
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .param p2, "translator"    # Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 89
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 90
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->showScreen()V

    .line 308
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->requestFocus()Z

    .line 310
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    .line 311
    return-void
.end method

.method public startTimer(J)V
    .registers 14
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->stopTimer()V

    .line 335
    cmp-long v0, p1, v8

    if-lez v0, :cond_1e

    .line 336
    new-instance v1, Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    new-instance v6, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow$ReviewTimerHandler;-><init>(Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;)V

    const-string v7, "AutoReviewWindow"

    move-wide v2, p1

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->start()V

    .line 339
    :cond_1e
    return-void
.end method

.method public stopTimer()V
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    if-eqz v0, :cond_c

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->cancel()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->mTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 348
    :cond_c
    return-void
.end method
