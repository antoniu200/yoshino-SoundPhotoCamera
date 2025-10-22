.class public Lcom/google/android/gms/analytics/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final zzMY:J

.field private final zzMZ:Ljava/lang/String;

.field private final zzMj:Ljava/lang/String;

.field private final zzNa:Z

.field private zzNb:J

.field private final zzvS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMY:J

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMZ:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNa:Z

    iput-wide p6, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    if-eqz p8, :cond_1d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    :goto_1c
    return-void

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    goto :goto_1c
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMj:Ljava/lang/String;

    return-object v0
.end method

.method public zziM()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMY:J

    return-wide v0
.end method

.method public zziN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMZ:Ljava/lang/String;

    return-object v0
.end method

.method public zziO()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNa:Z

    return v0
.end method

.method public zziP()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    return-wide v0
.end method

.method public zzn()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    return-object v0
.end method

.method public zzn(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    return-void
.end method
