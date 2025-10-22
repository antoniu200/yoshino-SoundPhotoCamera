.class public Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;
.super Ljava/lang/Object;
.source "CaptureFeedbackAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureFeedbackAnimationFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultAnimation()Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;)V

    return-object v0
.end method
