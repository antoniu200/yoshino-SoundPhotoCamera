.class Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreTask"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 384
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mOperations:Ljava/util/List;

    .line 385
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mAuthority:Ljava/lang/String;

    .line 386
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mAuthority:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;->mOperations:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_b} :catch_c

    .line 406
    :goto_b
    return-void

    .line 400
    :catch_c
    move-exception v0

    goto :goto_b

    .line 397
    :catch_e
    move-exception v0

    goto :goto_b
.end method
