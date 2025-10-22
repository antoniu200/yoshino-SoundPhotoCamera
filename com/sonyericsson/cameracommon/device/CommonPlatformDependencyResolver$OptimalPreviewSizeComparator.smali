.class Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;
.super Ljava/lang/Object;
.source "CommonPlatformDependencyResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptimalPreviewSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTarget:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "target"    # Landroid/graphics/Rect;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    .line 289
    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 7
    .param p1, "r1"    # Landroid/graphics/Rect;
    .param p2, "r2"    # Landroid/graphics/Rect;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 298
    .local v0, "dist1":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->mTarget:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 299
    .local v1, "dist2":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 284
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$OptimalPreviewSizeComparator;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method
