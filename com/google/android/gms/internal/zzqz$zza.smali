.class public final Lcom/google/android/gms/internal/zzqz$zza;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzqz$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbai:J

.field public zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

.field public zziR:Lcom/google/android/gms/internal/zzaf$zzf;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqz$zza;->zzDY()Lcom/google/android/gms/internal/zzqz$zza;

    return-void
.end method

.method public static zzw([B)Lcom/google/android/gms/internal/zzqz$zza;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzsd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzqz$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqz$zza;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzse;[B)Lcom/google/android/gms/internal/zzse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqz$zza;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zzqz$zza;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzqz$zza;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v2, :cond_5

    :cond_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v2, :cond_49

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v2, :cond_5

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_54

    :cond_30
    iget-object v2, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3c
    move v0, v1

    goto :goto_5

    :cond_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaf$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_5

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaf$zzj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_22
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_42

    move v0, v1

    :goto_2a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_39
    :goto_39
    add-int/2addr v0, v1

    return v0

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzf;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf$zzj;->hashCode()I

    move-result v0

    goto :goto_2a

    :cond_49
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_39
.end method

.method protected zzB()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v1, :cond_24

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    return v0
.end method

.method public zzDY()Lcom/google/android/gms/internal/zzqz$zza;
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbiv:I

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-eqz v0, :cond_1a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_1a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqz$zza;->zzz(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzqz$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzz(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzqz$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzqz$zza;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    goto :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    if-nez v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto :goto_0

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_26
    .end sparse-switch
.end method
