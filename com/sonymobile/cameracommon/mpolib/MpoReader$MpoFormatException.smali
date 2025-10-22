.class public Lcom/sonymobile/cameracommon/mpolib/MpoReader$MpoFormatException;
.super Ljava/lang/Exception;
.source "MpoReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/mpolib/MpoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MpoFormatException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
