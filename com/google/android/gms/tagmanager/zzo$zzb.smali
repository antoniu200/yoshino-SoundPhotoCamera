.class Lcom/google/android/gms/tagmanager/zzo$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private final zzaWd:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

.field final synthetic zzaWe:Lcom/google/android/gms/tagmanager/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaWe:Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaWd:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    const-string v0, "Don\'t know how to handle this message."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzeG(Ljava/lang/String;)V

    goto :goto_a

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public zzeF(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzo$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zzeG(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaWd:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaWe:Lcom/google/android/gms/tagmanager/zzo;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;->onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V

    return-void
.end method
