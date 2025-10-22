.class Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .registers 13
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "frameMetrics"    # Landroid/view/FrameMetrics;
    .param p3, "dropCountSinceLastInvocation"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_22

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v4

    const/16 v2, 0x8

    .line 354
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 353
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 356
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    .line 357
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v5

    .line 358
    invoke-virtual {p2, v5}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 361
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_58

    .line 362
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v6

    .line 363
    invoke-virtual {p2, v7}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 362
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 366
    :cond_58
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_73

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v7

    .line 368
    invoke-virtual {p2, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 367
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 370
    :cond_73
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8f

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    aget-object v1, v1, v8

    const/4 v2, 0x5

    .line 372
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 371
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 374
    :cond_8f
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_ac

    .line 375
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x7

    .line 376
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 375
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 379
    :cond_ac
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_c9

    .line 380
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x6

    .line 381
    invoke-virtual {p2, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 380
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 384
    :cond_c9
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e5

    .line 385
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v1, v1, v2

    .line 386
    invoke-virtual {p2, v4}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 385
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 389
    :cond_e5
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mTrackingFlags:I
    invoke-static {v0}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$100(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_102

    .line 390
    iget-object v0, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    iget-object v1, p0, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1;->this$0:Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    # getter for: Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->mMetrics:[Landroid/util/SparseIntArray;
    invoke-static {v1}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->access$200(Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;)[Landroid/util/SparseIntArray;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v1, v1, v2

    .line 391
    invoke-virtual {p2, v6}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 390
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FrameMetricsAggregator$FrameMetricsApi24Impl;->addDurationItem(Landroid/util/SparseIntArray;J)V

    .line 394
    :cond_102
    return-void
.end method
