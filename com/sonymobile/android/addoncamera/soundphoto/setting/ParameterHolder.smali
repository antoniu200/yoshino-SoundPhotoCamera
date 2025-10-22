.class public Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;
.super Ljava/lang/Object;
.source "ParameterHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_VALUE:Ljava/lang/String; = "NO_VALUE"

.field public static final REGULAR_EXPRESSION:Ljava/lang/String; = "@"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mInitValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    .local p1, "initValue":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;, "TT;"
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mInitValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 32
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 33
    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 34
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    .line 35
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/String;)V
    .registers 8
    .param p1, "valueStr"    # Ljava/lang/String;

    .prologue
    .line 119
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    const-string v4, "NO_VALUE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 142
    :cond_8
    :goto_8
    return-void

    .line 122
    :cond_9
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "token":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    .line 126
    const/4 v3, 0x0

    .line 128
    .local v3, "value":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;, "TT;"
    const/4 v4, 0x0

    :try_start_15
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 129
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    move-object v3, v0
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_26} :catch_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_26} :catch_30
    .catch Ljava/lang/LinkageError; {:try_start_15 .. :try_end_26} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_26} :catch_2c

    .line 139
    .end local v1    # "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :goto_26
    if-eqz v3, :cond_8

    .line 140
    invoke-virtual {p0, v3}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    goto :goto_8

    .line 136
    :catch_2c
    move-exception v4

    goto :goto_26

    .line 134
    :catch_2e
    move-exception v4

    goto :goto_26

    .line 132
    :catch_30
    move-exception v4

    goto :goto_26

    .line 130
    :catch_32
    move-exception v4

    goto :goto_26
.end method

.method public get()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    return-object v0
.end method

.method public getKey()Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterKey;
    .registers 2

    .prologue
    .line 38
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mInitValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-interface {v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->key()Lcom/sonymobile/android/addoncamera/soundphoto/setting/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    if-nez v0, :cond_6

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-virtual {v0}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    goto :goto_5
.end method

.method public getSelectability()Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;
    .registers 2

    .prologue
    .line 60
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    if-nez v0, :cond_7

    .line 97
    const-string v0, "NO_VALUE"

    .line 99
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public set(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    .local p1, "value":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;, "TT;"
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 67
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    sget-object v1, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    if-ne v0, v1, :cond_13

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V

    .line 70
    :cond_13
    return-void
.end method

.method public varargs setOptions([Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    .local p1, "options":[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;, "[TT;"
    invoke-virtual {p1}, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 43
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    array-length v0, v0

    if-nez v0, :cond_12

    .line 44
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->UNSUPPORTED:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    .line 50
    :goto_11
    return-void

    .line 45
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 46
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->FIX:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    goto :goto_11

    .line 48
    :cond_1d
    sget-object v0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;->SELECTABLE:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mSelectability:Lcom/sonymobile/android/addoncamera/soundphoto/setting/SettingSelectability;

    goto :goto_11
.end method

.method setWithAutoCast(Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;)V
    .registers 3
    .param p1, "value"    # Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .prologue
    .line 75
    .local p0, "this":Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;, "Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mInitValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_11

    .line 76
    :cond_e
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/soundphoto/setting/ParameterValue;

    .line 80
    return-void

    .line 78
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
