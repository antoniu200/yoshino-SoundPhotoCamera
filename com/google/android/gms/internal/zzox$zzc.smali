.class public final Lcom/google/android/gms/internal/zzox$zzc;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry",
        "<",
        "Lcom/google/android/gms/internal/zzox$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public type:Ljava/lang/String;

.field public zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzox$zzc;->zzwh()Lcom/google/android/gms/internal/zzox$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzox$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zzox$zzc;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    if-nez v2, :cond_38

    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_2a
    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_36

    iget-object v2, p1, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_36
    move v0, v1

    goto :goto_5

    :cond_38
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    if-nez v0, :cond_30

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_2e
    :goto_2e
    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v1

    goto :goto_2e
.end method

.method protected zzB()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    array-length v1, v1

    if-lez v1, :cond_38

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    aget-object v2, v2, v0

    if-eqz v2, :cond_34

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_37
    move v0, v1

    :cond_38
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    array-length v0, v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    aget-object v1, v1, v0

    if-eqz v1, :cond_29

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2c
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzox$zzc;->zzs(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzox$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzs(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzox$zzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzox$zzc;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    goto :goto_1

    :sswitch_16
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    if-nez v0, :cond_42

    move v0, v1

    :goto_21
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzox$zzb;

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_46

    new-instance v3, Lcom/google/android/gms/internal/zzox$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzox$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    array-length v0, v0

    goto :goto_21

    :cond_46
    new-instance v3, Lcom/google/android/gms/internal/zzox$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzox$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    goto :goto_1

    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method public zzwh()Lcom/google/android/gms/internal/zzox$zzc;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->type:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzox$zzb;->zzwf()[Lcom/google/android/gms/internal/zzox$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzaDa:[Lcom/google/android/gms/internal/zzox$zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzox$zzc;->zzbiv:I

    return-object p0
.end method
