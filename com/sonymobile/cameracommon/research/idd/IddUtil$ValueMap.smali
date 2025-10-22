.class Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueMap"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    .line 339
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    .line 346
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 347
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 349
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_36
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    return-object v0
.end method
