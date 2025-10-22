.class public Lcom/sonyericsson/cameracommon/widget/CategorySwitch;
.super Lcom/sonyericsson/cameracommon/widget/Switch;
.source "CategorySwitch.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CategorySwitch"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method
