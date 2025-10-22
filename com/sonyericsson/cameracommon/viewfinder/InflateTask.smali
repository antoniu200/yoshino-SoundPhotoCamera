.class public Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;
.super Ljava/lang/Object;
.source "InflateTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
        "Ljava/util/List",
        "<",
        "Landroid/view/View;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InflateTask"


# instance fields
.field private final mInflateItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflatedItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .registers 4
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "inflateItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflateItemList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private register(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)V
    .registers 7
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "nonrmalInflatedviews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;->getViewCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 70
    :cond_1d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->begin()V

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflateItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;

    .line 55
    .local v0, "item":Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->register(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)V

    goto :goto_b

    .line 58
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;
    :cond_1b
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/cameracommon/utility/PerfLog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/PerfLog;->end()V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    return-object v1
.end method
