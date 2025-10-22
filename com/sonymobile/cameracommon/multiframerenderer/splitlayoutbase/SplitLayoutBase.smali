.class public abstract Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
.super Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;
.source "SplitLayoutBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/multiframerenderer/MultiFramePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;,
        Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    }
.end annotation


# static fields
.field protected static final CONTROLPOINT_Z_ORDER:F = 4.0E-5f

.field private static final DRAGGING_MODE_PARALLEL:I = 0x1

.field private static final DRAGGING_MODE_PIVOT:I = 0x2

.field private static final DRAGGING_MODE_UNKNOWN:I = 0x0

.field protected static final FRAMEID_CONTROLPOINT_0:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_0"

.field protected static final FRAMEID_CONTROLPOINT_1:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_1"

.field protected static final FRAMEID_CONTROLPOINT_2:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_2"

.field protected static final FRAMEID_CONTROLPOINT_3:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_3"

.field protected static final FRAMEID_CONTROLPOINT_4:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_4"

.field protected static final FRAMEID_CONTROLPOINT_5:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_5"

.field protected static final FRAMEID_CONTROLPOINT_6:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_6"

.field protected static final FRAMEID_CONTROLPOINT_7:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_7"

.field protected static final FRAMEID_CONTROLPOINT_8:Ljava/lang/String; = "FRAMEID_CONTROLPOINT_8"

.field protected static final FRAMEID_OVERLAY:Ljava/lang/String; = "FRAMEID_OVERLAY"

.field protected static final FRAMEID_VIDEO_OVERLAY:Ljava/lang/String; = "FRAMEID_VIDEO_OVERLAY"

.field protected static final OVERLAY_BITMAP_SCALE:F = 0.5f

.field protected static final OVERLAY_HIGHLIGHT_DEAULT_COLOR:I = -0x7f000001

.field protected static final OVERLAY_Z_ORDER:F = 2.0E-5f

.field protected static final PREVIEW_Z_ORDER:F = 0.0f

.field public static final TAG:Ljava/lang/String; = "SplitLayoutBase"

.field protected static final sControlPointFrameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mControlPointAlpha:F

.field private mControlPointBaseScaleX:F

.field private mControlPointBaseScaleY:F

.field private mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

.field private mControlPointResourceId:I

.field private mControlPointScale:F

.field private mDraggingMode:I

.field private mDraggingVertexIndex:I

.field private mIsAdjustingLayout:Z

.field private mIsEnabledOutline:Z

.field private mIsReady:Z

.field private mOutLinePaint:Landroid/graphics/Paint;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mOverlayCanvas:Landroid/graphics/Canvas;

.field private mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

.field private mPreviewFrameBaseFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewFrameBaseFactoryShader:I

.field private mSplitLinePaint:Landroid/graphics/Paint;

.field private mStreamFrameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOutLinePaint:Landroid/graphics/Paint;

.field private mVideoOverlayBitmap:Landroid/graphics/Bitmap;

.field private mVideoOverlayCanvas:Landroid/graphics/Canvas;

.field private mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

.field private mVideoSplitLinePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    const-string v1, "FRAMEID_CONTROLPOINT_8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    .line 133
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 138
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    .line 151
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    .line 158
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    .line 170
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    .line 171
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    .line 172
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    .line 173
    iput v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    .line 180
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 189
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;I)I
    .registers 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    return p1
.end method

.method private clearCanvasLines(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 734
    if-nez p1, :cond_3

    .line 740
    :goto_2
    return-void

    .line 739
    :cond_3
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method

.method private final drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 694
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getVertexArrayAsWindowCoord(Ljava/lang/String;)[Landroid/graphics/Point;

    move-result-object v3

    .line 695
    .local v3, "pointArray":[Landroid/graphics/Point;
    if-nez v3, :cond_d

    .line 720
    :goto_c
    return-void

    .line 700
    :cond_d
    array-length v6, v3

    move v4, v5

    :goto_f
    if-ge v4, v6, :cond_24

    aget-object v2, v3, v4

    .line 701
    .local v2, "point":Landroid/graphics/Point;
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v2, Landroid/graphics/Point;->x:I

    .line 702
    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v2, Landroid/graphics/Point;->y:I

    .line 700
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 706
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 707
    .local v0, "outSidepath":Landroid/graphics/Path;
    aget-object v4, v3, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, v3, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 708
    aget-object v4, v3, v8

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, v3, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 709
    aget-object v4, v3, v10

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, v3, v10

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 710
    aget-object v4, v3, v11

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v5, v3, v11

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 711
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 714
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 715
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 716
    const v4, -0x7f000001

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 717
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 719
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c
.end method

.method private final drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "splitLinePaint"    # Landroid/graphics/Paint;
    .param p3, "outLinePaint"    # Landroid/graphics/Paint;
    .param p4, "isEnabledOutline"    # Z

    .prologue
    .line 618
    const/high16 v6, 0x3f000000    # 0.5f

    .line 619
    .local v6, "bitmapScale":F
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v7

    .line 622
    .local v7, "layoutHelper":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V

    .line 624
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->updateExpandedVertexArray()V

    .line 627
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getMovableSegmentList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1c
    :goto_1c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;

    .line 628
    .local v9, "segment":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    iget v0, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex0:I

    .line 629
    invoke-virtual {v7, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getExpandedVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    .line 628
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v10

    .line 630
    .local v10, "winP0":Landroid/graphics/Point;
    iget v0, v9, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;->pointVertexIndex1:I

    .line 631
    invoke-virtual {v7, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getExpandedVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v0

    .line 630
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v11

    .line 632
    .local v11, "winP1":Landroid/graphics/Point;
    if-eqz v10, :cond_1c

    if-eqz v11, :cond_1c

    .line 636
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 643
    .end local v9    # "segment":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Segment;
    .end local v10    # "winP0":Landroid/graphics/Point;
    .end local v11    # "winP1":Landroid/graphics/Point;
    :cond_60
    if-eqz p4, :cond_106

    .line 644
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getRootAreaVertexArray()[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v8

    .line 645
    .local v8, "rootAreaVertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v10

    .line 646
    .restart local v10    # "winP0":Landroid/graphics/Point;
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v11

    .line 647
    .restart local v11    # "winP1":Landroid/graphics/Point;
    const/4 v0, 0x2

    aget-object v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v12

    .line 648
    .local v12, "winP2":Landroid/graphics/Point;
    const/4 v0, 0x3

    aget-object v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v13

    .line 649
    .local v13, "winP3":Landroid/graphics/Point;
    if-eqz v10, :cond_106

    if-eqz v11, :cond_106

    if-eqz v12, :cond_106

    if-eqz v13, :cond_106

    .line 650
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 655
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 660
    iget v0, v12, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 665
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v0

    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 671
    .end local v8    # "rootAreaVertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    .end local v10    # "winP0":Landroid/graphics/Point;
    .end local v11    # "winP1":Landroid/graphics/Point;
    .end local v12    # "winP2":Landroid/graphics/Point;
    .end local v13    # "winP3":Landroid/graphics/Point;
    :cond_106
    return-void
.end method

.method private needToMoveParallel(IFF)Z
    .registers 6
    .param p1, "movePointIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 1077
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    if-nez v1, :cond_11

    .line 1078
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->needToMoveParallel(IFF)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1079
    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 1085
    :cond_11
    :goto_11
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    if-ne v1, v0, :cond_1a

    .line 1088
    :goto_15
    return v0

    .line 1081
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    goto :goto_11

    .line 1088
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private renderControPoints(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .registers 10
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 879
    sget-object v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 880
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getVertex(I)Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v3

    .line 882
    .local v3, "vertex":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    mul-float v1, v4, v5

    .line 883
    .local v1, "scaleX":F
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    mul-float v2, v4, v5

    .line 885
    .local v2, "scaleY":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2, v4}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->scale(FFF)V

    .line 886
    iget v4, v3, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->x:F

    iget v5, v3, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;->y:F

    const v6, 0x3827c5ac    # 4.0E-5f

    invoke-virtual {p2, v4, v5, v6}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 887
    check-cast p2, Lcom/sonymobile/cameracommon/opengl/FrameBase;

    .end local p2    # "renderbase":Lcom/sonymobile/cameracommon/opengl/RenderBase;
    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    invoke-virtual {p2, v4}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->setAlpha(F)V

    .line 888
    return-void
.end method

.method private renderOverlay(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .registers 5
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    const/4 v1, 0x0

    .line 749
    const v0, 0x37a7c5ac    # 2.0E-5f

    invoke-virtual {p2, v1, v1, v0}, Lcom/sonymobile/cameracommon/opengl/RenderBase;->translate(FFF)V

    .line 750
    return-void
.end method

.method private setupControlPoint()V
    .registers 9

    .prologue
    .line 894
    new-instance v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    invoke-direct {v4, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;-><init>(I)V

    iput-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    .line 896
    sget-object v4, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 897
    .local v0, "frameId":Ljava/lang/String;
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    goto :goto_f

    .line 900
    .end local v0    # "frameId":Ljava/lang/String;
    :cond_23
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 901
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 904
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    .line 903
    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 908
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 909
    .local v2, "imageWidth":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 911
    .local v1, "imageHeight":I
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    .line 912
    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    .line 913
    return-void
.end method

.method private setupOverlay()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 756
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v0

    if-gtz v0, :cond_14

    .line 798
    :cond_13
    :goto_13
    return-void

    .line 760
    :cond_14
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 761
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 762
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 765
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 766
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 764
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 769
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 771
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-direct {v0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 773
    const-string v0, "FRAMEID_OVERLAY"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {p0, v0, v4, v1, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 780
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 781
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 782
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 785
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 786
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSurfaceHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 784
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    .line 789
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    .line 791
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-direct {v0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 793
    const-string v0, "FRAMEID_VIDEO_OVERLAY"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {p0, v0, v4, v1, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    goto/16 :goto_13
.end method


# virtual methods
.method public declared-synchronized addFrameId(Ljava/lang/String;)V
    .registers 5
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 199
    monitor-enter p0

    if-nez p1, :cond_5

    .line 225
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 203
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 212
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 217
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :goto_22
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 219
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->addFrame(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 224
    :cond_37
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    goto :goto_3

    .line 199
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    :cond_3e
    :try_start_3e
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    .line 215
    .restart local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_3b

    goto :goto_22
.end method

.method protected declared-synchronized clearLines()V
    .registers 2

    .prologue
    .line 726
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V

    .line 727
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->clearCanvasLines(Landroid/graphics/Canvas;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 728
    monitor-exit p0

    return-void

    .line 726
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected convertToPoint(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 964
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public declared-synchronized deleteFrameId(Ljava/lang/String;)V
    .registers 3
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_27

    move-result v0

    if-nez v0, :cond_b

    .line 245
    :goto_9
    monitor-exit p0

    return-void

    .line 235
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->deleteFrame(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 242
    :cond_20
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->unregisterFrameInfo(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_27

    goto :goto_9

    .line 230
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected disableFunctions()V
    .registers 1

    .prologue
    .line 265
    return-void
.end method

.method protected dragControlPoint(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1038
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1039
    .local v0, "coord":Landroid/graphics/PointF;
    if-nez v0, :cond_7

    .line 1054
    :goto_6
    return-void

    .line 1044
    :cond_7
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->needToMoveParallel(IFF)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1045
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->moveControlPointParallel(FF)V

    .line 1053
    :goto_1e
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    goto :goto_6

    .line 1048
    :cond_22
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->moveControlPointPivot(IFF)V

    goto :goto_1e
.end method

.method protected declared-synchronized drawHighlightFrame(Ljava/lang/String;)V
    .registers 4
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 679
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 680
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 682
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawHighlightFrameToCanvas(Ljava/lang/String;Landroid/graphics/Canvas;)V

    .line 683
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 684
    monitor-exit p0

    return-void

    .line 679
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized drawLines()V
    .registers 5

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v0, :cond_7

    .line 609
    :goto_5
    monitor-exit p0

    return-void

    .line 596
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 601
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 603
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLinesToCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 608
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->updateBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_5

    .line 592
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected enableFunctions()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method

.method public endAdjustLayout(Z)V
    .registers 3
    .param p1, "withTransition"    # Z

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 351
    return-void
.end method

.method protected finishDraggingControlPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1062
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->dragControlPoint(Landroid/graphics/Point;)V

    .line 1063
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    .line 1064
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingMode:I

    .line 1065
    return-void
.end method

.method public getFrameIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    return-object v0
.end method

.method protected getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 975
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 977
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected abstract getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;
.end method

.method protected getTexCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F
    .registers 24
    .param p1, "leftTop"    # Landroid/graphics/PointF;
    .param p2, "leftBottom"    # Landroid/graphics/PointF;
    .param p3, "rightTop"    # Landroid/graphics/PointF;
    .param p4, "rightBottom"    # Landroid/graphics/PointF;

    .prologue
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getNormalizedWidth()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v15, v16

    .line 463
    .local v8, "nw":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getNormalizedHeight()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    .line 465
    .local v7, "nh":F
    const/4 v15, 0x4

    new-array v10, v15, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    div-float v17, v17, v8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v18, v18, v7

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v16, v10, v15

    const/4 v15, 0x1

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    div-float v17, v17, v8

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v18, v18, v7

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v16, v10, v15

    const/4 v15, 0x2

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    div-float v17, v17, v8

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v18, v18, v7

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v16, v10, v15

    const/4 v15, 0x3

    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    div-float v17, v17, v8

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v18, v0

    div-float v18, v18, v7

    invoke-direct/range {v16 .. v18}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v16, v10, v15

    .line 472
    .local v10, "pointArray":[Landroid/graphics/PointF;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 473
    .local v6, "left":F
    const/4 v11, 0x1

    .line 474
    .local v11, "right":F
    const/4 v14, 0x1

    .line 475
    .local v14, "top":F
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 477
    .local v1, "bottom":F
    array-length v0, v10

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_7f
    move/from16 v0, v16

    if-ge v15, v0, :cond_b0

    aget-object v9, v10, v15

    .line 478
    .local v9, "point":Landroid/graphics/PointF;
    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    cmpg-float v17, v17, v6

    if-gez v17, :cond_8f

    .line 479
    iget v6, v9, Landroid/graphics/PointF;->x:F

    .line 481
    :cond_8f
    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-lez v17, :cond_99

    .line 482
    iget v11, v9, Landroid/graphics/PointF;->x:F

    .line 484
    :cond_99
    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    cmpl-float v17, v17, v14

    if-lez v17, :cond_a3

    .line 485
    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 487
    :cond_a3
    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    cmpg-float v17, v17, v1

    if-gez v17, :cond_ad

    .line 488
    iget v1, v9, Landroid/graphics/PointF;->y:F

    .line 477
    :cond_ad
    add-int/lit8 v15, v15, 0x1

    goto :goto_7f

    .line 492
    .end local v9    # "point":Landroid/graphics/PointF;
    :cond_b0
    sub-float v4, v11, v6

    .line 493
    .local v4, "dx":F
    sub-float v5, v14, v1

    .line 494
    .local v5, "dy":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v4, v15

    add-float v2, v15, v6

    .line 495
    .local v2, "cx":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    add-float v3, v15, v1

    .line 496
    .local v3, "cy":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 498
    .local v12, "size":F
    const/16 v15, 0x8

    new-array v13, v15, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, v16, v2

    div-float v16, v16, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    div-float v16, v16, v12

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x2

    const/16 v16, 0x1

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, v16, v2

    div-float v16, v16, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    div-float v16, v16, v12

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x4

    const/16 v16, 0x2

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, v16, v2

    div-float v16, v16, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x5

    const/16 v16, 0x2

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    div-float v16, v16, v12

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x6

    const/16 v16, 0x3

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v16, v16, v2

    div-float v16, v16, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    const/4 v15, 0x7

    const/16 v16, 0x3

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v16, v16, v3

    div-float v16, v16, v12

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    aput v16, v13, v15

    .line 508
    .local v13, "texCoord":[F
    return-object v13
.end method

.method protected getVertexArrayAsWindowCoord(Ljava/lang/String;)[Landroid/graphics/Point;
    .registers 13
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 990
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getAreaVertexArray(Ljava/lang/String;)[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v5

    .line 991
    .local v5, "vertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    if-nez v5, :cond_10

    .line 1011
    :cond_f
    :goto_f
    return-object v2

    .line 996
    :cond_10
    aget-object v6, v5, v7

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v1

    .line 997
    .local v1, "leftTop":Landroid/graphics/Point;
    aget-object v6, v5, v8

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v4

    .line 998
    .local v4, "rightTop":Landroid/graphics/Point;
    aget-object v6, v5, v9

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v3

    .line 999
    .local v3, "rightBottom":Landroid/graphics/Point;
    aget-object v6, v5, v10

    invoke-virtual {p0, v6}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    .line 1003
    .local v0, "leftBottom":Landroid/graphics/Point;
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    .line 1010
    const/4 v6, 0x4

    new-array v2, v6, [Landroid/graphics/Point;

    aput-object v1, v2, v7

    aput-object v4, v2, v8

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    .line 1011
    .local v2, "pointArray":[Landroid/graphics/Point;
    goto :goto_f
.end method

.method protected isAdjustingLayout()Z
    .registers 2

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    return v0
.end method

.method protected isDraggingControlPoint()Z
    .registers 3

    .prologue
    .line 1073
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    return v0
.end method

.method protected onObjectCoordTransformRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
    .registers 4
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "renderbase"    # Lcom/sonymobile/cameracommon/opengl/RenderBase;

    .prologue
    .line 269
    const-string v0, "FRAMEID_OVERLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "FRAMEID_VIDEO_OVERLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderOverlay(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 278
    :cond_13
    :goto_13
    return-void

    .line 274
    :cond_14
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->sControlPointFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderControPoints(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    goto :goto_13
.end method

.method protected onObjectVertexUpdateRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;)V
    .registers 4
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameBase"    # Lcom/sonymobile/cameracommon/opengl/FrameBase;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->renderPreview(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;F)V

    .line 285
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 255
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public onSurfaceChanged(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->onSurfaceChanged(II)V

    .line 291
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupSplitLayoutInstances()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 294
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V

    .line 295
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 296
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 356
    return-void
.end method

.method public releaseGlEglRelatedInstances()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 300
    iput-boolean v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsReady:Z

    .line 301
    monitor-enter p0

    .line 302
    :try_start_5
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 303
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;->release()V

    goto :goto_f

    .line 313
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :catchall_1f
    move-exception v3

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v3

    .line 305
    :cond_22
    :try_start_22
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 306
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2c

    .line 313
    .end local v1    # "id":Ljava/lang/String;
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_1f

    .line 314
    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    if-eqz v3, :cond_50

    .line 315
    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    invoke-static {v3}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 316
    iput v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryShader:I

    .line 319
    :cond_50
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->release()V

    .line 320
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 322
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 324
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 325
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 327
    :cond_6f
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 329
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;->release()V

    .line 330
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$ControlPointFrameBaseFactory;

    .line 332
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;->release()V

    .line 333
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayFrameBaseFactory:Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$OverlayFrameBaseFactory;

    .line 335
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayCanvas:Landroid/graphics/Canvas;

    .line 337
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_97

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_97

    .line 338
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    :cond_97
    iput-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOverlayBitmap:Landroid/graphics/Bitmap;

    .line 341
    return-void
.end method

.method protected renderPreview(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;F)V
    .registers 16
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameBase"    # Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .param p3, "zOrder"    # F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getAreaVertexArray(Ljava/lang/String;)[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;

    move-result-object v5

    .line 419
    .local v5, "vertexArray":[Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase$Vertex;
    if-nez v5, :cond_f

    .line 444
    :goto_e
    return-void

    .line 423
    :cond_f
    aget-object v1, v5, v8

    .line 424
    .local v1, "leftTop":Landroid/graphics/PointF;
    aget-object v3, v5, v9

    .line 425
    .local v3, "rightTop":Landroid/graphics/PointF;
    aget-object v2, v5, v10

    .line 426
    .local v2, "rightBottom":Landroid/graphics/PointF;
    aget-object v0, v5, v11

    .line 428
    .local v0, "leftBottom":Landroid/graphics/PointF;
    const/16 v6, 0xc

    new-array v6, v6, [F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    aput v7, v6, v8

    iget v7, v1, Landroid/graphics/PointF;->y:F

    aput v7, v6, v9

    aput p3, v6, v10

    iget v7, v0, Landroid/graphics/PointF;->x:F

    aput v7, v6, v11

    const/4 v7, 0x4

    iget v8, v0, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/4 v7, 0x5

    aput p3, v6, v7

    const/4 v7, 0x6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/16 v7, 0x8

    aput p3, v6, v7

    const/16 v7, 0x9

    iget v8, v2, Landroid/graphics/PointF;->x:F

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, v2, Landroid/graphics/PointF;->y:F

    aput v8, v6, v7

    const/16 v7, 0xb

    aput p3, v6, v7

    invoke-virtual {p2, v6}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateVertexBuffer([F)V

    .line 436
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getTexCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)[F

    move-result-object v4

    .line 438
    .local v4, "texCoord":[F
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->isMirroredFrameStruct(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 440
    invoke-virtual {p0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mirroringTextureCoordinate([F)[F

    move-result-object v4

    .line 443
    :cond_60
    invoke-virtual {p2, v4}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    goto :goto_e
.end method

.method public declared-synchronized replaceFrameId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_39

    move-result v2

    if-nez v2, :cond_b

    .line 1118
    :goto_9
    monitor-exit p0

    return-void

    .line 1101
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->replaceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1104
    .local v1, "index":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->unregisterFrameInfo(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1110
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    .line 1116
    .local v0, "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    :goto_30
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v0, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_39

    goto :goto_9

    .line 1095
    .end local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    .end local v1    # "index":I
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1112
    .restart local v1    # "index":I
    :cond_3c
    :try_start_3c
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$1;)V

    .line 1113
    .restart local v0    # "factory":Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase$PreviewFrameBaseFactory;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mPreviewFrameBaseFactoryMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_39

    goto :goto_30
.end method

.method protected setControlPointAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 860
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointAlpha:F

    .line 861
    return-void
.end method

.method public setControlPointResourceId(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 851
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointResourceId:I

    .line 852
    return-void
.end method

.method protected setControlPointScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 869
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointScale:F

    .line 870
    return-void
.end method

.method protected declared-synchronized setEnableDrawingOutline(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsEnabledOutline:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 552
    monitor-exit p0

    return-void

    .line 551
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 560
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 562
    monitor-exit p0

    return-void

    .line 560
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineColorForVideo(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 570
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 572
    monitor-exit p0

    return-void

    .line 570
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLineWidth(F)V
    .registers 6
    .param p1, "width"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 581
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    mul-float v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 582
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 584
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    mul-float v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 585
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoOutLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mVideoSplitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2d

    .line 586
    monitor-exit p0

    return-void

    .line 581
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setupSplitLayoutHelper()V
    .registers 5

    .prologue
    .line 380
    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleX:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mControlPointBaseScaleY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 381
    .local v1, "touchArea":F
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->setControlPointTouchRange(F)V

    .line 382
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->setLineTouchRange(F)V

    .line 384
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "frameId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->addFrame(Ljava/lang/String;)V

    goto :goto_1c

    .line 387
    .end local v0    # "frameId":Ljava/lang/String;
    :cond_30
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->drawLines()V

    .line 388
    return-void
.end method

.method protected setupSplitLayoutInstances()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupOverlay()V

    .line 372
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupControlPoint()V

    .line 373
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->setupSplitLayoutHelper()V

    .line 374
    return-void
.end method

.method public startAdjustLayout(Z)V
    .registers 3
    .param p1, "withTransition"    # Z

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mIsAdjustingLayout:Z

    .line 346
    return-void
.end method

.method protected startDraggingControlPoint(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getObjectCoordFromWindowCoord(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1023
    .local v0, "coord":Landroid/graphics/PointF;
    if-nez v0, :cond_7

    .line 1030
    :goto_6
    return-void

    .line 1028
    :cond_7
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->getSplitLayoutHelper()Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutHelperBase;->getControlPointIndex(FF)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mDraggingVertexIndex:I

    goto :goto_6
.end method

.method public swapSortOrder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "frameId0"    # Ljava/lang/String;
    .param p2, "frameId1"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "index0":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 362
    .local v1, "index1":I
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->mStreamFrameIdList:Ljava/util/List;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/splitlayoutbase/SplitLayoutBase;->updateSortOrder()V

    .line 365
    return-void
.end method

.method protected abstract updateSortOrder()V
.end method
