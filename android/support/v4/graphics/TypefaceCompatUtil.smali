.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 157
    if-eqz p0, :cond_5

    .line 159
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 163
    :cond_5
    :goto_5
    return-void

    .line 160
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "tmpFile":Ljava/io/File;
    if-nez v0, :cond_8

    .line 118
    :goto_7
    return-object v1

    .line 113
    :cond_8
    :try_start_8
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1a

    move-result v2

    if-nez v2, :cond_12

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    .line 116
    :cond_12
    :try_start_12
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 150
    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result v1

    .line 152
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_d
    move-exception v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_48
    .catchall {:try_start_2 .. :try_end_8} :catchall_40

    .line 129
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_a
    new-array v0, v6, [B

    .line 131
    .local v0, "buffer":[B
    :goto_c
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "readLen":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3a

    .line 132
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_45

    goto :goto_c

    .line 135
    .end local v0    # "buffer":[B
    .end local v4    # "readLen":I
    :catch_18
    move-exception v1

    move-object v2, v3

    .line 136
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1a
    :try_start_1a
    const-string v6, "TypefaceCompatUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error copying resource contents to temp file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_40

    .line 139
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_39
    return v5

    .line 134
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "readLen":I
    :cond_3a
    const/4 v5, 0x1

    .line 139
    invoke-static {v3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_39

    .end local v0    # "buffer":[B
    .end local v4    # "readLen":I
    :catchall_40
    move-exception v5

    :goto_41
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_45
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_41

    .line 135
    :catch_48
    move-exception v1

    goto :goto_1a
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".font"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    const/16 v3, 0x64

    if-ge v1, v3, :cond_55

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_51

    move-result v3

    if-eqz v3, :cond_52

    .line 70
    .end local v0    # "file":Ljava/io/File;
    :goto_50
    return-object v0

    .line 66
    .restart local v0    # "file":Ljava/io/File;
    :catch_51
    move-exception v3

    .line 60
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 70
    .end local v0    # "file":Ljava/io/File;
    :cond_55
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 93
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "r"

    invoke-virtual {v9, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_47

    move-result-object v8

    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    .line 94
    :try_start_b
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_39
    .catchall {:try_start_b .. :try_end_14} :catchall_4e

    .line 93
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 95
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 96
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 97
    .local v4, "size":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_24} :catch_5a
    .catchall {:try_start_15 .. :try_end_24} :catchall_7a

    move-result-object v1

    .line 98
    if-eqz v7, :cond_2c

    if-eqz v10, :cond_4a

    :try_start_29
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_34
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4e

    :cond_2c
    :goto_2c
    if-eqz v8, :cond_33

    if-eqz v11, :cond_56

    :try_start_30
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_51
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_47

    .line 99
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_33
    :goto_33
    return-object v1

    .line 98
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_34
    move-exception v2

    :try_start_35
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_4e

    goto :goto_2c

    .line 93
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_39
    move-exception v1

    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 98
    :catchall_3b
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_3f
    if-eqz v8, :cond_46

    if-eqz v2, :cond_76

    :try_start_43
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_71
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    :try_start_46
    throw v1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_47} :catch_47

    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_47
    move-exception v6

    .line 99
    .local v6, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_33

    .line 98
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4a
    :try_start_4a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_39
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_2c

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_4e
    move-exception v1

    move-object v2, v11

    goto :goto_3f

    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_51
    move-exception v2

    :try_start_52
    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_56
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_47

    goto :goto_33

    .line 93
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :catch_5a
    move-exception v1

    :try_start_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 98
    :catchall_5c
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_60
    if-eqz v7, :cond_67

    if-eqz v2, :cond_6d

    :try_start_64
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_4e

    :cond_67
    :goto_67
    :try_start_67
    throw v1

    :catch_68
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_67

    :cond_6d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_70} :catch_39
    .catchall {:try_start_67 .. :try_end_70} :catchall_4e

    goto :goto_67

    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_71
    move-exception v3

    :try_start_72
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_46

    :cond_76
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_47

    goto :goto_46

    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_7a
    move-exception v1

    move-object v2, v10

    goto :goto_60
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 12
    .param p0, "file"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 78
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_24

    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 79
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 80
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 81
    .local v4, "size":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_2b
    .catchall {:try_start_7 .. :try_end_16} :catchall_42

    move-result-object v1

    .line 82
    if-eqz v7, :cond_1e

    if-eqz v8, :cond_27

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    .line 83
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :cond_1e
    :goto_1e
    return-object v1

    .line 82
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_24
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v1, v8

    .line 83
    goto :goto_1e

    .line 82
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_27
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_24

    goto :goto_1e

    .line 78
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :catch_2b
    move-exception v1

    :try_start_2c
    throw v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 82
    :catchall_2d
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_31
    if-eqz v7, :cond_38

    if-eqz v2, :cond_3e

    :try_start_35
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_24

    :cond_38
    :goto_38
    :try_start_38
    throw v1

    :catch_39
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_3e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_41} :catch_24

    goto :goto_38

    :catchall_42
    move-exception v1

    move-object v2, v8

    goto :goto_31
.end method
