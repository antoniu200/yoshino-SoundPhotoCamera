.class Lcom/google/android/gms/tagmanager/zzp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzo$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzp;->zzCy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaWq:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$2;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzCv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$2;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzCv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzCx()V
    .registers 2

    const-string v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzaH(Ljava/lang/String;)V

    return-void
.end method

.method public zzeE(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$2;->zzaWq:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->zzeE(Ljava/lang/String;)V

    return-void
.end method
