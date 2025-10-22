.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 344
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    .line 132
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 106
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 118
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 121
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 124
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 133
    if-nez p1, :cond_30

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "View may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_30
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4c

    .line 147
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 150
    :cond_4c
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/ExploreByTouchHelper;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/ExploreByTouchHelper;

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/ExploreByTouchHelper;

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 995
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    .line 996
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 997
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 998
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 634
    packed-switch p1, :pswitch_data_e

    .line 638
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_7
    return-object v0

    .line 636
    :pswitch_8
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_7

    .line 634
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 674
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 675
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 678
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 681
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 682
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 683
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 686
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 689
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_51

    .line 690
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :cond_51
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 697
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 699
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 650
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 651
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 652
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 14
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 788
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 791
    .local v3, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v3, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 792
    invoke-virtual {v3, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 793
    const-string v8, "android.view.View"

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 794
    sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 795
    sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 796
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 799
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 802
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_38

    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_38

    .line 803
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 807
    :cond_38
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 808
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v9, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 809
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 813
    :cond_4f
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    .line 814
    .local v0, "actions":I
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5f

    .line 815
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 818
    :cond_5f
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6b

    .line 819
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 824
    :cond_6b
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3, v8, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 828
    iget v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v8, p1, :cond_e0

    .line 829
    invoke-virtual {v3, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 830
    const/16 v8, 0x80

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 837
    :goto_89
    iget v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v8, p1, :cond_e9

    move v2, v6

    .line 838
    .local v2, "isFocused":Z
    :goto_8e
    if-eqz v2, :cond_eb

    .line 839
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 843
    :cond_94
    :goto_94
    invoke-virtual {v3, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 845
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 849
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 850
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v9, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 851
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 854
    iget v8, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    if-eq v8, v11, :cond_f8

    .line 855
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v4

    .line 857
    .local v4, "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget v5, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 858
    .local v5, "virtualDescendantId":I
    :goto_bc
    if-eq v5, v11, :cond_f5

    .line 861
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v8, v11}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    .line 862
    sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 864
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 865
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 866
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 859
    iget v5, v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_bc

    .line 832
    .end local v2    # "isFocused":Z
    .end local v4    # "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5    # "virtualDescendantId":I
    :cond_e0
    invoke-virtual {v3, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 833
    const/16 v8, 0x40

    invoke-virtual {v3, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_89

    :cond_e9
    move v2, v7

    .line 837
    goto :goto_8e

    .line 840
    .restart local v2    # "isFocused":Z
    :cond_eb
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_94

    .line 841
    invoke-virtual {v3, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_94

    .line 868
    .restart local v4    # "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .restart local v5    # "virtualDescendantId":I
    :cond_f5
    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 871
    .end local v4    # "parentNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v5    # "virtualDescendantId":I
    :cond_f8
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v9, v9, v7

    iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v10, v10, v6

    iget-object v11, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 872
    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v11

    sub-int/2addr v10, v11

    .line 871
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 875
    :cond_113
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 876
    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v7, v9, v7

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v9, v9, v6

    iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 877
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    .line 876
    invoke-virtual {v8, v7, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 879
    .local v1, "intersects":Z
    if-eqz v1, :cond_152

    .line 880
    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 882
    iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_152

    .line 883
    invoke-virtual {v3, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 888
    .end local v1    # "intersects":Z
    :cond_152
    return-object v3
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 731
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 732
    .local v2, "info":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v5, v2}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v4, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 738
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v3

    .line 739
    .local v3, "realNodeCount":I
    if-lez v3, :cond_27

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_27

    .line 740
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Views cannot have both real and virtual children"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 743
    :cond_27
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_2c
    if-ge v1, v0, :cond_40

    .line 744
    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 743
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 747
    :cond_40
    return-object v2
.end method

.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v3, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 427
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 428
    .local v0, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v2, 0x0

    .local v2, "virtualViewId":I
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    .line 429
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 430
    .local v1, "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 433
    .end local v1    # "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1e
    return-object v0
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 326
    .local v0, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 327
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "host"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 448
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 450
    .local v0, "h":I
    sparse-switch p1, :sswitch_data_26

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :sswitch_15
    invoke-virtual {p2, v1, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 468
    :goto_18
    return-object p2

    .line 455
    :sswitch_19
    invoke-virtual {p2, v3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    .line 458
    :sswitch_1d
    invoke-virtual {p2, v2, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    .line 461
    :sswitch_21
    invoke-virtual {p2, v3, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_18

    .line 450
    nop

    :sswitch_data_26
    .sparse-switch
        0x11 -> :sswitch_15
        0x21 -> :sswitch_19
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_21
    .end sparse-switch
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 929
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 949
    :cond_9
    :goto_9
    return v2

    .line 934
    :cond_a
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 939
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 940
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_18
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_33

    move-object v0, v1

    .line 941
    check-cast v0, Landroid/view/View;

    .line 942
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    .line 945
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 946
    goto :goto_18

    .line 949
    .end local v0    # "view":Landroid/view/View;
    :cond_33
    if-eqz v1, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method private static keyToDirection(I)I
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 306
    packed-switch p0, :pswitch_data_10

    .line 314
    :pswitch_3
    const/16 v0, 0x82

    :goto_5
    return v0

    .line 308
    :pswitch_6
    const/16 v0, 0x11

    goto :goto_5

    .line 310
    :pswitch_9
    const/16 v0, 0x21

    goto :goto_5

    .line 312
    :pswitch_c
    const/16 v0, 0x42

    goto :goto_5

    .line 306
    nop

    :pswitch_data_10
    .packed-switch 0x13
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 21
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 369
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    .line 371
    .local v2, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 372
    .local v14, "focusedNodeId":I
    const/high16 v3, -0x80000000

    if-ne v14, v3, :cond_18

    const/4 v5, 0x0

    .line 376
    .local v5, "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_d
    sparse-switch p1, :sswitch_data_8a

    .line 407
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    .end local v5    # "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_18
    invoke-virtual {v2, v14}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v5, v3

    goto :goto_d

    .line 379
    .restart local v5    # "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 380
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_46

    const/4 v7, 0x1

    .line 381
    .local v7, "isLayoutRtl":Z
    :goto_2c
    sget-object v3, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v4, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    const/4 v8, 0x0

    move/from16 v6, p1

    invoke-static/range {v2 .. v8}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 413
    .end local v7    # "isLayoutRtl":Z
    .local v16, "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_39
    if-nez v16, :cond_7f

    .line 414
    const/high16 v17, -0x80000000

    .line 420
    .local v17, "nextFocusedNodeId":I
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v3

    return v3

    .line 380
    .end local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v17    # "nextFocusedNodeId":I
    :cond_46
    const/4 v7, 0x0

    goto :goto_2c

    .line 389
    :sswitch_48
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 390
    .local v12, "selectedRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_6d

    .line 392
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 403
    :goto_5e
    sget-object v9, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v10, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v8, v2

    move-object v11, v5

    move/from16 v13, p1

    invoke-static/range {v8 .. v13}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 405
    .restart local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_39

    .line 393
    .end local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_6d
    if-eqz p2, :cond_75

    .line 395
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5e

    .line 401
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v3, v0, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_5e

    .line 416
    .end local v12    # "selectedRect":Landroid/graphics/Rect;
    .restart local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_7f
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v15

    .line 417
    .local v15, "index":I
    invoke-virtual {v2, v15}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v17

    .restart local v17    # "nextFocusedNodeId":I
    goto :goto_3d

    .line 376
    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_20
        0x11 -> :sswitch_48
        0x21 -> :sswitch_48
        0x42 -> :sswitch_48
        0x82 -> :sswitch_48
    .end sparse-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 905
    sparse-switch p2, :sswitch_data_1c

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    .line 907
    :sswitch_8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_7

    .line 909
    :sswitch_d
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_7

    .line 911
    :sswitch_12
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_7

    .line 913
    :sswitch_17
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    goto :goto_7

    .line 905
    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_17
        0x40 -> :sswitch_8
        0x80 -> :sswitch_d
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v0, 0x0

    .line 965
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 984
    :cond_11
    :goto_11
    return v0

    .line 969
    :cond_12
    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v1, p1, :cond_11

    .line 971
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_21

    .line 972
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 976
    :cond_21
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 979
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 980
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 982
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    .line 609
    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v1, p1, :cond_5

    .line 621
    :goto_4
    return-void

    .line 613
    :cond_5
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 614
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 618
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 619
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_4
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1043
    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, p1, :cond_6

    .line 1053
    :goto_5
    return v0

    .line 1048
    :cond_6
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1050
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1051
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1053
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_15

    .line 196
    :cond_14
    :goto_14
    return v2

    .line 183
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_3c

    :pswitch_1c
    goto :goto_14

    .line 186
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 187
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 188
    if-eq v0, v5, :cond_30

    :goto_2e
    move v2, v1

    goto :goto_14

    :cond_30
    move v1, v2

    goto :goto_2e

    .line 190
    .end local v0    # "virtualViewId":I
    :pswitch_32
    iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v3, v5, :cond_14

    .line 191
    invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v2, v1

    .line 192
    goto :goto_14

    .line 183
    nop

    :pswitch_data_3c
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_32
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 216
    .local v0, "action":I
    if-eq v0, v7, :cond_10

    .line 217
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 218
    .local v5, "keyCode":I
    sparse-switch v5, :sswitch_data_56

    .line 254
    .end local v5    # "keyCode":I
    :cond_10
    :goto_10
    return v3

    .line 223
    .restart local v5    # "keyCode":I
    :sswitch_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 224
    invoke-static {v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v2

    .line 225
    .local v2, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 226
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v1, :cond_10

    .line 227
    invoke-direct {p0, v2, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 228
    const/4 v3, 0x1

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 237
    .end local v1    # "count":I
    .end local v2    # "direction":I
    .end local v4    # "i":I
    :sswitch_2e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_10

    .line 239
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 240
    const/4 v3, 0x1

    goto :goto_10

    .line 245
    :sswitch_3f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 246
    const/4 v6, 0x2

    invoke-direct {p0, v6, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_10

    .line 247
    :cond_4b
    invoke-virtual {p1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 248
    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    goto :goto_10

    .line 218
    :sswitch_data_56
    .sparse-switch
        0x13 -> :sswitch_11
        0x14 -> :sswitch_11
        0x15 -> :sswitch_11
        0x16 -> :sswitch_11
        0x17 -> :sswitch_2e
        0x3d -> :sswitch_3f
        0x42 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_b

    .line 155
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 157
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    .prologue
    .line 523
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 524
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 541
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .prologue
    .line 563
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_22

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 564
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 565
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_22

    .line 567
    const/16 v2, 0x800

    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 569
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 570
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 573
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 716
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 717
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 720
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_7
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_b

    .line 273
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 276
    :cond_b
    if-eqz p1, :cond_10

    .line 277
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 279
    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 657
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 660
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 661
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 752
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 755
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 756
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1124
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1112
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1202
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .prologue
    .line 598
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 892
    packed-switch p1, :pswitch_data_e

    .line 896
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    .line 894
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    .line 892
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1013
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1032
    :cond_12
    :goto_12
    return v0

    .line 1018
    :cond_13
    iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v2, p1, :cond_12

    .line 1023
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_22

    .line 1024
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1027
    :cond_22
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1029
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1030
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move v0, v1

    .line 1032
    goto :goto_12
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 502
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_d

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 512
    :cond_d
    :goto_d
    return v2

    .line 506
    :cond_e
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 507
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_d

    .line 511
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 512
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_d
.end method
