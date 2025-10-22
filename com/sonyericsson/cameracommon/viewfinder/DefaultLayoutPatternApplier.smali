.class public Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;
.super Ljava/lang/Object;
.source "DefaultLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;,
        Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    }
.end annotation


# static fields
.field public static final D:I = 0x3

.field public static final H:I = 0x2

.field public static final N:I = 0x0

.field public static final S:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DefaultLayoutPatternApplier"


# instance fields
.field protected mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field protected mPatternComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .registers 7
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 62
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    .local v1, "visiblities":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;Ljava/lang/Integer;>;"
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "visibility":I
    packed-switch v0, :pswitch_data_1ca

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->isTouched()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    .line 82
    :goto_2e
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CONTENT_VIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    packed-switch v0, :pswitch_data_1d2

    .line 94
    :goto_3d
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_SELECTOR_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    packed-switch v0, :pswitch_data_1da

    .line 106
    :goto_4c
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->CAPTURE_METHOD_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    packed-switch v0, :pswitch_data_1e2

    .line 118
    :goto_5b
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->MODE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_1ea

    .line 130
    :goto_6a
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->GEOTAG_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    packed-switch v0, :pswitch_data_1f2

    .line 142
    :goto_79
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->STORAGE_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    packed-switch v0, :pswitch_data_1fa

    .line 154
    :goto_88
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->ZOOM_BAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    packed-switch v0, :pswitch_data_202

    .line 169
    :goto_97
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RECORDING_PROGRESS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    packed-switch v0, :pswitch_data_20c

    .line 181
    :goto_a6
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->RIGHT_BOTTOM_CAPTURE_BUTTON:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    packed-switch v0, :pswitch_data_214

    .line 193
    :goto_b5
    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->THERMAL_INDICATORS:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    packed-switch v0, :pswitch_data_21c

    .line 205
    :goto_c4
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->refresh()V

    .line 206
    return-void

    .line 67
    :pswitch_ca
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_2e

    .line 70
    :pswitch_d5
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_2e

    .line 77
    :cond_e0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setVisibility(I)V

    goto/16 :goto_2e

    .line 85
    :pswitch_eb
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    goto/16 :goto_3d

    .line 88
    :pswitch_f2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    goto/16 :goto_3d

    .line 97
    :pswitch_f9
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    goto/16 :goto_4c

    .line 100
    :pswitch_104
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->setVisibility(I)V

    goto/16 :goto_4c

    .line 109
    :pswitch_10f
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 112
    :pswitch_11a
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 121
    :pswitch_125
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6a

    .line 124
    :pswitch_130
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6a

    .line 133
    :pswitch_13b
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->show()V

    goto/16 :goto_79

    .line 136
    :pswitch_146
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->hide()V

    goto/16 :goto_79

    .line 145
    :pswitch_151
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    goto/16 :goto_88

    .line 148
    :pswitch_15c
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_88

    .line 157
    :pswitch_167
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->show()V

    goto/16 :goto_97

    .line 160
    :pswitch_172
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideImmediately()V

    goto/16 :goto_97

    .line 163
    :pswitch_17d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hideDelayed()V

    goto/16 :goto_97

    .line 172
    :pswitch_188
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto/16 :goto_a6

    .line 175
    :pswitch_193
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    goto/16 :goto_a6

    .line 184
    :pswitch_19e
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonGroup()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b5

    .line 187
    :pswitch_1a9
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureButtonGroup()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b5

    .line 196
    :pswitch_1b4
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    goto/16 :goto_c4

    .line 199
    :pswitch_1bf
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_c4

    .line 65
    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_d5
    .end packed-switch

    .line 83
    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_f2
    .end packed-switch

    .line 95
    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_104
    .end packed-switch

    .line 107
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_11a
    .end packed-switch

    .line 119
    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_125
        :pswitch_130
    .end packed-switch

    .line 131
    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_13b
        :pswitch_146
    .end packed-switch

    .line 143
    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_151
        :pswitch_15c
    .end packed-switch

    .line 155
    :pswitch_data_202
    .packed-switch 0x1
        :pswitch_167
        :pswitch_172
        :pswitch_17d
    .end packed-switch

    .line 170
    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_188
        :pswitch_193
    .end packed-switch

    .line 182
    :pswitch_data_214
    .packed-switch 0x1
        :pswitch_19e
        :pswitch_1a9
    .end packed-switch

    .line 194
    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_1bf
    .end packed-switch
.end method

.method protected set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V
    .registers 10
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .param p2, "visibility"    # [I

    .prologue
    .line 274
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v3

    array-length v3, v3

    array-length v4, p2

    if-eq v3, v4, :cond_31

    .line 276
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not equal components count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visibility count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    :cond_31
    const/4 v2, 0x0

    .line 282
    .local v2, "index":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 283
    .local v1, "componentMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$DefaultComponent;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v5, :cond_52

    aget-object v0, v4, v3

    .line 284
    .local v0, "component":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    aget v6, p2, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v2, v2, 0x1

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 287
    .end local v0    # "component":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Component;
    :cond_52
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V
    .registers 3
    .param p1, "baseLayout"    # Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .param p2, "isOneshot"    # Z

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->setupLayoutPattern()V

    .line 50
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->setupVisibilities(Z)V

    .line 51
    return-void
.end method

.method protected setupLayoutPattern()V
    .registers 7

    .prologue
    .line 54
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_17

    aget-object v0, v2, v1

    .line 55
    .local v0, "pattern":Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mPatternComponentMap:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 57
    .end local v0    # "pattern":Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    :cond_17
    return-void
.end method

.method protected setupVisibilities(Z)V
    .registers 5
    .param p1, "oneshot"    # Z

    .prologue
    const/16 v2, 0xb

    .line 221
    if-eqz p1, :cond_87

    .line 234
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_10c

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 235
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_126

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 236
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_140

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_15a

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 238
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_174

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 239
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_18e

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 240
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_1a8

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 241
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_1c2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 242
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_1dc

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 243
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_1f6

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 244
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_210

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 245
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_22a

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 246
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_244

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 263
    :goto_86
    return-void

    .line 249
    :cond_87
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_25e

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 250
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_278

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 251
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_292

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 252
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_2ac

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 253
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_2c6

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 254
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_2e0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 255
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_2fa

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 256
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_314

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 257
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_32e

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 258
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_348

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 259
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_362

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 260
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_37c

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    .line 261
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    new-array v1, v2, [I

    fill-array-data v1, :array_396

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;[I)V

    goto/16 :goto_86

    .line 234
    nop

    :array_10c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 235
    :array_126
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 236
    :array_140
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 237
    :array_15a
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 238
    :array_174
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 239
    :array_18e
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 240
    :array_1a8
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
        0x1
    .end array-data

    .line 241
    :array_1c2
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 242
    :array_1dc
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 243
    :array_1f6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 244
    :array_210
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 245
    :array_22a
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
        0x1
    .end array-data

    .line 246
    :array_244
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 249
    :array_25e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data

    .line 250
    :array_278
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 251
    :array_292
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 252
    :array_2ac
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 253
    :array_2c6
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 254
    :array_2e0
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 255
    :array_2fa
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x1
        0x2
        0x1
        0x1
        0x1
    .end array-data

    .line 256
    :array_314
    .array-data 4
        0x0
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 257
    :array_32e
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 258
    :array_348
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    .line 259
    :array_362
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 260
    :array_37c
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    .line 261
    :array_396
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data
.end method
