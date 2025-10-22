.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
.super Landroid/os/Handler;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderHander"
.end annotation


# static fields
.field private static final NOTIFY_CONTENT_CREATED:I = 0x1

.field private static final NOTIFY_NO_CONTENT_LOADED:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    return-void
.end method

.method private notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "content"    # Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .prologue
    .line 279
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_11

    .line 281
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    :goto_b
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 287
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void

    .line 284
    :cond_11
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_b
.end method

.method private removeAllMessages()V
    .registers 2

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    .line 293
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 252
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_2c

    .line 272
    :goto_5
    return-void

    .line 257
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 258
    .local v1, "requestId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 260
    .local v0, "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:I

    # invokes: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;I)V

    .line 262
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    goto :goto_5

    .line 266
    .end local v0    # "content":Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .end local v1    # "requestId":I
    :pswitch_21
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    # getter for: Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$400(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onNoContentLoaded()V

    goto :goto_5

    .line 252
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_6
    .end packed-switch
.end method
