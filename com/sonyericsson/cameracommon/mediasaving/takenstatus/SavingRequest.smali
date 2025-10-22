.class public abstract Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
.super Ljava/lang/Object;
.source "SavingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SavingRequest"


# instance fields
.field public final common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;I)V
    .registers 20
    .param p1, "orig"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p2, "orientation"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-wide v4, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v7, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v8, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v9, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v10, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v12, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v13, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v14, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v15, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v0, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    move/from16 v16, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object v3, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V
    .registers 2
    .param p1, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .line 44
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V
    .registers 6
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 81
    .local v0, "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .line 82
    .local v1, "registedCallback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    if-ne v1, p1, :cond_8

    .line 87
    .end local v0    # "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    .end local v1    # "registedCallback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    :goto_1c
    return-void

    .line 86
    :cond_1d
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c
.end method

.method public abstract createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public getCaptureIdForPredictiveCapture()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    return v0
.end method

.method public getDateTaken()J
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    return-wide v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    return v0
.end method

.method public getSaveTimeForPredictiveCapture()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    return-object v0
.end method

.method public getSomcType()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    return v0
.end method

.method public log()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->log()V

    .line 185
    return-void
.end method

.method public notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V
    .registers 7
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .prologue
    .line 156
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 157
    .local v2, "storeResult":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 158
    .local v1, "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .line 159
    .local v0, "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    if-nez v0, :cond_26

    .line 165
    .end local v0    # "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .end local v1    # "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    :cond_25
    return-void

    .line 163
    .restart local v0    # "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .restart local v1    # "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    :cond_26
    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_11
.end method

.method public notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .registers 6
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 173
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 174
    .local v1, "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .line 175
    .local v0, "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    if-nez v0, :cond_1d

    .line 180
    .end local v0    # "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .end local v1    # "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    :cond_1c
    return-void

    .line 178
    .restart local v0    # "callback":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .restart local v1    # "i":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;>;"
    :cond_1d
    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_8
.end method

.method public setCaptureIdForPredictiveCapture(I)V
    .registers 3
    .param p1, "captureIdForPredictiveCapture"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    .line 148
    return-void
.end method

.method public setDateTaken(J)V
    .registers 4
    .param p1, "dateTaken"    # J

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-wide p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 114
    return-void
.end method

.method public setExtraOutput(Landroid/net/Uri;)V
    .registers 3
    .param p1, "extraOutput"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    .line 123
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setRequestId(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 96
    return-void
.end method

.method public setSaveTimeForPredictiveCapture(Ljava/lang/String;)V
    .registers 3
    .param p1, "saveTimeForPredictiveCapture"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSaveTimeForPredictiveCapture:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSomcType(I)V
    .registers 3
    .param p1, "somcType"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iput p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    .line 132
    return-void
.end method
