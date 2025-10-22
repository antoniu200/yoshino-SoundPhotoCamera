.class public final Lcom/google/android/gms/tagmanager/zzbg;
.super Ljava/lang/Object;


# static fields
.field static zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

.field static zzaXD:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static getLogLevel()I
    .registers 1

    sget v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXD:I

    return v0
.end method

.method public static setLogLevel(I)V
    .registers 2
    .param p0, "logLevel"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->setLogLevel(I)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaF(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->zzaF(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaG(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->zzaG(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaH(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/zzbh;->zzaH(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzbh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbg;->zzaXC:Lcom/google/android/gms/tagmanager/zzbh;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/zzbh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
