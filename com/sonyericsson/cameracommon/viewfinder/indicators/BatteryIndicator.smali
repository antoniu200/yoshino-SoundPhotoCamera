.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "BatteryIndicator.java"


# static fields
.field private static final PERCENT:Ljava/lang/String; = "%"

.field private static final TAG:Ljava/lang/String; = "BatteryIndicator"


# instance fields
.field private final IMAGE_SIZE:I

.field private final TEXT_MAX_WIDTH:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 48
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->battery_indicator_image:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 39
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mContainer:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->battery_indicator:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mContainer:Landroid/widget/LinearLayout;

    .line 50
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->battery_indicator_text:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->battery_indicator_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->IMAGE_SIZE:I

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->battery_indicator_text_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->TEXT_MAX_WIDTH:I

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->update()V

    .line 60
    return-void
.end method


# virtual methods
.method public setSensorOrientation(I)V
    .registers 6
    .param p1, "orientation"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mContainer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->TEXT_MAX_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->IMAGE_SIZE:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->IMAGE_SIZE:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->update()V

    .line 72
    return-void
.end method

.method protected update()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mOn:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mVisible:Z

    if-eqz v0, :cond_16

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :cond_15
    :goto_15
    return-void

    .line 84
    :cond_16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method

.method public updateValue(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->mText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt p1, v0, :cond_2a

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->set(Z)V

    .line 103
    :goto_26
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->update()V

    .line 104
    return-void

    .line 101
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/BatteryIndicator;->set(Z)V

    goto :goto_26
.end method
