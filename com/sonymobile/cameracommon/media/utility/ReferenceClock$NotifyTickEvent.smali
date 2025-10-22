.class Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$NotifyTickEvent;
.super Ljava/lang/Object;
.source "ReferenceClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyTickEvent"
.end annotation


# instance fields
.field public final requestElapsedTime:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;J)V
    .registers 4
    .param p2, "requestElapsedTime"    # J

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$NotifyTickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide p2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$NotifyTickEvent;->requestElapsedTime:J

    .line 186
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$NotifyTickEvent;->this$0:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->access$100(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$NotifyTickEvent;->requestElapsedTime:J

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;->onTick(J)V

    .line 193
    return-void
.end method
