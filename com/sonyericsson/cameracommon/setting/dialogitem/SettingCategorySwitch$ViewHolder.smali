.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;
.super Ljava/lang/Object;
.source "SettingCategorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mContainer:Landroid/view/View;

.field mDivider:Landroid/view/View;

.field mSwitch:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingCategorySwitch$ViewHolder;-><init>()V

    return-void
.end method
