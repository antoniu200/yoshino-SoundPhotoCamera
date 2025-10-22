.class Landroid/support/v4/provider/SelfDestructiveThread$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/SelfDestructiveThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/SelfDestructiveThread;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/SelfDestructiveThread;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v4/provider/SelfDestructiveThread;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 68
    :goto_6
    return v2

    .line 62
    :pswitch_7
    iget-object v1, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    # invokes: Landroid/support/v4/provider/SelfDestructiveThread;->onInvokeRunnable(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Landroid/support/v4/provider/SelfDestructiveThread;->access$000(Landroid/support/v4/provider/SelfDestructiveThread;Ljava/lang/Runnable;)V

    goto :goto_6

    .line 65
    :pswitch_11
    iget-object v0, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    # invokes: Landroid/support/v4/provider/SelfDestructiveThread;->onDestruction()V
    invoke-static {v0}, Landroid/support/v4/provider/SelfDestructiveThread;->access$100(Landroid/support/v4/provider/SelfDestructiveThread;)V

    goto :goto_6

    .line 60
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method
