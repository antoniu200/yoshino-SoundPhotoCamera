.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
.super Ljava/lang/Object;
.source "StorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    }
.end annotation


# static fields
.field private static mMethodGetVolumes:Ljava/lang/reflect/Method;

.field private static mStorageTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mStorageTypeInverseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;",
            ">;"
        }
    .end annotation
.end field

.field private static mStorageTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 25
    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mMethodGetVolumes:Ljava/lang/reflect/Method;

    .line 27
    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    .line 28
    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    .line 29
    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeInverseMap:Ljava/util/HashMap;

    .line 32
    const-class v2, Landroid/os/storage/StorageManager;

    .line 36
    .local v2, "storageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_c
    const-string v4, "getVolumes"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mMethodGetVolumes:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_17} :catch_6b

    .line 43
    :try_start_17
    const-string v4, "android.os.storage.StorageManager$StorageType"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    .line 46
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_75

    .line 47
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_2f
    if-ge v6, v8, :cond_75

    aget-object v3, v7, v6

    .line 48
    .local v3, "value":Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    move-result-object v9

    array-length v10, v9

    move v4, v5

    :goto_39
    if-ge v4, v10, :cond_67

    aget-object v1, v9, v4

    .line 49
    .local v1, "key":Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_72

    .line 50
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    if-nez v4, :cond_5d

    .line 51
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeInverseMap:Ljava/util/HashMap;

    .line 54
    :cond_5d
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeInverseMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_67} :catch_96

    .line 47
    .end local v1    # "key":Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    :cond_67
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2f

    .line 37
    .end local v3    # "value":Ljava/lang/Object;
    :catch_6b
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 48
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "key":Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 61
    .end local v1    # "key":Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_75
    :try_start_75
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    if-eqz v4, :cond_8e

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_97

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    move-result-object v5

    array-length v5, v5

    if-eq v4, v5, :cond_97

    .line 63
    :cond_8e
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Support StorageType is not expected"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_96
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_96} :catch_96

    .line 65
    :catch_96
    move-exception v4

    .line 68
    :cond_97
    return-void
.end method

.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .registers 2
    .param p1, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 85
    return-void
.end method

.method public static createProxy(Landroid/os/storage/StorageManager;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
    .registers 2
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;-><init>(Landroid/os/storage/StorageManager;)V

    return-object v0
.end method


# virtual methods
.method public getVolumes()Ljava/util/List;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mMethodGetVolumes:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_d} :catch_15

    return-object v1

    .line 90
    :catch_e
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_15
    move-exception v0

    goto :goto_f
.end method
