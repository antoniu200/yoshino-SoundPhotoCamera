.class public Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;
.super Ljava/lang/Object;
.source "EGLConfigChooser_RGBA8888D16S8.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$EGLConfigChooser;


# static fields
.field private static final BIT_A:I = 0x8

.field private static final BIT_B:I = 0x8

.field private static final BIT_DEPTH:I = 0x10

.field private static final BIT_G:I = 0x8

.field private static final BIT_R:I = 0x8

.field private static final BIT_STENCIL:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .registers 6
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attr"    # I

    .prologue
    .line 139
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 140
    .local v0, "value":[I
    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 141
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method private getRequiredConfigSpec(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)[I
    .registers 8
    .param p1, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .prologue
    const/16 v5, 0x8

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8$1;->$SwitchMap$com$sonymobile$cameracommon$gltextureview$GLTextureView$OpenGLVersion:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ae

    .line 100
    :goto_12
    :pswitch_12
    const/16 v3, 0x3024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const/16 v3, 0x3023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/16 v3, 0x3022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const/16 v3, 0x3021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const/16 v3, 0x3025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const/16 v3, 0x3026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const/16 v3, 0x3038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 127
    .local v2, "resultArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_ac

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 94
    .end local v0    # "i":I
    .end local v2    # "resultArray":[I
    :pswitch_99
    const/16 v3, 0x3040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 131
    .restart local v0    # "i":I
    .restart local v2    # "resultArray":[I
    :cond_ac
    return-object v2

    .line 88
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_12
        :pswitch_99
    .end packed-switch
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 20
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "version"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;

    .prologue
    .line 43
    const/4 v2, 0x1

    new-array v11, v2, [I

    .line 44
    .local v11, "configNum":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2, v3, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to eglChooseConfig()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_17
    const/4 v2, 0x0

    aget v2, v11, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 53
    .local v5, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getRequiredConfigSpec(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$OpenGLVersion;)[I

    move-result-object v4

    array-length v6, v5

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 52
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 54
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to eglChooseConfig()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_38
    array-length v3, v5

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v3, :cond_96

    aget-object v10, v5, v2

    .line 59
    .local v10, "check":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3024

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v14

    .line 60
    .local v14, "r":I
    const/16 v4, 0x3023

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v13

    .line 61
    .local v13, "g":I
    const/16 v4, 0x3022

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v9

    .line 62
    .local v9, "b":I
    const/16 v4, 0x3021

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v8

    .line 63
    .local v8, "a":I
    const/16 v4, 0x3025

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v12

    .line 64
    .local v12, "d":I
    const/16 v4, 0x3026

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10, v4}, Lcom/sonymobile/cameracommon/gltextureview/EGLConfigChooser_RGBA8888D16S8;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v15

    .line 67
    .local v15, "s":I
    const/16 v4, 0x8

    if-ne v14, v4, :cond_93

    const/16 v4, 0x8

    if-ne v13, v4, :cond_93

    const/16 v4, 0x8

    if-ne v9, v4, :cond_93

    const/16 v4, 0x8

    if-gt v4, v8, :cond_93

    const/16 v4, 0x10

    if-gt v4, v12, :cond_93

    const/16 v4, 0x8

    if-gt v4, v15, :cond_93

    .line 80
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v10    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v12    # "d":I
    .end local v13    # "g":I
    .end local v14    # "r":I
    .end local v15    # "s":I
    :goto_92
    return-object v10

    .line 58
    .restart local v8    # "a":I
    .restart local v9    # "b":I
    .restart local v10    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v12    # "d":I
    .restart local v13    # "g":I
    .restart local v14    # "r":I
    .restart local v15    # "s":I
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 80
    .end local v8    # "a":I
    .end local v9    # "b":I
    .end local v10    # "check":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v12    # "d":I
    .end local v13    # "g":I
    .end local v14    # "r":I
    .end local v15    # "s":I
    :cond_96
    const/4 v2, 0x0

    aget-object v10, v5, v2

    goto :goto_92
.end method
