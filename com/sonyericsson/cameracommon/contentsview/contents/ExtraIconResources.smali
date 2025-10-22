.class Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources;
.super Ljava/lang/Object;
.source "ExtraIconResources.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I
    .registers 3
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 52
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 22
    :pswitch_d
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_burst_icn:I

    goto :goto_c

    .line 25
    :pswitch_10
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_predictive_capture_icn:I

    goto :goto_c

    .line 28
    :pswitch_13
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_timeshift_icn:I

    goto :goto_c

    .line 31
    :pswitch_16
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_timeshift_video_hummingbird_icn:I

    goto :goto_c

    .line 34
    :pswitch_19
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_timeshift_video_120fps_icn:I

    goto :goto_c

    .line 37
    :pswitch_1c
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_4k_icn:I

    goto :goto_c

    .line 40
    :pswitch_1f
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_super_slow_motion_icn:I

    goto :goto_c

    .line 43
    :pswitch_22
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_super_slow_motion_icn:I

    goto :goto_c

    .line 46
    :pswitch_25
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_super_slow_motion_icn:I

    goto :goto_c

    .line 49
    :pswitch_28
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_timeshift_video_120fps_icn:I

    goto :goto_c

    .line 20
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method
