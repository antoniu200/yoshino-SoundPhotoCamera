.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
.super Landroid/widget/FrameLayout;
.source "AccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoverEventInterceptView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 213
    return-void
.end method


# virtual methods
.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 218
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 219
    const/4 v0, 0x1

    return v0
.end method
