.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_c

    .line 388
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 384
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    goto :goto_4

    .line 386
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_4

    .line 382
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_a

    .line 400
    :goto_3
    return-void

    .line 394
    :pswitch_4
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    goto :goto_3

    .line 397
    :pswitch_7
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_3

    .line 392
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 7
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 327
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_13

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    .line 333
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_13
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 347
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_13

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    .line 353
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_13
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 16
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "type"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 278
    invoke-direct {p0, p5}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 279
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_f

    .line 313
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_e
    :goto_e
    return v8

    .line 283
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_f
    if-nez p1, :cond_13

    if-eqz p2, :cond_58

    .line 284
    :cond_13
    const/4 v6, 0x0

    .line 285
    .local v6, "startX":I
    const/4 v7, 0x0

    .line 286
    .local v7, "startY":I
    if-eqz p4, :cond_20

    .line 287
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v6, p4, v8

    .line 289
    aget v7, p4, v9

    .line 292
    :cond_20
    if-nez p3, :cond_2d

    .line 293
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v1, :cond_2b

    .line 294
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 296
    :cond_2b
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 298
    :cond_2d
    aput v8, p3, v8

    .line 299
    aput v8, p3, v9

    .line 300
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-eqz p4, :cond_4b

    .line 303
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget v1, p4, v8

    sub-int/2addr v1, v6

    aput v1, p4, v8

    .line 305
    aget v1, p4, v9

    sub-int/2addr v1, v7

    aput v1, p4, v9

    .line 307
    :cond_4b
    aget v1, p3, v8

    if-nez v1, :cond_53

    aget v1, p3, v9

    if-eqz v1, :cond_56

    :cond_53
    move v1, v9

    :goto_54
    move v8, v1

    goto :goto_e

    :cond_56
    move v1, v8

    goto :goto_54

    .line 308
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    :cond_58
    if-eqz p4, :cond_e

    .line 309
    aput v8, p4, v8

    .line 310
    aput v8, p4, v9

    goto :goto_e
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 13
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 16
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "type"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 220
    invoke-direct {p0, p6}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_e

    .line 222
    const/4 v1, 0x0

    .line 249
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_d
    return v1

    .line 225
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_e
    if-nez p1, :cond_16

    if-nez p2, :cond_16

    if-nez p3, :cond_16

    if-eqz p4, :cond_44

    .line 226
    :cond_16
    const/4 v7, 0x0

    .line 227
    .local v7, "startX":I
    const/4 v8, 0x0

    .line 228
    .local v8, "startY":I
    if-eqz p5, :cond_25

    .line 229
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    const/4 v1, 0x0

    aget v7, p5, v1

    .line 231
    const/4 v1, 0x1

    aget v8, p5, v1

    .line 234
    :cond_25
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-eqz p5, :cond_42

    .line 238
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    const/4 v1, 0x0

    aget v2, p5, v1

    sub-int/2addr v2, v7

    aput v2, p5, v1

    .line 240
    const/4 v1, 0x1

    aget v2, p5, v1

    sub-int/2addr v2, v8

    aput v2, p5, v1

    .line 242
    :cond_42
    const/4 v1, 0x1

    goto :goto_d

    .line 243
    .end local v7    # "startX":I
    .end local v8    # "startY":I
    :cond_44
    if-eqz p5, :cond_4e

    .line 245
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 246
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 249
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_4e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 366
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 72
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 73
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 7
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p0, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    :goto_7
    return v2

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 149
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 150
    .local v1, "p":Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 151
    .local v0, "child":Landroid/view/View;
    :goto_16
    if-eqz v1, :cond_35

    .line 152
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 153
    invoke-direct {p0, p2, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_7

    .line 157
    :cond_29
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_30

    move-object v0, v1

    .line 158
    check-cast v0, Landroid/view/View;

    .line 160
    :cond_30
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_16

    .line 163
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_35
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 175
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    .line 187
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 190
    :cond_f
    return-void
.end method
