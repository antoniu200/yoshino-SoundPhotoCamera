.class Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p4, "data":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;>;"
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mContext:Landroid/content/Context;

    .line 695
    iput p3, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mId:I

    .line 696
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mGroupList:Ljava/util/List;

    .line 697
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 712
    const/4 v0, 0x0

    .line 714
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mGroupList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 720
    const/4 v0, 0x0

    .line 722
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 727
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 737
    move-object v4, p2

    .line 738
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_10

    .line 739
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 740
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/sonyericsson/cameracommon/R$layout;->list_item_permission:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 743
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_10
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;

    .line 745
    .local v1, "group":Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 746
    .local v3, "name":Landroid/widget/TextView;
    sget v5, Lcom/sonyericsson/cameracommon/R$id;->description:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 747
    .local v0, "description":Landroid/widget/TextView;
    iget v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mId:I

    const/16 v6, 0x201

    if-ne v5, v6, :cond_53

    if-eqz v1, :cond_53

    .line 748
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v5

    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$000()I

    move-result v6

    if-eq v5, v6, :cond_53

    .line 750
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPreDialogMessageId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    :cond_52
    :goto_52
    return-object v4

    .line 753
    :cond_53
    iget v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->mId:I

    const/16 v6, 0x202

    if-ne v5, v6, :cond_52

    if-eqz v1, :cond_52

    .line 754
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v5

    # getter for: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->INVALID_ID:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$000()I

    move-result v6

    if-eq v5, v6, :cond_52

    .line 756
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    # invokes: Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getPermissionGroupLabel(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->access$600(Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->this$0:Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionGroup;->getPostDialogMessageId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionActivity$PermissionAdapter;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 701
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2
    .param p1, "dataSetObserver"    # Landroid/database/DataSetObserver;

    .prologue
    .line 706
    return-void
.end method
