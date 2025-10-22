.class public Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
.super Ljava/lang/Object;
.source "SettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingItemBuilder"


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDialogItemType:I

.field private mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mIconId:I

.field private mIsSelectable:Z

.field private mIsSoundEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLongTextId:I

.field private mRestrictPopupId:I

.field private mSelected:Z

.field private mSubText:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 20
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 21
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    .line 22
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mRestrictPopupId:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 27
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 28
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 30
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 32
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public commit()Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .registers 13

    .prologue
    .line 45
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3c

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mRestrictPopupId:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    iget-boolean v10, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V

    .line 72
    .local v0, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :goto_1e
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-eqz v1, :cond_56

    .line 73
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 74
    .local v11, "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 59
    .end local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .end local v11    # "child":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_3c
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mRestrictPopupId:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    iget-boolean v10, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;IILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V

    .restart local v0    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    goto :goto_1e

    .line 78
    :cond_56
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelectable(Z)V

    .line 79
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 81
    return-object v0
.end method

.method public dialogItemType(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 121
    return-object p0
.end method

.method public enableSound(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 149
    return-object p0
.end method

.method public executor(Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    .local p1, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 126
    return-object p0
.end method

.method public iconId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 86
    return-object p0
.end method

.method public item(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 3
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-nez v0, :cond_b

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 133
    :cond_b
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object p0
.end method

.method public longTextId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mLongTextId:I

    .line 101
    return-object p0
.end method

.method public restrictPopupId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mRestrictPopupId:I

    .line 111
    return-object p0
.end method

.method public selectable(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mIsSelectable:Z

    .line 144
    return-object p0
.end method

.method public selected(Z)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSelected:Z

    .line 139
    return-object p0
.end method

.method public subText(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public textId(I)Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;
    .registers 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;, "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder<TT;>;"
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 91
    return-object p0
.end method
