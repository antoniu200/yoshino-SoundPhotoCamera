.class Lcom/google/android/gms/tagmanager/zzp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzbf",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaWq:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    return-void
.end method


# virtual methods
.method public zzCC()V
    .registers 1

    return-void
.end method

.method public synthetic zzH(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzb(Lcom/google/android/gms/internal/zzaf$zzj;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbf$zza;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :cond_1e
    :goto_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_36

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzabe:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1e

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaf$zzj;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zze(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaf$zzj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaf$zzj;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_20

    const-string v0, "Current resource is null; network resource is also null"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    monitor-exit v1

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zze(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaf$zzj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaf$zzj;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzaf$zzj;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzmn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmn;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaf$zzj;JZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting refresh time to current time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzg(Lcom/google/android/gms/tagmanager/zzp;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaf$zzj;)V

    :cond_63
    monitor-exit v1

    goto :goto_1f

    :catchall_65
    move-exception v0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v0
.end method
