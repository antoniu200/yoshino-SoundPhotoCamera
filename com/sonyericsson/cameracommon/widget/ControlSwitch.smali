.class public Lcom/sonyericsson/cameracommon/widget/ControlSwitch;
.super Lcom/sonyericsson/cameracommon/widget/Switch;
.source "ControlSwitch.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControlSwitch"


# instance fields
.field private mIsUpsideDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private reverseChildrenViews(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 65
    :cond_16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1f
    if-ltz v0, :cond_2d

    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 69
    :cond_2d
    return-void
.end method


# virtual methods
.method public declared-synchronized setUiOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 31
    monitor-enter p0

    packed-switch p1, :pswitch_data_48

    .line 58
    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    .line 33
    :pswitch_6
    :try_start_6
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-eqz v0, :cond_4

    .line 35
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_21

    .line 38
    :try_start_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 39
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    .line 40
    const/4 v0, 0x0

    :try_start_1e
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_4

    .line 31
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 39
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0

    .line 44
    :pswitch_27
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z

    if-nez v0, :cond_4

    .line 46
    invoke-direct {p0, p0}, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->reverseChildrenViews(Landroid/view/ViewGroup;)V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mText:Landroid/widget/TextView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    monitor-enter v1
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_21

    .line 49
    :try_start_38
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mSwitchBundle:Landroid/view/View;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 50
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_44

    .line 51
    const/4 v0, 0x1

    :try_start_41
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/widget/ControlSwitch;->mIsUpsideDown:Z
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_21

    goto :goto_4

    .line 50
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_21

    .line 31
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_27
        :pswitch_6
    .end packed-switch
.end method
