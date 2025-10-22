.class Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRecorderPauseAndResumeSupportStateHolder"
.end annotation


# static fields
.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method private static isSupported()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "enablePause":Z
    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_a
    if-ge v3, v5, :cond_25

    aget-object v1, v4, v3

    .line 30
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pause"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 31
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_22

    .line 32
    const/4 v0, 0x1

    .line 29
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 38
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_25
    if-eqz v0, :cond_28

    .line 39
    const/4 v2, 0x1

    .line 43
    :cond_28
    return v2
.end method
