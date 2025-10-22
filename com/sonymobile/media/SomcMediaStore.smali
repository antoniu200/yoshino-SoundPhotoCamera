.class public final Lcom/sonymobile/media/SomcMediaStore;
.super Ljava/lang/Object;
.source "SomcMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/media/SomcMediaStore$ExtendedFiles;
    }
.end annotation


# static fields
.field public static final AUTHORITY_NEW:Ljava/lang/String; = "somcmedia"

.field public static final AUTHORITY_NEW_VERSION:I = 0x190

.field public static final AUTHORITY_OLD:Ljava/lang/String; = "media"

.field public static final EXTERNAL_VOLUME:Ljava/lang/String; = "external"

.field private static versionCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/media/SomcMediaStore;->versionCache:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .registers 5

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, "context":Landroid/content/Context;
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 236
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    move-object v1, v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    .line 239
    :goto_1c
    return-object v1

    .line 237
    :catch_1d
    move-exception v2

    goto :goto_1c
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v0, Lcom/sonymobile/media/SomcMediaStore;->versionCache:Ljava/lang/String;

    .line 165
    .local v0, "version":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 166
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersionNew(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_14

    .line 168
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersionOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-nez v0, :cond_14

    .line 170
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersionTooOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_14
    sput-object v0, Lcom/sonymobile/media/SomcMediaStore;->versionCache:Ljava/lang/String;

    .line 175
    :cond_16
    return-object v0
.end method

.method private static getVersionNew(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 215
    const/4 v6, 0x0

    .line 217
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://somcmedia/none/version"

    .line 218
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 221
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_2e
    .catchall {:try_start_2 .. :try_end_20} :catchall_35

    move-result-object v0

    .line 225
    if-eqz v6, :cond_26

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_26
    :goto_26
    return-object v0

    .line 225
    :cond_27
    if-eqz v6, :cond_2c

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2c
    :goto_2c
    move-object v0, v7

    .line 229
    goto :goto_26

    .line 223
    :catch_2e
    move-exception v0

    .line 225
    if-eqz v6, :cond_2c

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 225
    :catchall_35
    move-exception v0

    if-eqz v6, :cond_3b

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_3b
    throw v0
.end method

.method private static getVersionOld(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 197
    const/4 v6, 0x0

    .line 199
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/extended_version"

    .line 200
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "key=\'version\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 203
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_36
    .catchall {:try_start_2 .. :try_end_28} :catchall_3d

    move-result-object v0

    .line 207
    if-eqz v6, :cond_2e

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_2e
    :goto_2e
    return-object v0

    .line 207
    :cond_2f
    if-eqz v6, :cond_34

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    move-object v0, v7

    .line 211
    goto :goto_2e

    .line 205
    :catch_36
    move-exception v0

    .line 207
    if-eqz v6, :cond_34

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 207
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_43
    throw v0
.end method

.method private static getVersionTooOld(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 179
    const/4 v6, 0x0

    .line 181
    .local v6, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/internal/extended_version"

    .line 182
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 181
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 184
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 185
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_35
    .catchall {:try_start_2 .. :try_end_27} :catchall_3c

    move-result-object v0

    .line 189
    if-eqz v6, :cond_2d

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_2d
    :goto_2d
    return-object v0

    .line 189
    :cond_2e
    if-eqz v6, :cond_33

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_33
    :goto_33
    move-object v0, v7

    .line 193
    goto :goto_2d

    .line 187
    :catch_35
    move-exception v0

    .line 189
    if-eqz v6, :cond_33

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 189
    :catchall_3c
    move-exception v0

    if-eqz v6, :cond_42

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_42
    throw v0
.end method

.method public static makeMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcUri"    # Landroid/net/Uri;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/sonymobile/media/SomcMediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonymobile/media/SomcMediaStore;->makeMediaStoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static makeMediaStoreUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "srcUri"    # Landroid/net/Uri;

    .prologue
    .line 127
    invoke-static {}, Lcom/sonymobile/media/SomcMediaStore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/media/SomcMediaStore;->makeMediaStoreUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static makeMediaStoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8
    .param p0, "srcUri"    # Landroid/net/Uri;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "dstUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, "segs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_13

    .line 145
    const/4 v3, 0x0

    .line 157
    :goto_12
    return-object v3

    .line 147
    :cond_13
    if-eqz p1, :cond_55

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_55

    .line 148
    const-string v3, "somcmedia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "extended_file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 149
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extended_file"

    const-string v5, "file"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "somcmedia"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_53
    :goto_53
    move-object v3, v1

    .line 157
    goto :goto_12

    .line 153
    :cond_55
    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "extended_file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 154
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extended_file"

    const-string v5, "file"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_53
.end method
