.class public Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;
.super Ljava/lang/Object;
.source "RectangleTouchEventDispatcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RectangleTouchEventDispatcher"


# instance fields
.field private mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

.field private mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "rectangles":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/List;

    .line 43
    return-void
.end method

.method private updateTouchView(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Landroid/view/MotionEvent;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .registers 11
    .param p1, "faceList"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    if-nez p1, :cond_5

    .line 78
    const/4 v6, 0x0

    .line 97
    :goto_4
    return-object v6

    .line 81
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 82
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 84
    .local v5, "y":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    const/4 v6, 0x5

    if-ge v0, v6, :cond_3f

    .line 85
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_23

    .line 86
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v1

    .line 87
    .local v1, "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    if-nez v1, :cond_26

    .line 84
    .end local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 90
    .restart local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    :cond_26
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v6

    iget-object v7, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 92
    .local v3, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 93
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mRectangles:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .restart local v2    # "targetRect":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    goto :goto_23

    .end local v1    # "namedFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    .end local v3    # "viewRect":Landroid/graphics/Rect;
    :cond_3f
    move-object v6, v2

    .line 97
    goto :goto_4
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    if-eqz v2, :cond_31

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "rect":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 54
    .local v0, "action":I
    if-nez v0, :cond_13

    .line 55
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateTouchView(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Landroid/view/MotionEvent;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 57
    :cond_13
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-eqz v2, :cond_21

    .line 58
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "rect":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 60
    .restart local v1    # "rect":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    :cond_21
    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2a

    .line 62
    :cond_27
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mTargetRect:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 64
    :cond_2a
    if-eqz v1, :cond_31

    .line 65
    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 68
    .end local v0    # "action":I
    .end local v1    # "rect":Lcom/sonyericsson/cameracommon/focusview/Rectangle;
    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V
    .registers 2
    .param p1, "list"    # Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->mFacetList:Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    .line 47
    return-void
.end method
