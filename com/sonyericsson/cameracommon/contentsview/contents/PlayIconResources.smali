.class Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources;
.super Ljava/lang/Object;
.source "PlayIconResources.java"


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
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 28
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 22
    :pswitch_d
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_video_icn:I

    goto :goto_c

    .line 25
    :pswitch_10
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_core_photo_stack_soundphoto_icn:I

    goto :goto_c

    .line 20
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method
