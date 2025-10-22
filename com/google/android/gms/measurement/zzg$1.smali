.class Lcom/google/android/gms/measurement/zzg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/zzg;->zze(Lcom/google/android/gms/measurement/zzc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLh:Lcom/google/android/gms/measurement/zzc;

.field final synthetic zzaLi:Lcom/google/android/gms/measurement/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/zzg;Lcom/google/android/gms/measurement/zzc;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLi:Lcom/google/android/gms/measurement/zzg;

    iput-object p2, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLh:Lcom/google/android/gms/measurement/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLh:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzyl()Lcom/google/android/gms/measurement/zzf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLh:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/zzf;->zza(Lcom/google/android/gms/measurement/zzc;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLi:Lcom/google/android/gms/measurement/zzg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/zzg;->zza(Lcom/google/android/gms/measurement/zzg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zzh;

    iget-object v2, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLh:Lcom/google/android/gms/measurement/zzc;

    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/zzh;->zza(Lcom/google/android/gms/measurement/zzc;)V

    goto :goto_15

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLi:Lcom/google/android/gms/measurement/zzg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzg$1;->zzaLh:Lcom/google/android/gms/measurement/zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/zzg;->zza(Lcom/google/android/gms/measurement/zzg;Lcom/google/android/gms/measurement/zzc;)V

    return-void
.end method
