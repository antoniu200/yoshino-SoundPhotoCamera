.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatBaseImpl"
.end annotation


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 7
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 84
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_1b

    .line 86
    :try_start_6
    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "getWindowLayoutType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_32

    .line 92
    :goto_19
    sput-boolean v4, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 95
    :cond_1b
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_30

    .line 97
    :try_start_1f
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_2f

    move-result v0

    .line 102
    :goto_2e
    return v0

    .line 98
    :catch_2f
    move-exception v0

    :cond_30
    move v0, v1

    .line 102
    goto :goto_2e

    .line 89
    :catch_32
    move-exception v0

    goto :goto_19
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 9
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    const/4 v5, 0x1

    .line 63
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v0, :cond_1f

    .line 65
    :try_start_5
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_35

    .line 71
    :goto_1d
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 74
    :cond_1f
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    .line 76
    :try_start_23
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_33

    .line 81
    :cond_32
    :goto_32
    return-void

    .line 77
    :catch_33
    move-exception v0

    goto :goto_32

    .line 68
    :catch_35
    move-exception v0

    goto :goto_1d
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 9
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 44
    .line 45
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 44
    invoke-static {p5, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v0, v1, 0x7

    .line 46
    .local v0, "hgrav":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 49
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr p3, v1

    .line 51
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 52
    return-void
.end method
