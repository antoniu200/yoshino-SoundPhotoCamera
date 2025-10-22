.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
.super Ljava/lang/Object;
.source "TakenStatusCommon.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TakenStatusCommon"


# instance fields
.field public final addToMediaStore:Z

.field public final cropValue:Ljava/lang/String;

.field public final doPostProcessing:Z

.field public final fileExtension:Ljava/lang/String;

.field public final height:I

.field public final location:Landroid/location/Location;

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCaptureIdForPredictiveCapture:I

.field protected mDateTaken:J

.field protected mExtraOutput:Landroid/net/Uri;

.field protected mFilePath:Ljava/lang/String;

.field protected mRequestId:I

.field protected mSaveTimeForPredictiveCapture:Ljava/lang/String;

.field protected mSomcType:I

.field public final mimeType:Ljava/lang/String;

.field public final orientation:I

.field public final savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

.field public final width:I


# direct methods
.method public constructor <init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 19
    .param p1, "dateTaken_in"    # J
    .param p3, "orientation_in"    # I
    .param p4, "location_in"    # Landroid/location/Location;
    .param p5, "width_in"    # I
    .param p6, "height_in"    # I
    .param p7, "mimeType_in"    # Ljava/lang/String;
    .param p8, "fileExtension_in"    # Ljava/lang/String;
    .param p9, "savedFileType_in"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "cropValue_in"    # Ljava/lang/String;
    .param p12, "addToMediaStore_in"    # Z
    .param p13, "doPostProcessing_in"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    .line 107
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 108
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 109
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 110
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    .line 111
    iput p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    .line 112
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 113
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    .line 114
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 115
    iput-object p10, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    .line 117
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .line 118
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V
    .registers 4
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    .line 127
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 128
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 129
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 130
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 131
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    .line 132
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    .line 133
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 136
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 138
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    .line 139
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .line 140
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    .line 141
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    .line 142
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Ljava/lang/String;J)V
    .registers 8
    .param p1, "data"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .param p2, "newFilePath"    # Ljava/lang/String;
    .param p3, "newDataTaken"    # J

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mSomcType:I

    .line 152
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 153
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 154
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 155
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 156
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    .line 157
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    .line 158
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    .line 160
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .line 161
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 163
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    .line 164
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .line 165
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    .line 166
    return-void
.end method


# virtual methods
.method public log()V
    .registers 1

    .prologue
    .line 187
    return-void
.end method
