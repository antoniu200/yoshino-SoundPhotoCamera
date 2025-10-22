.class Lcom/google/android/gms/tagmanager/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcd;


# instance fields
.field private final zzPk:J

.field private final zzPl:I

.field private zzPm:D

.field private final zzPo:Ljava/lang/Object;

.field private zzaYS:J


# direct methods
.method public constructor <init>()V
    .registers 5

    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPo:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPl:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPl:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPk:J

    return-void
.end method


# virtual methods
.method public zzkF()Z
    .registers 13

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPo:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPl:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2d

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzaYS:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPk:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_2d

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPl:I

    int-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    :cond_2d
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzaYS:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    cmpl-double v0, v2, v10

    if-ltz v0, :cond_3d

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcs;->zzPm:D

    const/4 v0, 0x1

    monitor-exit v1

    :goto_3c
    return v0

    :cond_3d
    const-string v0, "No more tokens available."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_3c

    :catchall_45
    move-exception v0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_45

    throw v0
.end method
