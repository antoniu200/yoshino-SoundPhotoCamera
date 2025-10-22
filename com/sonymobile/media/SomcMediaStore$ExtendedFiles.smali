.class public final Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;
.super Ljava/lang/Object;
.source "SomcMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/media/SomcMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedFiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles$ExtendedFileColumns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volume"    # Ljava/lang/String;
    .param p2, "rowId"    # J

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "volume"    # Ljava/lang/String;

    .prologue
    .line 34
    # invokes: Lcom/sonymobile/media/SomcMediaStore;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 4
    .param p0, "volume"    # Ljava/lang/String;
    .param p1, "rowId"    # J

    .prologue
    .line 38
    # invokes: Lcom/sonymobile/media/SomcMediaStore;->getContext()Landroid/content/Context;
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;
    .registers 7
    .param p0, "volume"    # Ljava/lang/String;
    .param p1, "rowId"    # J
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p3}, Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_e

    .line 62
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    :cond_e
    return-object v0
.end method

.method public static getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "volume"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_29

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_29

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://somcmedia/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/extended_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    :goto_28
    return-object v0

    .line 54
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/extended_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_28
.end method
