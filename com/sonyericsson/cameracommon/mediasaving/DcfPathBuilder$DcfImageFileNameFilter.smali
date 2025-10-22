.class Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcfImageFileNameFilter"
.end annotation


# instance fields
.field private mFilterFileNo:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$1;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;

    .prologue
    .line 152
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_28

    .line 159
    const/4 v2, 0x4

    const/16 v5, 0x8

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "id":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    if-lt v1, v2, :cond_28

    .line 161
    if-gt v3, v1, :cond_28

    const/16 v2, 0x270f

    if-gt v1, v2, :cond_28

    .line 162
    iput v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_23} :catch_25

    move v2, v3

    .line 170
    .end local v1    # "id":I
    :goto_24
    return v2

    .line 167
    :catch_25
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, v4

    .line 168
    goto :goto_24

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_28
    move v2, v4

    .line 170
    goto :goto_24
.end method
