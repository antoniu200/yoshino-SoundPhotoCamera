.class Lcom/google/android/gms/tagmanager/zzcp$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcp;->zza(Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzco;)Lcom/google/android/gms/tagmanager/zzbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaYG:Lcom/google/android/gms/tagmanager/zzcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcp$4;->zzaYG:Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzrb$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzck;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrb$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrb$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrb$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzck;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEj()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEk()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzck;->zzDd()Lcom/google/android/gms/tagmanager/zzci;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEj()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzci;->zzc(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzck;->zzDe()Lcom/google/android/gms/tagmanager/zzci;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEk()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrb$zze;->zzEp()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzci;->zzc(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
