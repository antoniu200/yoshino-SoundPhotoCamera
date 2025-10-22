.class public Lcom/google/android/gms/appdatasearch/DocumentContents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appdatasearch/DocumentContents$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/zzb;


# instance fields
.field public final account:Landroid/accounts/Account;

.field final mVersionCode:I

.field final zzPX:[Lcom/google/android/gms/appdatasearch/DocumentSection;

.field public final zzPY:Ljava/lang/String;

.field public final zzPZ:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V
    .registers 6
    .param p1, "versionCode"    # I
    .param p2, "sectionContents"    # [Lcom/google/android/gms/appdatasearch/DocumentSection;
    .param p3, "schemaOrgType"    # Ljava/lang/String;
    .param p4, "globalSearchEnabled"    # Z
    .param p5, "account"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzPX:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzPY:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzPZ:Z

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->account:Landroid/accounts/Account;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/appdatasearch/DocumentSection;)V
    .registers 11
    .param p1, "schemaOrgType"    # Ljava/lang/String;
    .param p2, "globalSearchEnabled"    # Z
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "sections"    # [Lcom/google/android/gms/appdatasearch/DocumentSection;

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/DocumentContents;-><init>(I[Lcom/google/android/gms/appdatasearch/DocumentSection;Ljava/lang/String;ZLandroid/accounts/Account;)V

    new-instance v1, Ljava/util/BitSet;

    invoke-static {}, Lcom/google/android/gms/appdatasearch/zzh;->zzls()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_13
    array-length v2, p4

    if-ge v0, v2, :cond_46

    aget-object v2, p4, v0

    iget v2, v2, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzQl:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_43

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate global search section type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/appdatasearch/zzh;->zzak(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/appdatasearch/DocumentContents;->CREATOR:Lcom/google/android/gms/appdatasearch/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/zzb;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbw(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzPX:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzPX:[Lcom/google/android/gms/appdatasearch/DocumentSection;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v4, :cond_8

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzlp()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object v0, v1

    goto :goto_8

    :cond_20
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e
.end method

.method public zzln()Ljava/lang/String;
    .registers 2

    const-string v0, "web_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzQj:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
