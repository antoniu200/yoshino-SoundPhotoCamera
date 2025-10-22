.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;
.super Ljava/lang/Object;
.source "AccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityHelper"

.field private static final sRectForHit:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkToTouch(Landroid/view/View;II)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p0, :cond_4

    .line 202
    :cond_3
    :goto_3
    return v1

    .line 158
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 163
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 164
    .local v0, "visible":Z
    if-eqz v0, :cond_3

    .line 199
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 6
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x40

    .line 48
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "newTalkingView":Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 64
    :goto_12
    return-object v0

    .line 60
    :cond_13
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_12
.end method

.method private static searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 12
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 94
    if-eqz p0, :cond_5

    if-nez p1, :cond_2f

    .line 95
    :cond_5
    const-string v6, "AccessibilityHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "searchContentDescribedView : Arg is null.[viewGroup = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 140
    :cond_2e
    :goto_2e
    return-object v3

    .line 102
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 103
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 106
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 107
    .local v0, "childCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "index":I
    :goto_3f
    if-ltz v2, :cond_7c

    .line 110
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "childView":Landroid/view/View;
    invoke-static {v1, v4, v5}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->checkToTouch(Landroid/view/View;II)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 107
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    .line 117
    :cond_4e
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6e

    .line 118
    move-object v3, v1

    .line 126
    .local v3, "searchResult":Landroid/view/View;
    :goto_55
    if-nez v3, :cond_2e

    .line 131
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4b

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_4b

    move-object v3, v1

    .line 135
    goto :goto_2e

    .line 119
    .end local v3    # "searchResult":Landroid/view/View;
    :cond_6e
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_7a

    move-object v6, v1

    .line 121
    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v6, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "searchResult":Landroid/view/View;
    goto :goto_55

    .line 123
    .end local v3    # "searchResult":Landroid/view/View;
    :cond_7a
    const/4 v3, 0x0

    .restart local v3    # "searchResult":Landroid/view/View;
    goto :goto_55

    .end local v1    # "childView":Landroid/view/View;
    .end local v3    # "searchResult":Landroid/view/View;
    :cond_7c
    move-object v3, v7

    .line 140
    goto :goto_2e
.end method
