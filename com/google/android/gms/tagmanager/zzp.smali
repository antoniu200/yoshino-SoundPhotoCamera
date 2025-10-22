.class public Lcom/google/android/gms/tagmanager/zzp;
.super Lcom/google/android/gms/internal/zzlc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzp$zzd;,
        Lcom/google/android/gms/tagmanager/zzp$zzc;,
        Lcom/google/android/gms/tagmanager/zzp$zzb;,
        Lcom/google/android/gms/tagmanager/zzp$zza;,
        Lcom/google/android/gms/tagmanager/zzp$zze;,
        Lcom/google/android/gms/tagmanager/zzp$zzf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlc",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaVQ:Ljava/lang/String;

.field private zzaVV:J

.field private final zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

.field private final zzaWf:Lcom/google/android/gms/tagmanager/zzp$zzd;

.field private final zzaWg:Lcom/google/android/gms/tagmanager/zzcd;

.field private final zzaWh:I

.field private zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

.field private zzaWj:Lcom/google/android/gms/internal/zzra;

.field private volatile zzaWk:Lcom/google/android/gms/tagmanager/zzo;

.field private volatile zzaWl:Z

.field private zzaWm:Lcom/google/android/gms/internal/zzaf$zzj;

.field private zzaWn:Ljava/lang/String;

.field private zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

.field private zzaWp:Lcom/google/android/gms/tagmanager/zzp$zza;

.field private final zzaaO:Landroid/os/Looper;

.field private final zzpW:Lcom/google/android/gms/internal/zzmn;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/tagmanager/zzcd;)V
    .registers 13

    if-nez p3, :cond_44

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlc;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    if-nez p3, :cond_13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaaO:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVQ:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWh:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWj:Lcom/google/android/gms/internal/zzra;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWf:Lcom/google/android/gms/tagmanager/zzp$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWm:Lcom/google/android/gms/internal/zzaf$zzj;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzpW:Lcom/google/android/gms/internal/zzmn;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWg:Lcom/google/android/gms/tagmanager/zzcd;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzCB()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzDm()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzDo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzeE(Ljava/lang/String;)V

    :cond_43
    return-void

    :cond_44
    move-object v0, p3

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzs;)V
    .registers 21

    new-instance v13, Lcom/google/android/gms/tagmanager/zzcn;

    move-object/from16 v0, p4

    invoke-direct {v13, p1, v0}, Lcom/google/android/gms/tagmanager/zzcn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/zzcm;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V

    new-instance v11, Lcom/google/android/gms/internal/zzra;

    invoke-direct {v11, p1}, Lcom/google/android/gms/internal/zzra;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzmp;->zzqt()Lcom/google/android/gms/internal/zzmn;

    move-result-object v12

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbe;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lcom/google/android/gms/internal/zzmp;->zzqt()Lcom/google/android/gms/internal/zzmn;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/zzbe;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/zzmn;)V

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v13

    move-object v13, v2

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/tagmanager/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/zzp$zzf;Lcom/google/android/gms/tagmanager/zzp$zze;Lcom/google/android/gms/internal/zzra;Lcom/google/android/gms/internal/zzmn;Lcom/google/android/gms/tagmanager/zzcd;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWj:Lcom/google/android/gms/internal/zzra;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/zzs;->zzCE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzra;->zzfm(Ljava/lang/String;)V

    return-void
.end method

.method private zzCB()Z
    .registers 4

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->zzDm()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzDn()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzaXZ:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-eq v1, v2, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->zzDn()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzaYa:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-ne v1, v2, :cond_22

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVQ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private declared-synchronized zzU(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-nez v0, :cond_c

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWm:Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaf$zzj;->zziS:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    goto :goto_a

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzcd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWg:Lcom/google/android/gms/tagmanager/zzcd;

    return-object v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaf$zzj;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/google/android/gms/internal/zzqz$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqz$zza;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVV:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzqz$zza;->zzbai:J

    new-instance v1, Lcom/google/android/gms/internal/zzaf$zzf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzaf$zzf;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzqz$zza;->zziR:Lcom/google/android/gms/internal/zzaf$zzf;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzqz$zza;->zzbaj:Lcom/google/android/gms/internal/zzaf$zzj;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzb(Lcom/google/android/gms/internal/zzqz$zza;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzaf$zzj;JZ)V
    .registers 13

    const-wide/32 v6, 0x2932e00

    monitor-enter p0

    if-eqz p4, :cond_c

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWl:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_6a

    if-eqz v0, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    if-nez v0, :cond_16

    :cond_16
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWm:Lcom/google/android/gms/internal/zzaf$zzj;

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVV:J

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x2932e00

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVV:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/gms/tagmanager/zzp;->zzpW:Lcom/google/android/gms/internal/zzmn;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzmn;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzU(J)V

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVQ:Ljava/lang/String;

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzaf$zzj;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    if-nez v1, :cond_6d

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaaO:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWf:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    :goto_56
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWp:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzp$zza;->zzb(Lcom/google/android/gms/tagmanager/Container;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_6a

    goto :goto_a

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_6a

    goto :goto_56
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzp;->zzU(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaf$zzj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaf$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaf$zzj;JZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/internal/zzaf$zzj;JZ)V

    return-void
.end method

.method private zzar(Z)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzb;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zza(Lcom/google/android/gms/tagmanager/zzbf;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$zzc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zza(Lcom/google/android/gms/tagmanager/zzbf;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWh:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzjs(I)Lcom/google/android/gms/internal/zzrb$zzc;

    move-result-object v6

    if-eqz v6, :cond_3d

    new-instance v7, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v9, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaaO:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVQ:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzrb$zzc;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWf:Lcom/google/android/gms/tagmanager/zzp$zzd;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    :cond_3d
    new-instance v0, Lcom/google/android/gms/tagmanager/zzp$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzp$3;-><init>(Lcom/google/android/gms/tagmanager/zzp;Z)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWp:Lcom/google/android/gms/tagmanager/zzp$zza;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzCB()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzf(JLjava/lang/String;)V

    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzCD()V

    goto :goto_51
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzmn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzpW:Lcom/google/android/gms/internal/zzmn;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzp;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWl:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaf$zzj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWm:Lcom/google/android/gms/internal/zzaf$zzj;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/tagmanager/zzp;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVV:J

    return-wide v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/tagmanager/zzp;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp;->zzCB()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public zzCA()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzar(Z)V

    return-void
.end method

.method declared-synchronized zzCv()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWn:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zzCy()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWh:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzp$zzf;->zzjs(I)Lcom/google/android/gms/internal/zzrb$zzc;

    move-result-object v6

    if-eqz v6, :cond_32

    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaVQ:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzrb$zzc;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWc:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaaO:Landroid/os/Looper;

    new-instance v4, Lcom/google/android/gms/tagmanager/zzp$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/zzp$2;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    :goto_2d
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    iput-object v7, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWi:Lcom/google/android/gms/tagmanager/zzp$zzf;

    return-void

    :cond_32
    const-string v0, "Default was requested, but no default container was found"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_2d
.end method

.method public zzCz()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzp;->zzar(Z)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    return-object v0
.end method

.method protected zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWk:Lcom/google/android/gms/tagmanager/zzo;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzabe:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_10

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->e(Ljava/lang/String;)V

    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_6
.end method

.method declared-synchronized zzeE(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp;->zzaWo:Lcom/google/android/gms/tagmanager/zzp$zze;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp$zze;->zzeH(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
