.class Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonStringBuilder"
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    .line 365
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string v1, "type"

    new-instance v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v2, p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string v1, "mode"

    new-instance v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    # getter for: Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mView:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    const-string v1, "launched_by"

    new-instance v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    # getter for: Lcom/sonymobile/cameracommon/research/idd/IddUtil;->mLaunchedBy:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-void
.end method

.method private write(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;)V
    .registers 6
    .param p1, "writer"    # Landroid/util/JsonWriter;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "map"    # Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 411
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 412
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 416
    :goto_16
    return-void

    .line 414
    :cond_17
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_16
.end method

.method private write(Landroid/util/JsonWriter;Ljava/util/Map;)V
    .registers 7
    .param p1, "writer"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;>;"
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 401
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 402
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;)V

    goto :goto_b

    .line 404
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;>;"
    :cond_27
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 405
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .registers 5

    .prologue
    .line 381
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 382
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 385
    .local v1, "writer":Landroid/util/JsonWriter;
    :try_start_a
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->write(Landroid/util/JsonWriter;Ljava/util/Map;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_1c
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    move-result-object v2

    .line 391
    :try_start_18
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_28

    .line 396
    :goto_1b
    return-object v2

    .line 388
    :catch_1c
    move-exception v2

    .line 391
    :try_start_1d
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2a

    .line 396
    :goto_20
    const-string v2, ""

    goto :goto_1b

    .line 390
    :catchall_23
    move-exception v2

    .line 391
    :try_start_24
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2c

    .line 394
    :goto_27
    throw v2

    .line 392
    :catch_28
    move-exception v3

    goto :goto_1b

    :catch_2a
    move-exception v2

    goto :goto_20

    :catch_2c
    move-exception v3

    goto :goto_27
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/util/Map;)Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;"
        }
    .end annotation

    .prologue
    .line 376
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$JsonStringBuilder;->mMap:Ljava/util/Map;

    new-instance v1, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-direct {v1, p2}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-object p0
.end method
