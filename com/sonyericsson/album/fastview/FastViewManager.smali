.class public Lcom/sonyericsson/album/fastview/FastViewManager;
.super Ljava/lang/Object;
.source "FastViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FastViewManager"


# instance fields
.field private final mBitmapManagerClassInstance:Ljava/lang/Object;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mGetBitmapMethod:Ljava/lang/reflect/Method;

.field private mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

.field private mService:Lcom/sonyericsson/album/fastview/IFastViewService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/album/fastview/FastViewUnavailableException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v5, Lcom/sonyericsson/album/fastview/FastViewManager$1;

    invoke-direct {v5, p0}, Lcom/sonyericsson/album/fastview/FastViewManager$1;-><init>(Lcom/sonyericsson/album/fastview/FastViewManager;)V

    iput-object v5, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    .line 81
    :try_start_c
    const-string v5, "com.sonyericsson.album"

    invoke-static {p1, v5}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getApkPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "apkName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "classPath":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/album/fastview/ReflectionUtil;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 85
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getMethodName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "methodName":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/sonyericsson/album/fastview/ReflectionUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mGetBitmapMethod:Ljava/lang/reflect/Method;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mBitmapManagerClassInstance:Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_38

    .line 91
    return-void

    .line 88
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v1    # "classPath":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "methodName":Ljava/lang/String;
    :catch_38
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/sonyericsson/album/fastview/FastViewUnavailableException;

    invoke-direct {v5}, Lcom/sonyericsson/album/fastview/FastViewUnavailableException;-><init>()V

    throw v5
.end method

.method static synthetic access$002(Lcom/sonyericsson/album/fastview/FastViewManager;Lcom/sonyericsson/album/fastview/IFastViewService;)Lcom/sonyericsson/album/fastview/IFastViewService;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/album/fastview/FastViewManager;
    .param p1, "x1"    # Lcom/sonyericsson/album/fastview/IFastViewService;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/album/fastview/FastViewManager;)Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/album/fastview/FastViewManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    return-object v0
.end method

.method private getClassName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 178
    const-string v0, "com.sonyericsson.album"

    const-string v1, "com.sonyericsson.album.fastview.class"

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getMetadataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethodName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    const-string v0, "com.sonyericsson.album"

    const-string v1, "com.sonyericsson.album.fastview.method"

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/album/fastview/PackageManagerUtil;->getMetadataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cooldown()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    if-eqz v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 151
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    .line 152
    return-void
.end method

.method public getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "result":Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mGetBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mBitmapManagerClassInstance:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_1e

    move-result-object v1

    .line 170
    .end local v1    # "result":Ljava/lang/Object;
    :goto_14
    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1c

    move-object v0, v1

    .line 171
    check-cast v0, Landroid/graphics/Bitmap;

    .line 174
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b

    .line 166
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_1e
    move-exception v2

    goto :goto_14
.end method

.method public prepare(Landroid/net/Uri;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 140
    :cond_6
    :goto_6
    return-void

    .line 136
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mService:Lcom/sonyericsson/album/fastview/IFastViewService;

    invoke-interface {v1, p1}, Lcom/sonyericsson/album/fastview/IFastViewService;->prepare(Landroid/net/Uri;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    .line 137
    :catch_d
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FastViewManager"

    const-string v2, "Not in pre-warmed state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public prewarm()V
    .registers 5

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonyericsson.album"

    const-string v2, "com.sonyericsson.album.fastview.FastViewService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    return-void
.end method

.method public setOnPrewarmedListener(Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;)V
    .registers 2
    .param p1, "l"    # Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sonyericsson/album/fastview/FastViewManager;->mOnPrewarmedListener:Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;

    .line 118
    return-void
.end method
