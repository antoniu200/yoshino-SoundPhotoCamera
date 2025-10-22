.class public final Lcom/google/android/gms/internal/zzpd;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzpd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzAD:I

.field public zzAE:I

.field private zzVT:Ljava/lang/String;

.field public zzaLt:I

.field public zzaLu:I

.field public zzaLv:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpd;->zzB(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzpd;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhW(I)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhX(I)V

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhY(I)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzhZ(I)V

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->zzia(I)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpd;->zzVT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpd;->setLanguage(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzpd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpd;->zza(Lcom/google/android/gms/internal/zzpd;)V

    return-void
.end method

.method public zzhW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    return-void
.end method

.method public zzhX(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    return-void
.end method

.method public zzhY(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    return-void
.end method

.method public zzhZ(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    return-void
.end method

.method public zzia(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    return-void
.end method

.method public zzyA()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLt:I

    return v0
.end method

.method public zzyB()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAD:I

    return v0
.end method

.method public zzyC()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzAE:I

    return v0
.end method

.method public zzyD()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLu:I

    return v0
.end method

.method public zzyE()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzpd;->zzaLv:I

    return v0
.end method
