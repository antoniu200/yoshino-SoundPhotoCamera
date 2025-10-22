.class Lcom/google/android/gms/analytics/AnalyticsService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/AnalyticsService$1;->zzc(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/AnalyticsService$1;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->zzLn:Lcom/google/android/gms/analytics/AnalyticsService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget v1, v1, Lcom/google/android/gms/analytics/AnalyticsService$1;->zzLk:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->zzLl:Lcom/google/android/gms/analytics/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziv()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjA()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->zzLm:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string v1, "Device AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzba(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService$1$1;->zzLo:Lcom/google/android/gms/analytics/AnalyticsService$1;

    iget-object v0, v0, Lcom/google/android/gms/analytics/AnalyticsService$1;->zzLm:Lcom/google/android/gms/analytics/internal/zzaf;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/zzaf;->zzba(Ljava/lang/String;)V

    goto :goto_25
.end method
