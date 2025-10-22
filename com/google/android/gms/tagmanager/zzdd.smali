.class abstract Lcom/google/android/gms/tagmanager/zzdd;
.super Lcom/google/android/gms/tagmanager/zzak;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzak;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzCo()Z
    .registers 2

    const/4 v0, 0x0

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzdd;->zzK(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdf;->zzDX()Lcom/google/android/gms/internal/zzag$zza;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzK(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzag$zza;",
            ">;)V"
        }
    .end annotation
.end method
