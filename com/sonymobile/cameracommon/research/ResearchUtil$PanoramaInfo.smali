.class Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaInfo"
.end annotation


# instance fields
.field private mSuccessNum:I

.field private mTryNum:I

.field private mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 178
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 179
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$1;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->sendPanoramaInfo()V

    return-void
.end method

.method private sendPanoramaInfo()V
    .registers 9

    .prologue
    .line 200
    iget v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    if-gtz v2, :cond_a

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    if-ne v2, v3, :cond_76

    .line 201
    :cond_a
    iget v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "tryNum":Ljava/lang/String;
    iget v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "succeessNum":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_try"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iget v5, v5, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->mValue:I

    int-to-long v6, v5

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/cameracommon/research/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 206
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_try"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iget v5, v5, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->mValue:I

    int-to-long v6, v5

    invoke-static {v2, v3, v4, v6, v7}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 210
    .end local v0    # "succeessNum":Ljava/lang/String;
    .end local v1    # "tryNum":Ljava/lang/String;
    :cond_76
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->clear()V

    .line 211
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 217
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 218
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    .line 219
    return-void
.end method

.method public setViewerLaunched()V
    .registers 2

    .prologue
    .line 196
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    .line 197
    return-void
.end method

.method public succeedInPanorama()V
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 191
    return-void
.end method

.method public tryPanorama()V
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 185
    return-void
.end method
