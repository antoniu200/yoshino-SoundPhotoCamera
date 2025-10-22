.class Landroid/support/v4/media/AudioAttributesCompatApi21;
.super Ljava/lang/Object;
.source "AudioAttributesCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioAttributesCompat"

.field private static sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static toLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;)I
    .registers 9
    .param p0, "aaWrap"    # Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesCompatApi21$Wrapper;->unwrap()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 38
    .local v0, "aaObject":Landroid/media/AudioAttributes;
    :try_start_4
    sget-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1a

    .line 39
    const-class v3, Landroid/media/AudioAttributes;

    const-string v4, "toLegacyStreamType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/media/AudioAttributes;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    .line 42
    :cond_1a
    sget-object v3, Landroid/support/v4/media/AudioAttributesCompatApi21;->sAudioAttributesToLegacyStreamType:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "result":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2c} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_2c} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_2c} :catch_38
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_2c} :catch_2e

    move-result v3

    .line 48
    :goto_2d
    return v3

    .line 45
    :catch_2e
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    :goto_2f
    const-string v3, "AudioAttributesCompat"

    const-string v4, "getLegacyStreamType() failed on API21+"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 v3, -0x1

    goto :goto_2d

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_38
    move-exception v1

    goto :goto_2f

    :catch_3a
    move-exception v1

    goto :goto_2f

    :catch_3c
    move-exception v1

    goto :goto_2f
.end method
