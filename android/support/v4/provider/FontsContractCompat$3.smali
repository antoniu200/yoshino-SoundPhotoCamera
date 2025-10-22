.class final Landroid/support/v4/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/graphics/Typeface;)V
    .registers 7
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 265
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 266
    :try_start_5
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 267
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2e

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 270
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 268
    .end local v0    # "i":I
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .line 272
    .restart local v0    # "i":I
    .restart local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<Landroid/graphics/Typeface;>;>;"
    :cond_31
    return-void
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 261
    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$3;->onReply(Landroid/graphics/Typeface;)V

    return-void
.end method
