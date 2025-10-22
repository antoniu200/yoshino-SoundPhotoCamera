.class public Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;
.super Ljava/lang/Object;
.source "MpoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/MpoUtils$JpegMaker;
    }
.end annotation


# static fields
.field public static final MULTIANGLE:I = 0x2

.field public static final STEREO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MpoUtils"

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z
    .registers 6
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 174
    .local v0, "buff":[B
    array-length v3, v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_d

    .line 177
    :goto_c
    return v2

    :cond_d
    aget-byte v3, v0, v2

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_27

    aget-byte v3, v0, v1

    const/16 v4, 0x50

    if-ne v3, v4, :cond_27

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_27

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_27

    :goto_25
    move v2, v1

    goto :goto_c

    :cond_27
    move v1, v2

    goto :goto_25
.end method

.method static checkMPEntryTag(Ljava/io/RandomAccessFile;)Z
    .registers 4
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    .line 182
    .local v0, "buff":S
    const v1, 0xb002

    const v2, 0xffff

    and-int/2addr v2, v0

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static getType(Ljava/lang/String;)I
    .registers 20
    .param p0, "mpoPath"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v11, 0x0

    .line 42
    .local v11, "stream":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v16, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e8
    .catchall {:try_start_1 .. :try_end_c} :catchall_d8

    .line 44
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .local v14, "stream":Ljava/io/RandomAccessFile;
    const/16 v16, 0x2

    :try_start_e
    move/from16 v0, v16

    new-array v10, v0, [B

    .line 46
    .local v10, "marker":[B
    :cond_12
    :goto_12
    const/16 v16, 0x2

    invoke-virtual {v14, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_ce

    .line 52
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isSOI(BB)Z

    move-result v16

    if-nez v16, :cond_12

    .line 55
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isEOI(BB)Z

    move-result v16

    if-nez v16, :cond_12

    .line 58
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP(BB)Z

    move-result v16

    if-eqz v16, :cond_ce

    .line 62
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 63
    .local v2, "current":J
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v16

    move/from16 v0, v16

    int-to-long v8, v0

    .line 65
    .local v8, "length":J
    add-long v12, v2, v8

    .line 71
    .local v12, "nextMerker":J
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP2(BB)Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 72
    invoke-static {v14}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 76
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    .line 77
    .local v5, "endian":S
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 79
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v15

    .line 80
    .local v15, "tags":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_79
    if-ge v7, v15, :cond_a3

    .line 81
    invoke-static {v14}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkMPEntryTag(Ljava/io/RandomAccessFile;)Z

    move-result v16

    if-eqz v16, :cond_99

    .line 85
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 87
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    div-int/lit8 v6, v16, 0x10

    .line 88
    .local v6, "entries":I
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->typeFromEntries(I)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_91} :catch_a8
    .catchall {:try_start_e .. :try_end_91} :catchall_e5

    move-result v16

    .line 114
    if-eqz v14, :cond_97

    .line 116
    :try_start_94
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_df

    :cond_97
    :goto_97
    move-object v11, v14

    .line 123
    .end local v2    # "current":J
    .end local v5    # "endian":S
    .end local v6    # "entries":I
    .end local v7    # "i":I
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .end local v15    # "tags":I
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :goto_98
    return v16

    .line 94
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v2    # "current":J
    .restart local v5    # "endian":S
    .restart local v7    # "i":I
    .restart local v8    # "length":J
    .restart local v10    # "marker":[B
    .restart local v12    # "nextMerker":J
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v15    # "tags":I
    :cond_99
    const/16 v16, 0xa

    :try_start_9b
    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    .line 100
    .end local v5    # "endian":S
    .end local v7    # "i":I
    .end local v15    # "tags":I
    :cond_a3
    invoke-virtual {v14, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a6} :catch_a8
    .catchall {:try_start_9b .. :try_end_a6} :catchall_e5

    goto/16 :goto_12

    .line 108
    .end local v2    # "current":J
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    :catch_a8
    move-exception v4

    move-object v11, v14

    .line 110
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :goto_aa
    :try_start_aa
    const-string v16, "MpoUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to analize a mpo file by IO Exception. message:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 111
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 110
    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_d8

    .line 114
    if-eqz v11, :cond_cb

    .line 116
    :try_start_c8
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_e1

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_cb
    :goto_cb
    const/16 v16, 0x0

    goto :goto_98

    .line 114
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v10    # "marker":[B
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :cond_ce
    if-eqz v14, :cond_ea

    .line 116
    :try_start_d0
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d5

    move-object v11, v14

    .line 118
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_cb

    .line 117
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :catch_d5
    move-exception v16

    move-object v11, v14

    .line 118
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_cb

    .line 114
    .end local v10    # "marker":[B
    :catchall_d8
    move-exception v16

    :goto_d9
    if-eqz v11, :cond_de

    .line 116
    :try_start_db
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e3

    .line 118
    :cond_de
    :goto_de
    throw v16

    .line 117
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v2    # "current":J
    .restart local v5    # "endian":S
    .restart local v6    # "entries":I
    .restart local v7    # "i":I
    .restart local v8    # "length":J
    .restart local v10    # "marker":[B
    .restart local v12    # "nextMerker":J
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v15    # "tags":I
    :catch_df
    move-exception v17

    goto :goto_97

    .end local v2    # "current":J
    .end local v5    # "endian":S
    .end local v6    # "entries":I
    .end local v7    # "i":I
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .end local v15    # "tags":I
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :catch_e1
    move-exception v16

    goto :goto_cb

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_e3
    move-exception v17

    goto :goto_de

    .line 114
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :catchall_e5
    move-exception v16

    move-object v11, v14

    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_d9

    .line 108
    :catch_e8
    move-exception v4

    goto :goto_aa

    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v10    # "marker":[B
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :cond_ea
    move-object v11, v14

    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_cb
.end method

.method static isAPP(BB)Z
    .registers 3
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 145
    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    const/16 v0, -0x20

    if-lt p1, v0, :cond_d

    const/16 v0, -0x11

    if-gt p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static isAPP2(BB)Z
    .registers 3
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 151
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 v0, -0x1e

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isEOI(BB)Z
    .registers 3
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 141
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 v0, -0x27

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isSOI(BB)Z
    .registers 3
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 137
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    const/16 v0, -0x28

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static skip(Ljava/io/RandomAccessFile;I)V
    .registers 3
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 187
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 189
    :cond_c
    return-void
.end method

.method static typeFromEntries(I)I
    .registers 3
    .param p0, "entries"    # I

    .prologue
    const/4 v0, 0x2

    .line 155
    if-ne p0, v0, :cond_5

    .line 158
    const/4 v0, 0x1

    .line 168
    :cond_4
    :goto_4
    return v0

    .line 160
    :cond_5
    const/16 v1, 0xf

    if-eq p0, v1, :cond_4

    .line 168
    const/4 v0, 0x0

    goto :goto_4
.end method
