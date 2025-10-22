.class Lcom/google/android/gms/tagmanager/zzq;
.super Lcom/google/android/gms/tagmanager/zzak;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final zzYk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzad;->zzbo:Lcom/google/android/gms/internal/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzad;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzq;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzq;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzq;->zzYk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzCo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzI(Ljava/util/Map;)Lcom/google/android/gms/internal/zzag$zza;
    .registers 3
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

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzq;->zzYk:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzDX()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzq;->zzYk:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    goto :goto_8
.end method
