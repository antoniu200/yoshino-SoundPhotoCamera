.class Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;
.super Ljava/lang/Object;
.source "SettingControlSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mContainer:Landroid/view/View;

.field mSwitch:Lcom/sonyericsson/cameracommon/widget/ControlSwitch;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingControlSwitch$ViewHolder;-><init>()V

    return-void
.end method
