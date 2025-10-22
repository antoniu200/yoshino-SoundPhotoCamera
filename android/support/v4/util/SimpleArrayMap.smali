.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 235
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 237
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 239
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 244
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    if-nez p1, :cond_11

    .line 246
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 247
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 251
    :goto_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 252
    return-void

    .line 249
    :cond_11
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    goto :goto_d
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 259
    if-eqz p1, :cond_8

    .line 260
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 262
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7
    .param p1, "size"    # I

    .prologue
    .line 164
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3f

    .line 165
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 166
    :try_start_7
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_30

    .line 167
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 168
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 169
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 170
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 171
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 172
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 175
    monitor-exit v2

    .line 196
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_2f
    return-void

    .line 177
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3c

    .line 194
    :cond_31
    :goto_31
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 195
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_2f

    .line 177
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1

    .line 178
    :cond_3f
    const/4 v1, 0x4

    if-ne p1, v1, :cond_31

    .line 179
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 180
    :try_start_45
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_71

    .line 181
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 182
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 183
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 184
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 185
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 186
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 189
    monitor-exit v2

    goto :goto_2f

    .line 191
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_6e
    move-exception v1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_45 .. :try_end_70} :catchall_6e

    throw v1

    :cond_71
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6e

    goto :goto_31
.end method

.method private static binarySearchHashes([III)I
    .registers 5
    .param p0, "hashes"    # [I
    .param p1, "N"    # I
    .param p2, "hash"    # I

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 77
    :catch_5
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 200
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    .line 201
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 202
    :try_start_b
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_2b

    .line 203
    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 204
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 205
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1b
    if-lt v0, v4, :cond_23

    .line 206
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 208
    :cond_23
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 213
    .end local v0    # "i":I
    :cond_2b
    monitor-exit v2

    .line 229
    :cond_2c
    :goto_2c
    return-void

    .line 213
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v1

    .line 214
    :cond_30
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    .line 215
    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 216
    :try_start_37
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_57

    .line 217
    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 218
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 219
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_47
    if-lt v0, v4, :cond_4f

    .line 220
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 219
    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    .line 222
    :cond_4f
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 223
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 227
    .end local v0    # "i":I
    :cond_57
    monitor-exit v2

    goto :goto_2c

    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_59

    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 268
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_18

    .line 269
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 270
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 271
    .local v0, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 272
    .local v2, "osize":I
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 273
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 274
    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 275
    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 277
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    .end local v2    # "osize":I
    :cond_18
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_22

    .line 278
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 280
    :cond_22
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 310
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 350
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ensureCapacity(I)V
    .registers 8
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 287
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 288
    .local v2, "osize":I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v3, v3

    if-ge v3, p1, :cond_22

    .line 289
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 290
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 291
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 292
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v3, :cond_1f

    .line 293
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_1f
    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 298
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_22
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v3, v2, :cond_2c

    .line 299
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 301
    :cond_2c
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 589
    if-ne p0, p1, :cond_5

    .line 643
    :cond_4
    :goto_4
    return v7

    .line 592
    :cond_5
    instance-of v9, p1, Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v9, :cond_46

    move-object v3, p1

    .line 593
    check-cast v3, Landroid/support/v4/util/SimpleArrayMap;

    .line 594
    .local v3, "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v9

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v10

    if-eq v9, v10, :cond_18

    move v7, v8

    .line 595
    goto :goto_4

    .line 599
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    :try_start_19
    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v0, v9, :cond_4

    .line 600
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 601
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 602
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 603
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_35

    .line 604
    if-nez v6, :cond_33

    invoke-virtual {v3, v2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    :cond_33
    move v7, v8

    .line 605
    goto :goto_4

    .line 607
    :cond_35
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_38} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_38} :catch_43

    move-result v9

    if-nez v9, :cond_3d

    move v7, v8

    .line 608
    goto :goto_4

    .line 599
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 611
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_40
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v7, v8

    .line 612
    goto :goto_4

    .line 613
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_43
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v7, v8

    .line 614
    goto :goto_4

    .line 617
    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<**>;"
    :cond_46
    instance-of v9, p1, Ljava/util/Map;

    if-eqz v9, :cond_88

    move-object v4, p1

    .line 618
    check-cast v4, Ljava/util/Map;

    .line 619
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v10

    if-eq v9, v10, :cond_59

    move v7, v8

    .line 620
    goto :goto_4

    .line 624
    :cond_59
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5a
    :try_start_5a
    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v0, v9, :cond_4

    .line 625
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 626
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 627
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 628
    .restart local v6    # "theirs":Ljava/lang/Object;
    if-nez v5, :cond_76

    .line 629
    if-nez v6, :cond_74

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7e

    :cond_74
    move v7, v8

    .line 630
    goto :goto_4

    .line 632
    :cond_76
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_5a .. :try_end_79} :catch_81
    .catch Ljava/lang/ClassCastException; {:try_start_5a .. :try_end_79} :catch_84

    move-result v9

    if-nez v9, :cond_7e

    move v7, v8

    .line 633
    goto :goto_4

    .line 624
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 636
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_81
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v7, v8

    .line 637
    goto :goto_4

    .line 638
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_84
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v7, v8

    .line 639
    goto/16 :goto_4

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_88
    move v7, v8

    .line 643
    goto/16 :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 361
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 10

    .prologue
    .line 651
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 652
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 653
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 654
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .local v4, "s":I
    :goto_9
    if-ge v2, v4, :cond_1e

    .line 655
    aget-object v6, v0, v5

    .line 656
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_19

    const/4 v7, 0x0

    :goto_12
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 654
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    .line 656
    :cond_19
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_12

    .line 658
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1e
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 87
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 90
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 91
    const/4 v3, -0x1

    .line 121
    :cond_5
    :goto_5
    return v3

    .line 94
    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    .line 97
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 102
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 108
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1c
    if-ge v1, v0, :cond_35

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_35

    .line 109
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v3, v1

    goto :goto_5

    .line 108
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 113
    :cond_35
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_37
    if-ltz v2, :cond_50

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_50

    .line 114
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    move v3, v2

    goto :goto_5

    .line 113
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 121
    :cond_50
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 320
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method indexOfNull()I
    .registers 7

    .prologue
    .line 125
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 128
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 129
    const/4 v3, -0x1

    .line 159
    :cond_5
    :goto_5
    return v3

    .line 132
    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v3

    .line 135
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 140
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_5

    .line 146
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_19
    if-ge v1, v0, :cond_2e

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2e

    .line 147
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2b

    move v3, v1

    goto :goto_5

    .line 146
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 151
    :cond_2e
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_30
    if-ltz v2, :cond_45

    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_45

    .line 152
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_42

    move v3, v2

    goto :goto_5

    .line 151
    :cond_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 159
    :cond_45
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 324
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 325
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 326
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_15

    .line 327
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_26

    .line 328
    aget-object v3, v1, v2

    if-nez v3, :cond_12

    .line 329
    shr-int/lit8 v3, v2, 0x1

    .line 339
    :goto_11
    return v3

    .line 327
    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 333
    .end local v2    # "i":I
    :cond_15
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_16
    if-ge v2, v0, :cond_26

    .line 334
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 335
    shr-int/lit8 v3, v2, 0x1

    goto :goto_11

    .line 333
    :cond_23
    add-int/lit8 v2, v2, 0x2

    goto :goto_16

    .line 339
    :cond_26
    const/4 v3, -0x1

    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 399
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v7, 0x4

    const/4 v9, 0x0

    .line 411
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 414
    .local v6, "osize":I
    if-nez p1, :cond_1c

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .line 421
    .local v1, "index":I
    :goto_d
    if-ltz v1, :cond_25

    .line 422
    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v1, v7, 0x1

    .line 423
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v7, v1

    .line 424
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 469
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_1b
    return-object v5

    .line 418
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 419
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_d

    .line 428
    :cond_25
    xor-int/lit8 v1, v1, -0x1

    .line 429
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-lt v6, v8, :cond_5b

    .line 430
    if-lt v6, v2, :cond_43

    shr-int/lit8 v7, v6, 0x1

    add-int v2, v6, v7

    .line 435
    .local v2, "n":I
    :cond_32
    :goto_32
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 436
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 437
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 439
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v6, v7, :cond_47

    .line 440
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 430
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_43
    if-ge v6, v7, :cond_32

    move v2, v7

    goto :goto_32

    .line 443
    .restart local v2    # "n":I
    .restart local v3    # "oarray":[Ljava/lang/Object;
    .restart local v4    # "ohashes":[I
    :cond_47
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_58

    .line 445
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v8, v3

    invoke-static {v3, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_58
    invoke-static {v4, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 452
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_5b
    if-ge v1, v6, :cond_7a

    .line 455
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v9, v1, 0x1

    sub-int v10, v6, v1

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    shl-int/lit8 v10, v10, 0x1

    iget v11, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_7a
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v6, v7, :cond_83

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v1, v7, :cond_89

    .line 461
    :cond_83
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 465
    :cond_89
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v0, v7, v1

    .line 466
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    aput-object p1, v7, v8

    .line 467
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    aput-object p2, v7, v8

    .line 468
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 469
    const/4 v5, 0x0

    goto/16 :goto_1b
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 477
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 478
    .local v0, "N":I
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 479
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_22

    .line 480
    if-lez v0, :cond_21

    .line 481
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 490
    :cond_21
    return-void

    .line 486
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_21

    .line 487
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_23
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 500
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 501
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 504
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v11, 0x0

    const/16 v0, 0x8

    const/4 v8, 0x0

    .line 513
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v4, v6, v7

    .line 514
    .local v4, "old":Ljava/lang/Object;
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 516
    .local v5, "osize":I
    const/4 v6, 0x1

    if-gt v5, v6, :cond_2b

    .line 519
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 520
    sget-object v6, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 521
    sget-object v6, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 522
    const/4 v1, 0x0

    .line 565
    .local v1, "nsize":I
    :cond_21
    :goto_21
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v5, v6, :cond_a9

    .line 566
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 524
    .end local v1    # "nsize":I
    :cond_2b
    add-int/lit8 v1, v5, -0x1

    .line 525
    .restart local v1    # "nsize":I
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-le v6, v0, :cond_7b

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_7b

    .line 529
    if-le v5, v0, :cond_41

    shr-int/lit8 v6, v5, 0x1

    add-int v0, v5, v6

    .line 533
    .local v0, "n":I
    :cond_41
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 534
    .local v3, "ohashes":[I
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 535
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 537
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eq v5, v6, :cond_52

    .line 538
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 541
    :cond_52
    if-lez p1, :cond_60

    .line 543
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v3, v8, v6, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    :cond_60
    if-ge p1, v1, :cond_21

    .line 549
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    sub-int v8, v1, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, p1, 0x1

    sub-int v9, v1, p1

    shl-int/lit8 v9, v9, 0x1

    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 554
    .end local v0    # "n":I
    .end local v2    # "oarray":[Ljava/lang/Object;
    .end local v3    # "ohashes":[I
    :cond_7b
    if-ge p1, v1, :cond_99

    .line 557
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    sub-int v9, v1, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_99
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object v11, v6, v7

    .line 562
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object v11, v6, v7

    goto/16 :goto_21

    .line 568
    :cond_a9
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 569
    return-object v4
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 390
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 391
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 392
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 576
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 670
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 671
    const-string v4, "{}"

    .line 695
    :goto_8
    return-object v4

    .line 674
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v4, :cond_49

    .line 677
    if-lez v1, :cond_23

    .line 678
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 681
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_3d

    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 686
    :goto_2c
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 688
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_43

    .line 689
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 676
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 684
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3d
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 691
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_43
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 694
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_49
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
