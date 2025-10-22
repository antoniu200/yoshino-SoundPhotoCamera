.class public Landroid/support/v7/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/TooltipCompat$Api26ViewCompatImpl;,
        Landroid/support/v7/widget/TooltipCompat$BaseViewCompatImpl;,
        Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 53
    new-instance v0, Landroid/support/v7/widget/TooltipCompat$Api26ViewCompatImpl;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/TooltipCompat$Api26ViewCompatImpl;-><init>(Landroid/support/v7/widget/TooltipCompat$1;)V

    sput-object v0, Landroid/support/v7/widget/TooltipCompat;->IMPL:Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;

    .line 57
    :goto_e
    return-void

    .line 55
    :cond_f
    new-instance v0, Landroid/support/v7/widget/TooltipCompat$BaseViewCompatImpl;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/TooltipCompat$BaseViewCompatImpl;-><init>(Landroid/support/v7/widget/TooltipCompat$1;)V

    sput-object v0, Landroid/support/v7/widget/TooltipCompat;->IMPL:Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;

    goto :goto_e
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    sget-object v0, Landroid/support/v7/widget/TooltipCompat;->IMPL:Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/TooltipCompat$ViewCompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
