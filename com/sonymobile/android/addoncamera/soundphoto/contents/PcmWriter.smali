.class public Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;
.super Ljava/lang/Object;
.source "PcmWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFileWriter:Ljava/io/RandomAccessFile;

.field private mPayloadBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SSI)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "channels"    # S
    .param p3, "bitsPerSample"    # S
    .param p4, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mPayloadBytes:I

    .line 36
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    .line 37
    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->init(SSI)V

    .line 38
    return-void
.end method

.method private close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mPayloadBytes:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mPayloadBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 90
    return-void
.end method

.method private init(SSI)V
    .registers 9
    .param p1, "channels"    # S
    .param p2, "bitsPerSample"    # S
    .param p3, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-string v1, "RIFF"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-string v1, "WAVE"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-string v1, "fmt "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 69
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    mul-int v1, p3, p2

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    mul-int v1, p1, p2

    div-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public release()V
    .registers 4

    .prologue
    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 46
    :goto_3
    return-void

    .line 43
    :catch_4
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->TAG:Ljava/lang/String;

    const-string v2, "release() failed: "

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public writeSampleData([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mFileWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 51
    iget v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mPayloadBytes:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/contents/PcmWriter;->mPayloadBytes:I

    .line 52
    return-void
.end method
