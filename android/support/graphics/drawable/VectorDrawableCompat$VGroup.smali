.class Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1300
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1301
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1302
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1303
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1304
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1305
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1306
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1310
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1356
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
    .registers 11
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targetsMap":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    .line 1298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1300
    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1301
    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1302
    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1303
    iput v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1304
    iput v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1305
    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1306
    iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1310
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    .line 1313
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1316
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1317
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1318
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1319
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1320
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1321
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1322
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1323
    iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1324
    iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1325
    iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    .line 1326
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_5d

    .line 1327
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_5d
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v6, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1332
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1333
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b4

    .line 1334
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1335
    .local v1, "copyChild":Ljava/lang/Object;
    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v5, :cond_85

    move-object v2, v1

    .line 1336
    check-cast v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1337
    .local v2, "copyGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    new-instance v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v6, v2, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v2    # "copyGroup":Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    .line 1339
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_85
    const/4 v4, 0x0

    .line 1340
    .local v4, "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v5, :cond_a0

    .line 1341
    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .end local v4    # "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    .line 1347
    .restart local v4    # "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    :goto_91
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    if-eqz v5, :cond_82

    .line 1349
    iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 1342
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_a0
    instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v5, :cond_ac

    .line 1343
    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    .end local v4    # "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    .restart local v4    # "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    goto :goto_91

    .line 1345
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_ac
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1353
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v4    # "newPath":Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
    :cond_b4
    return-void
.end method

.method static synthetic access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "x0"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .prologue
    .line 1291
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private updateLocalMatrix()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1412
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1413
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1414
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1415
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1416
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1417
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1378
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I

    .line 1381
    const-string v1, "rotation"

    const/4 v2, 0x5

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1384
    const/4 v1, 0x1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1385
    const/4 v1, 0x2

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1388
    const-string v1, "scaleX"

    const/4 v2, 0x3

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1392
    const-string v1, "scaleY"

    const/4 v2, 0x4

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1395
    const-string v1, "translateX"

    const/4 v2, 0x6

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1397
    const-string v1, "translateY"

    const/4 v2, 0x7

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1400
    const/4 v1, 0x0

    .line 1401
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_55

    .line 1403
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    .line 1406
    :cond_55
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1407
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    .prologue
    .line 1435
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    .prologue
    .line 1448
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 1422
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .prologue
    .line 1461
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .prologue
    .line 1474
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    .prologue
    .line 1487
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    .prologue
    .line 1500
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1367
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    invoke-static {p1, p3, p2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1369
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1371
    return-void
.end method

.method public setPivotX(F)V
    .registers 3
    .param p1, "pivotX"    # F

    .prologue
    .line 1440
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1441
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F

    .line 1442
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1444
    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3
    .param p1, "pivotY"    # F

    .prologue
    .line 1453
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1454
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F

    .line 1455
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1457
    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3
    .param p1, "rotation"    # F

    .prologue
    .line 1427
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1428
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F

    .line 1429
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1431
    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3
    .param p1, "scaleX"    # F

    .prologue
    .line 1466
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1467
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F

    .line 1468
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1470
    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3
    .param p1, "scaleY"    # F

    .prologue
    .line 1479
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1480
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F

    .line 1481
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1483
    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3
    .param p1, "translateX"    # F

    .prologue
    .line 1492
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1493
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F

    .line 1494
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1496
    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3
    .param p1, "translateY"    # F

    .prologue
    .line 1505
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 1506
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F

    .line 1507
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V

    .line 1509
    :cond_b
    return-void
.end method
