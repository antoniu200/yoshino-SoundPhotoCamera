.class public Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;
.super Ljava/lang/Object;
.source "TypedSettingItem.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TypedSettingItem"


# instance fields
.field private final mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDialogItemType:I

.field private final mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIconId:I

.field private mIsSelectable:Z

.field private mIsSelected:Z

.field private final mIsSoundEnabled:Z

.field private final mLongTextId:I

.field private mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

.field private final mRestrictMessagePopupId:I

.field private final mSubText:Ljava/lang/String;

.field private final mText:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V
    .registers 13
    .param p2, "iconId"    # I
    .param p3, "labelId"    # I
    .param p4, "subText"    # Ljava/lang/String;
    .param p5, "longTextId"    # I
    .param p6, "restrictMessagePopupId"    # I
    .param p7, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p8, "dialogItemType"    # I
    .param p10, "isSoundEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p9, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 59
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 62
    iput p8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 63
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 64
    iput-boolean p10, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 66
    iput p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mRestrictMessagePopupId:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 70
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    .line 71
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    .line 72
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 74
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;Z)V
    .registers 13
    .param p2, "iconId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "subText"    # Ljava/lang/String;
    .param p5, "longTextId"    # I
    .param p6, "restrictMessagePopupId"    # I
    .param p7, "additionalTextForAccessibility"    # Ljava/lang/String;
    .param p8, "dialogItemType"    # I
    .param p10, "isSoundEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p9, "executor":Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface<TT;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 92
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    .line 94
    iput p5, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    .line 95
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 96
    iput p6, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mRestrictMessagePopupId:I

    .line 97
    iput p8, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 98
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 99
    iput-object p9, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    .line 100
    iput-boolean p10, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 104
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 105
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 108
    return-void
.end method


# virtual methods
.method public compareData(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)Z
    .registers 6
    .param p1, "item"    # Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v1, 0x0

    .line 236
    instance-of v2, p1, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 237
    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;

    .line 238
    .local v0, "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 240
    .end local v0    # "other":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<*>;"
    :cond_f
    return v1
.end method

.method public compareData(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 245
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 6
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/16 v3, 0x20

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "description":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 145
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :goto_15
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_29
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_accessibility_not_configurable_txt:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_40
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDialogItemType()I
    .registers 2

    .prologue
    .line 197
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    return v0
.end method

.method public getIconId()I
    .registers 2

    .prologue
    .line 167
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIconId:I

    return v0
.end method

.method public getLongText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 132
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mLongTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRestrictMessagePopupId()I
    .registers 2

    .prologue
    .line 172
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mRestrictMessagePopupId:I

    return v0
.end method

.method public getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 124
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    return-object v0
.end method

.method public getText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 112
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 115
    :goto_7
    return-object v0

    :cond_8
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mTextId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public getValueText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object v0
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 182
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 177
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .registers 2

    .prologue
    .line 254
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    return v0
.end method

.method public select()V
    .registers 2

    .prologue
    .line 216
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;->onItemSelected(Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    .line 222
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    if-nez v0, :cond_11

    .line 227
    :goto_10
    return-void

    .line 226
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    goto :goto_10
.end method

.method public setOnSelectedListener(Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .prologue
    .line 231
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mOnSettingItemSelectedListener:Lcom/sonyericsson/cameracommon/setting/settingitem/OnItemSelectedListener;

    .line 232
    return-void
.end method

.method public setSelectable(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 192
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelectable:Z

    .line 193
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 187
    .local p0, "this":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<TT;>;"
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 188
    return-void
.end method
