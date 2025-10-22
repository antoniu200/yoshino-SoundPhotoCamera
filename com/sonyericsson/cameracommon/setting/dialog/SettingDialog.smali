.class public abstract Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;
.super Landroid/widget/RelativeLayout;
.source "SettingDialog.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingDialog"


# instance fields
.field private mCloseAnimation:Landroid/view/animation/Animation;

.field private mIsNested:Z

.field private mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

.field protected mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected cancelAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 177
    :cond_5
    :goto_5
    return-void

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_5
.end method

.method public close()V
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->cancelAnimation()V

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_c

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 123
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1a

    .line 124
    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$1;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_1a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    if-eqz v1, :cond_23

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;->onClosed()V

    .line 137
    :cond_23
    return-void
.end method

.method public getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    return-object v0
.end method

.method public hitTest(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 215
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 217
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isNested()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    return v0
.end method

.method protected notifyItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 3
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 188
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 194
    :goto_6
    return-void

    .line 192
    :cond_7
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    goto :goto_6
.end method

.method protected notifyItemUpdated(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 2
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 197
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 198
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 224
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 226
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinatePosition(I)V

    .line 46
    :cond_e
    return-void
.end method

.method public open(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;Z)V

    .line 83
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Z)V
    .registers 5
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "isNested"    # Z

    .prologue
    .line 90
    if-nez p1, :cond_a

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mIsNested:Z

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    if-eqz v0, :cond_1c

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;->onOpened()V

    .line 101
    :cond_1c
    return-void
.end method

.method public abstract setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
.end method

.method public setCloseAnimation(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    .line 74
    return-void
.end method

.method public setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V
    .registers 2
    .param p1, "coordinator"    # Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    .line 66
    return-void
.end method

.method public setSensorOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mOrientation:I

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    if-eqz v0, :cond_b

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mLayoutCoordinator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinateSize(I)V

    .line 58
    :cond_b
    return-void
.end method

.method public setStateListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mStateListener:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogStateListener;

    .line 185
    return-void
.end method

.method protected startAnimation()V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 164
    :goto_4
    return-void

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->cancelAnimation()V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog$2;-><init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->mCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method protected updateSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .registers 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectedItem"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 202
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_14
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 206
    return-void
.end method
