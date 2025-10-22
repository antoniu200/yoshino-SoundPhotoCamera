.class public Lcom/google/android/gms/analytics/internal/zzr;
.super Ljava/lang/Object;


# instance fields
.field private final zzLf:Lcom/google/android/gms/analytics/internal/zzf;

.field private volatile zzNT:Ljava/lang/Boolean;

.field private zzNU:Ljava/lang/String;

.field private zzNV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzLf:Lcom/google/android/gms/analytics/internal/zzf;

    return-void
.end method


# virtual methods
.method public zzjA()Z
    .registers 2

    sget-boolean v0, Lcom/google/android/gms/common/internal/zzd;->zzaeK:Z

    return v0
.end method

.method public zzjB()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    if-nez v0, :cond_60

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzLf:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzLf:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzmy;->zzj(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_34

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_67

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_40
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    if-nez v0, :cond_5f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzLf:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziu()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbe(Ljava/lang/String;)V

    :cond_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_69

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_67
    const/4 v0, 0x0

    goto :goto_2e

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method

.method public zzjC()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOf:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zzjD()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOy:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjE()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOC:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjF()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOD:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjG()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOE:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjH()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOn:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjI()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOm:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjJ()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOq:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjK()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOr:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjL()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOs:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjM()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOt:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjN()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOG:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public zzjO()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOv:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzjP()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOu:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzjQ()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOw:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzjR()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOx:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zzjS()Lcom/google/android/gms/analytics/internal/zzm;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOz:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzm;->zzbj(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzjT()Lcom/google/android/gms/analytics/internal/zzo;
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOA:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzo;->zzbk(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public zzjU()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOF:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNV:Ljava/util/Set;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNU:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNU:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_18
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v4, :cond_37

    aget-object v5, v2, v1

    :try_start_29
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_34} :catch_3e

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_37
    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNU:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNV:Ljava/util/Set;

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzr;->zzNV:Ljava/util/Set;

    return-object v0

    :catch_3e
    move-exception v5

    goto :goto_34
.end method

.method public zzjV()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOO:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjW()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOP:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjX()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOS:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzjY()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOj:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzjZ()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOl:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzka()Ljava/lang/String;
    .registers 2

    const-string v0, "google_analytics_v4.db"

    return-object v0
.end method

.method public zzkb()Ljava/lang/String;
    .registers 2

    const-string v0, "google_analytics2_v4.db"

    return-object v0
.end method

.method public zzkc()J
    .registers 3

    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public zzkd()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOI:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzke()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOJ:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public zzkf()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOK:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzkg()J
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzy;->zzOT:Lcom/google/android/gms/analytics/internal/zzy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzy$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
