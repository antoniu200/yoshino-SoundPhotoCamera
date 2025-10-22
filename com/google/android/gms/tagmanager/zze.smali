.class Lcom/google/android/gms/tagmanager/zze;
.super Lcom/google/android/gms/tagmanager/zzak;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzaVH:Ljava/lang/String;

.field private static final zzaVI:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbJ:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zze;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzeb:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zze;->zzaVH:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzae;->zzee:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zze;->zzaVI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/tagmanager/zze;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zze;->zzaVI:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zze;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zzCo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzI(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzag$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zze;->zzaVI:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzDX()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/tagmanager/zze;->zzaVH:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzag$zza;

    if-eqz v0, :cond_2e

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzg(Lcom/google/android/gms/internal/zzag$zza;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zze;->context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/tagmanager/zzax;->zzf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_e

    :cond_2e
    const/4 v0, 0x0

    goto :goto_21

    :cond_30
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzDX()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_e
.end method
