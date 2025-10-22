.class Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;
.super Ljava/lang/Object;
.source "PlatformDependencyResolver.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewSizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 5
    .param p1, "object1"    # Landroid/hardware/Camera$Size;
    .param p2, "object2"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 103
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 99
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/addoncamera/soundphoto/PlatformDependencyResolver$PreviewSizeComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
