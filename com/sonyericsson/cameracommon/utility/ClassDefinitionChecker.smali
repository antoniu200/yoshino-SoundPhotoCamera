.class public Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ClassDefinitionChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaRecorderPauseAndResumeSupported()Z
    .registers 1

    .prologue
    .line 20
    # getter for: Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->sIsSupported:Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker$MediaRecorderPauseAndResumeSupportStateHolder;->access$000()Z

    move-result v0

    return v0
.end method
