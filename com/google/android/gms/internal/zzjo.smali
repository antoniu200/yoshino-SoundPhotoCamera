.class public final Lcom/google/android/gms/internal/zzjo;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzjo;",
        ">;"
    }
.end annotation


# instance fields
.field private zzGY:Ljava/lang/String;

.field private zzMi:Ljava/lang/String;

.field private zzMj:Ljava/lang/String;

.field private zzMk:Ljava/lang/String;

.field private zzMl:Z

.field private zzMm:Ljava/lang/String;

.field private zzMn:Z

.field private zzMo:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMj:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzGY:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .registers 2
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMj:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(D)V
    .registers 6
    .param p1, "percentage"    # D

    .prologue
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_15

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :goto_d
    const-string v1, "Sample rate must be between 0% and 100%"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMo:D

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->zzGY:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzGY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMk:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzjo;->zzMo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjo;->zzB(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzG(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMl:Z

    return-void
.end method

.method public zzH(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMn:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzjo;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->zzaU(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->setClientId(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzGY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzGY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->setUserId(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->zzaV(Ljava/lang/String;)V

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMl:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->zzG(Z)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->zzaW(Ljava/lang/String;)V

    :cond_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMn:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMn:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzjo;->zzH(Z)V

    :cond_52
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMo:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5f

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMo:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzjo;->setSampleRate(D)V

    :cond_5f
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzjo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjo;->zza(Lcom/google/android/gms/internal/zzjo;)V

    return-void
.end method

.method public zzaU(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMi:Ljava/lang/String;

    return-void
.end method

.method public zzaV(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMk:Ljava/lang/String;

    return-void
.end method

.method public zzaW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjo;->zzMm:Ljava/lang/String;

    return-void
.end method

.method public zzia()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMi:Ljava/lang/String;

    return-object v0
.end method

.method public zzib()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMk:Ljava/lang/String;

    return-object v0
.end method

.method public zzic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMl:Z

    return v0
.end method

.method public zzid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMm:Ljava/lang/String;

    return-object v0
.end method

.method public zzie()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMn:Z

    return v0
.end method

.method public zzif()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjo;->zzMo:D

    return-wide v0
.end method
