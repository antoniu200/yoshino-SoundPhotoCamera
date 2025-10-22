.class public final Lcom/google/android/gms/measurement/zzc;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKP:Lcom/google/android/gms/measurement/zzf;

.field private zzaKQ:Z

.field private zzaKR:J

.field private zzaKS:J

.field private zzaKT:J

.field private zzaKU:J

.field private zzaKV:J

.field private zzaKW:Z

.field private final zzaKX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/measurement/zze;",
            ">;",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaKY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpW:Lcom/google/android/gms/internal/zzmn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/zzc;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKP:Lcom/google/android/gms/measurement/zzf;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKP:Lcom/google/android/gms/measurement/zzf;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzpW:Lcom/google/android/gms/internal/zzmn;

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzpW:Lcom/google/android/gms/internal/zzmn;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKR:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKR:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKS:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKS:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKT:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKT:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKU:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKU:J

    iget-wide v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKV:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKV:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->zzaKY:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKY:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/zze;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/zze;->zza(Lcom/google/android/gms/measurement/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_68
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/zzf;Lcom/google/android/gms/internal/zzmn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/zzc;->zzaKP:Lcom/google/android/gms/measurement/zzf;

    iput-object p2, p0, Lcom/google/android/gms/measurement/zzc;->zzpW:Lcom/google/android/gms/internal/zzmn;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKU:J

    const-wide v0, 0xb43e9400L

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKV:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKY:Ljava/util/List;

    return-void
.end method

.method private static zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_6} :catch_10

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType doesn\'t have default constructor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dataType default constructor is not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public zzL(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/measurement/zzc;->zzaKS:J

    return-void
.end method

.method public zzb(Lcom/google/android/gms/measurement/zze;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/measurement/zze;

    if-eq v1, v2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/zzc;->zze(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/zze;->zza(Lcom/google/android/gms/measurement/zze;)V

    return-void
.end method

.method public zzd(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    return-object v0
.end method

.method public zze(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/measurement/zze;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/zze;

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/google/android/gms/measurement/zzc;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/measurement/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public zzye()Lcom/google/android/gms/measurement/zzc;
    .registers 2

    new-instance v0, Lcom/google/android/gms/measurement/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/zzc;-><init>(Lcom/google/android/gms/measurement/zzc;)V

    return-object v0
.end method

.method public zzyf()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/measurement/zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public zzyg()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKY:Ljava/util/List;

    return-object v0
.end method

.method public zzyh()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKR:J

    return-wide v0
.end method

.method public zzyi()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/zzc;->zzym()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/zzg;->zze(Lcom/google/android/gms/measurement/zzc;)V

    return-void
.end method

.method public zzyj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKQ:Z

    return v0
.end method

.method zzyk()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzpW:Lcom/google/android/gms/internal/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmn;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKT:J

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKS:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKR:J

    :goto_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKQ:Z

    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzpW:Lcom/google/android/gms/internal/zzmn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmn;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKR:J

    goto :goto_14
.end method

.method zzyl()Lcom/google/android/gms/measurement/zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKP:Lcom/google/android/gms/measurement/zzf;

    return-object v0
.end method

.method zzym()Lcom/google/android/gms/measurement/zzg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKP:Lcom/google/android/gms/measurement/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzf;->zzym()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    return-object v0
.end method

.method zzyn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKW:Z

    return v0
.end method

.method zzyo()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/zzc;->zzaKW:Z

    return-void
.end method
