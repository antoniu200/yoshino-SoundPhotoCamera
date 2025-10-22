.class public final Landroid/support/v4/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;,
        Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/LocaleListInterface;

.field private static final sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    .line 170
    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    .line 174
    :goto_14
    return-void

    .line 172
    :cond_15
    new-instance v0, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat$LocaleListCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    goto :goto_14
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;
    .registers 2
    .param p0, "localeList"    # [Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 206
    .local v0, "instance":Landroid/support/v4/os/LocaleListCompat;
    invoke-direct {v0, p0}, Landroid/support/v4/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    .line 207
    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroid/support/v4/os/LocaleListCompat;
    .registers 7
    .param p0, "list"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 288
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 289
    :cond_8
    invoke-static {}, Landroid/support/v4/os/LocaleListCompat;->getEmptyLocaleList()Landroid/support/v4/os/LocaleListCompat;

    move-result-object v1

    .line 300
    :goto_c
    return-object v1

    .line 291
    :cond_d
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "tags":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Ljava/util/Locale;

    .line 293
    .local v2, "localeArray":[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v4, v2

    if-ge v0, v4, :cond_32

    .line 294
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2b

    aget-object v4, v3, v0

    .line 295
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 296
    :goto_26
    aput-object v4, v2, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 295
    :cond_2b
    aget-object v4, v3, v0

    .line 296
    invoke-static {v4}, Landroid/support/v4/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    goto :goto_26

    .line 298
    :cond_32
    new-instance v1, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v1}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 299
    .local v1, "instance":Landroid/support/v4/os/LocaleListCompat;
    invoke-direct {v1, v2}, Landroid/support/v4/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    goto :goto_c
.end method

.method public static getAdjustedDefault()Landroid/support/v4/os/LocaleListCompat;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 311
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    .line 313
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    goto :goto_e
.end method

.method public static getDefault()Landroid/support/v4/os/LocaleListCompat;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    .line 331
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    .line 333
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/support/v4/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroid/support/v4/os/LocaleListCompat;

    move-result-object v0

    goto :goto_e
.end method

.method public static getEmptyLocaleList()Landroid/support/v4/os/LocaleListCompat;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 275
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->sEmptyLocaleList:Landroid/support/v4/os/LocaleListCompat;

    return-object v0
.end method

.method private setLocaleList(Landroid/os/LocaleList;)V
    .registers 6
    .param p1, "localeList"    # Landroid/os/LocaleList;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 355
    .local v2, "localeListSize":I
    if-lez v2, :cond_19

    .line 356
    new-array v1, v2, [Ljava/util/Locale;

    .line 357
    .local v1, "localeArrayList":[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_14

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 360
    :cond_14
    sget-object v3, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v3, v1}, Landroid/support/v4/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    .line 362
    .end local v0    # "i":I
    .end local v1    # "localeArrayList":[Ljava/util/Locale;
    :cond_19
    return-void
.end method

.method private varargs setLocaleListArray([Ljava/util/Locale;)V
    .registers 3
    .param p1, "localeArrayList"    # [Ljava/util/Locale;

    .prologue
    .line 365
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    .line 366
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroid/support/v4/os/LocaleListCompat;
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 183
    new-instance v0, Landroid/support/v4/os/LocaleListCompat;

    invoke-direct {v0}, Landroid/support/v4/os/LocaleListCompat;-><init>()V

    .line 184
    .local v0, "instance":Landroid/support/v4/os/LocaleListCompat;
    instance-of v1, p0, Landroid/os/LocaleList;

    if-eqz v1, :cond_e

    .line 185
    check-cast p0, Landroid/os/LocaleList;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-direct {v0, p0}, Landroid/support/v4/os/LocaleListCompat;->setLocaleList(Landroid/os/LocaleList;)V

    .line 188
    :cond_e
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 339
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 217
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;

    .prologue
    .line 267
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 344
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/IntRange;
        from = -0x1L
    .end annotation

    .prologue
    .line 248
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0, p1}, Landroid/support/v4/os/LocaleListInterface;->indexOf(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 227
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 235
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 256
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    sget-object v0, Landroid/support/v4/os/LocaleListCompat;->IMPL:Landroid/support/v4/os/LocaleListInterface;

    invoke-interface {v0}, Landroid/support/v4/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
