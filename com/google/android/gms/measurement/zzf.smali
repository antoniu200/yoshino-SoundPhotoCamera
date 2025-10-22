.class public abstract Lcom/google/android/gms/measurement/zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/measurement/zzf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaKZ:Lcom/google/android/gms/measurement/zzg;

.field protected final zzaLa:Lcom/google/android/gms/measurement/zzc;

.field private final zzaLb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/zzg;Lcom/google/android/gms/internal/zzmn;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzf;->zzaKZ:Lcom/google/android/gms/measurement/zzg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLb:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/zzc;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/measurement/zzc;-><init>(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/internal/zzmn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzyo()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLa:Lcom/google/android/gms/measurement/zzc;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/measurement/zzc;)V
    .registers 2

    return-void
.end method

.method protected zzd(Lcom/google/android/gms/measurement/zzc;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zzd;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/measurement/zzd;->zza(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/measurement/zzc;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public zzhG()Lcom/google/android/gms/measurement/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLa:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzye()Lcom/google/android/gms/measurement/zzc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzf;->zzd(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method

.method protected zzym()Lcom/google/android/gms/measurement/zzg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaKZ:Lcom/google/android/gms/measurement/zzg;

    return-object v0
.end method

.method public zzyp()Lcom/google/android/gms/measurement/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLa:Lcom/google/android/gms/measurement/zzc;

    return-object v0
.end method

.method public zzyq()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzf;->zzaLa:Lcom/google/android/gms/measurement/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzc;->zzyg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
