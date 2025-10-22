.class public Lcom/sonyericsson/album/fastview/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# static fields
.field private static final sClassLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/album/fastview/ReflectionUtil;->sClassLoaderMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 6
    .param p0, "apkName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    const-class v3, Lcom/sonyericsson/album/fastview/ReflectionUtil;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/sonyericsson/album/fastview/ReflectionUtil;->sClassLoaderMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 41
    .local v0, "cl":Ldalvik/system/PathClassLoader;
    if-nez v0, :cond_1b

    .line 42
    new-instance v0, Ldalvik/system/PathClassLoader;

    .end local v0    # "cl":Ldalvik/system/PathClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 43
    .restart local v0    # "cl":Ldalvik/system/PathClassLoader;
    sget-object v2, Lcom/sonyericsson/album/fastview/ReflectionUtil;->sClassLoaderMap:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1b
    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    move-result-object v1

    .line 46
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-exit v3

    return-object v1

    .line 40
    .end local v0    # "cl":Ldalvik/system/PathClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    return-object v0
.end method
