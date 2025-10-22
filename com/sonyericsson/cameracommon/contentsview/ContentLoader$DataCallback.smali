.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/DataLoader$DataLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method


# virtual methods
.method public onDataLoaded(ZLcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;IZ)V
    .registers 8
    .param p1, "result"    # Z
    .param p2, "info"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .param p3, "requestId"    # I
    .param p4, "isRegister"    # Z

    .prologue
    .line 309
    if-eqz p1, :cond_17

    .line 310
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v0

    .line 311
    .local v0, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    if-eqz p4, :cond_d

    .line 312
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V
    invoke-static {v1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)V

    .line 316
    :cond_d
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object v1

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    invoke-static {v1, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    .line 321
    .end local v0    # "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    :goto_16
    return-void

    .line 318
    :cond_17
    const-string v1, "ContentLoader"

    const-string v2, "Loading data is failed."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$600(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    invoke-static {v1, p3, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    goto :goto_16
.end method
