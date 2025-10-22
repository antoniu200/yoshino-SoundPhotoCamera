.class Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .registers 5
    .param p0, "x0"    # Landroid/support/v4/app/Fragment;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/support/v4/util/ArrayMap;
    .param p4, "x4"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 4
    .param p0, "x0"    # Landroid/support/v4/util/ArrayMap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 5
    .param p0, "x0"    # Landroid/support/v4/util/ArrayMap;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "sharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p2, "nameOverridesSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 567
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 568
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 569
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 572
    .end local v1    # "view":Landroid/view/View;
    :cond_1e
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .registers 19
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p1, "op"    # Landroid/support/v4/app/BackStackRecord$Op;
    .param p3, "isPop"    # Z
    .param p4, "isReorderedTransaction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p2, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 1038
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v2, :cond_5

    .line 1124
    :cond_4
    :goto_4
    return-void

    .line 1041
    :cond_5
    iget v8, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1042
    .local v8, "containerId":I
    if-eqz v8, :cond_4

    .line 1045
    if-eqz p3, :cond_7b

    sget-object v3, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    iget v4, p1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v7, v3, v4

    .line 1046
    .local v7, "command":I
    :goto_11
    const/4 v11, 0x0

    .line 1047
    .local v11, "setLastIn":Z
    const/4 v13, 0x0

    .line 1048
    .local v13, "wasRemoved":Z
    const/4 v10, 0x0

    .line 1049
    .local v10, "setFirstOut":Z
    const/4 v12, 0x0

    .line 1050
    .local v12, "wasAdded":Z
    packed-switch v7, :pswitch_data_f2

    .line 1088
    :goto_18
    :pswitch_18
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 1089
    .local v9, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz v11, :cond_30

    .line 1091
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1092
    iput-object v2, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1093
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1094
    iput-object p0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 1096
    :cond_30
    if-nez p4, :cond_57

    if-eqz v12, :cond_57

    .line 1097
    if-eqz v9, :cond_3d

    iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_3d

    .line 1098
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1105
    :cond_3d
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1106
    .local v1, "manager":Landroid/support/v4/app/FragmentManagerImpl;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_57

    iget v3, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_57

    iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_57

    .line 1108
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1109
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1112
    .end local v1    # "manager":Landroid/support/v4/app/FragmentManagerImpl;
    :cond_57
    if-eqz v10, :cond_6d

    if-eqz v9, :cond_5f

    iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-nez v3, :cond_6d

    .line 1114
    :cond_5f
    move-object/from16 v0, p2

    invoke-static {v9, v0, v8}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v9

    .line 1115
    iput-object v2, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1116
    move/from16 v0, p3

    iput-boolean v0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1117
    iput-object p0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 1120
    :cond_6d
    if-nez p4, :cond_4

    if-eqz v13, :cond_4

    if-eqz v9, :cond_4

    iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    if-ne v3, v2, :cond_4

    .line 1122
    const/4 v3, 0x0

    iput-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    goto :goto_4

    .line 1045
    .end local v7    # "command":I
    .end local v9    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .end local v10    # "setFirstOut":Z
    .end local v11    # "setLastIn":Z
    .end local v12    # "wasAdded":Z
    .end local v13    # "wasRemoved":Z
    :cond_7b
    iget v7, p1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    goto :goto_11

    .line 1052
    .restart local v7    # "command":I
    .restart local v10    # "setFirstOut":Z
    .restart local v11    # "setLastIn":Z
    .restart local v12    # "wasAdded":Z
    .restart local v13    # "wasRemoved":Z
    :pswitch_7e
    if-eqz p4, :cond_91

    .line 1053
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_8f

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_8f

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_8f

    const/4 v11, 0x1

    .line 1057
    :goto_8d
    const/4 v12, 0x1

    .line 1058
    goto :goto_18

    .line 1053
    :cond_8f
    const/4 v11, 0x0

    goto :goto_8d

    .line 1055
    :cond_91
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    goto :goto_8d

    .line 1061
    :pswitch_94
    if-eqz p4, :cond_9b

    .line 1062
    iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    .line 1066
    :goto_98
    const/4 v12, 0x1

    .line 1067
    goto/16 :goto_18

    .line 1064
    :cond_9b
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_a5

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_a5

    const/4 v11, 0x1

    :goto_a4
    goto :goto_98

    :cond_a5
    const/4 v11, 0x0

    goto :goto_a4

    .line 1069
    :pswitch_a7
    if-eqz p4, :cond_bb

    .line 1070
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v3, :cond_b9

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_b9

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_b9

    const/4 v10, 0x1

    .line 1074
    :goto_b6
    const/4 v13, 0x1

    .line 1075
    goto/16 :goto_18

    .line 1070
    :cond_b9
    const/4 v10, 0x0

    goto :goto_b6

    .line 1072
    :cond_bb
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_c5

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_c5

    const/4 v10, 0x1

    :goto_c4
    goto :goto_b6

    :cond_c5
    const/4 v10, 0x0

    goto :goto_c4

    .line 1078
    :pswitch_c7
    if-eqz p4, :cond_e6

    .line 1079
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v3, :cond_e4

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_e4

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1080
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_e4

    iget v3, v2, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e4

    const/4 v10, 0x1

    .line 1085
    :goto_e1
    const/4 v13, 0x1

    goto/16 :goto_18

    .line 1080
    :cond_e4
    const/4 v10, 0x0

    goto :goto_e1

    .line 1083
    :cond_e6
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_f0

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_f0

    const/4 v10, 0x1

    :goto_ef
    goto :goto_e1

    :cond_f0
    const/4 v10, 0x0

    goto :goto_ef

    .line 1050
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_94
        :pswitch_18
        :pswitch_c7
        :pswitch_a7
        :pswitch_7e
        :pswitch_c7
        :pswitch_94
    .end packed-switch
.end method

.method public static calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 995
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;

    .line 996
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x0

    invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 998
    .end local v1    # "op":Landroid/support/v4/app/BackStackRecord$Op;
    :cond_18
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
    .registers 17
    .param p0, "containerId"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 145
    .local v2, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v6, p4, -0x1

    .local v6, "recordNum":I
    :goto_7
    if-lt v6, p3, :cond_58

    .line 146
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/BackStackRecord;

    .line 147
    .local v5, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v5, p0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v11

    if-nez v11, :cond_18

    .line 145
    :cond_15
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 150
    :cond_18
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 151
    .local v1, "isPop":Z
    iget-object v11, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v11, :cond_15

    .line 152
    iget-object v11, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    .local v3, "numSharedElements":I
    if-eqz v1, :cond_4f

    .line 156
    iget-object v10, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 157
    .local v10, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 162
    .local v8, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    if-ge v0, v3, :cond_15

    .line 163
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .local v7, "sourceName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "targetName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 166
    .local v4, "previousTarget":Ljava/lang/String;
    if-eqz v4, :cond_54

    .line 167
    invoke-virtual {v2, v7, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 159
    .end local v0    # "i":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    iget-object v8, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 160
    .restart local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_32

    .line 169
    .restart local v0    # "i":I
    .restart local v4    # "previousTarget":Ljava/lang/String;
    .restart local v7    # "sourceName":Ljava/lang/String;
    .restart local v9    # "targetName":Ljava/lang/String;
    :cond_54
    invoke-virtual {v2, v7, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 174
    .end local v0    # "i":I
    .end local v1    # "isPop":Z
    .end local v3    # "numSharedElements":I
    .end local v4    # "previousTarget":Ljava/lang/String;
    .end local v5    # "record":Landroid/support/v4/app/BackStackRecord;
    .end local v7    # "sourceName":Ljava/lang/String;
    .end local v8    # "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "targetName":Ljava/lang/String;
    .end local v10    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_58
    return-object v2
.end method

.method public static calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .registers 7
    .param p0, "transaction"    # Landroid/support/v4/app/BackStackRecord;
    .param p2, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1018
    :cond_a
    return-void

    .line 1013
    :cond_b
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1014
    .local v0, "numOps":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "opNum":I
    :goto_13
    if-ltz v2, :cond_a

    .line 1015
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;

    .line 1016
    .local v1, "op":Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v3, 0x1

    invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 1014
    add-int/lit8 v2, v2, -0x1

    goto :goto_13
.end method

.method private static callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .registers 12
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .param p4, "isStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "sharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 897
    if-eqz p2, :cond_2a

    .line 898
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v3

    .line 900
    .local v3, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    :goto_7
    if-eqz v3, :cond_39

    .line 901
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 903
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_2f

    const/4 v0, 0x0

    .line 904
    .local v0, "count":I
    :goto_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_34

    .line 905
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 899
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v3

    goto :goto_7

    .line 903
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2f
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    goto :goto_16

    .line 908
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_34
    if-eqz p4, :cond_3a

    .line 909
    invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 914
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_39
    :goto_39
    return-void

    .line 911
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3a
    invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_39
.end method

.method private static captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 14
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 760
    .local v2, "inFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 761
    .local v0, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz p1, :cond_10

    if-nez v0, :cond_15

    .line 762
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 763
    const/4 v3, 0x0

    .line 802
    :cond_14
    :goto_14
    return-object v3

    .line 765
    :cond_15
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 766
    .local v3, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-static {v3, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 770
    iget-object v4, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 771
    .local v4, "inTransaction":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v10, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v10, :cond_55

    .line 772
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v8

    .line 773
    .local v8, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v7, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 779
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_29
    if-eqz v7, :cond_2e

    .line 780
    invoke-virtual {v3, v7}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 782
    :cond_2e
    if-eqz v8, :cond_74

    .line 783
    invoke-virtual {v8, v7, v3}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 784
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_39
    if-ltz v1, :cond_14

    .line 785
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 786
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 787
    .local v9, "view":Landroid/view/View;
    if-nez v9, :cond_5c

    .line 788
    invoke-static {p0, v6}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_52

    .line 790
    invoke-virtual {p0, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .end local v5    # "key":Ljava/lang/String;
    :cond_52
    :goto_52
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 775
    .end local v1    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v9    # "view":Landroid/view/View;
    :cond_55
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v8

    .line 776
    .restart local v8    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v7, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_29

    .line 792
    .restart local v1    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "view":Landroid/view/View;
    :cond_5c
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_52

    .line 793
    invoke-static {p0, v6}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 794
    .restart local v5    # "key":Ljava/lang/String;
    if-eqz v5, :cond_52

    .line 795
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 800
    .end local v1    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_74
    invoke-static {p0, v3}, Landroid/support/v4/app/FragmentTransition;->retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_14
.end method

.method private static captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .registers 13
    .param p1, "sharedElementTransition"    # Ljava/lang/Object;
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    if-nez p1, :cond_d

    .line 704
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 705
    const/4 v4, 0x0

    .line 738
    :cond_c
    :goto_c
    return-object v4

    .line 707
    :cond_d
    iget-object v3, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 708
    .local v3, "outFragment":Landroid/support/v4/app/Fragment;
    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 709
    .local v4, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 713
    iget-object v5, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 714
    .local v5, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    iget-boolean v9, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v9, :cond_4b

    .line 715
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v6

    .line 716
    .local v6, "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v2, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 722
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_27
    invoke-virtual {v4, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 723
    if-eqz v6, :cond_6a

    .line 724
    invoke-virtual {v6, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 725
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_35
    if-ltz v0, :cond_c

    .line 726
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 728
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_52

    .line 729
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 718
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    .end local v8    # "view":Landroid/view/View;
    :cond_4b
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v6

    .line 719
    .restart local v6    # "sharedElementCallback":Landroid/support/v4/app/SharedElementCallback;
    iget-object v2, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .restart local v2    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_27

    .line 730
    .restart local v0    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_52
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 731
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 732
    .local v7, "targetValue":Ljava/lang/String;
    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 736
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "targetValue":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_6a
    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_c
.end method

.method private static configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    .local p2, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 920
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_22

    .line 921
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .restart local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 924
    invoke-static {v1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 926
    :cond_11
    if-eqz p2, :cond_16

    .line 927
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 929
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 930
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {p0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 934
    .end local v0    # "root":Landroid/view/View;
    :cond_22
    return-object v1
.end method

.method private static configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 27
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 610
    .local v9, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 612
    .local v10, "outFragment":Landroid/support/v4/app/Fragment;
    if-eqz v9, :cond_c

    if-nez v10, :cond_e

    .line 613
    :cond_c
    const/4 v5, 0x0

    .line 682
    :goto_d
    return-object v5

    .line 616
    :cond_e
    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 617
    .local v11, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    const/16 v18, 0x0

    .line 620
    .local v18, "sharedElementTransition":Ljava/lang/Object;
    :goto_1a
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v16

    .line 623
    .local v16, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 624
    const/16 v18, 0x0

    move-object/from16 v5, v18

    .line 629
    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .local v5, "sharedElementTransition":Ljava/lang/Object;
    :goto_2e
    if-nez p6, :cond_47

    if-nez p7, :cond_47

    if-nez v5, :cond_47

    .line 631
    const/4 v5, 0x0

    goto :goto_d

    .line 618
    .end local v5    # "sharedElementTransition":Ljava/lang/Object;
    .end local v16    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_36
    invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v18

    goto :goto_1a

    .line 626
    .restart local v16    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v18    # "sharedElementTransition":Ljava/lang/Object;
    :cond_3b
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v5, v18

    .end local v18    # "sharedElementTransition":Ljava/lang/Object;
    .restart local v5    # "sharedElementTransition":Ljava/lang/Object;
    goto :goto_2e

    .line 634
    :cond_47
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v9, v10, v11, v0, v3}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 637
    if-eqz v5, :cond_8c

    .line 638
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 639
    .local v14, "inEpicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v5, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 641
    move-object/from16 v0, p3

    iget-boolean v15, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 642
    .local v15, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object/from16 v17, v0

    .line 643
    .local v17, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v5, v0, v1, v15, v2}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 645
    if-eqz p6, :cond_75

    .line 646
    move-object/from16 v0, p6

    invoke-static {v0, v14}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 654
    .end local v15    # "outIsPop":Z
    .end local v17    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    .local v5, "finalSharedElementTransition":Ljava/lang/Object;
    :cond_75
    :goto_75
    new-instance v3, Landroid/support/v4/app/FragmentTransition$4;

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-direct/range {v3 .. v14}, Landroid/support/v4/app/FragmentTransition$4;-><init>(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    goto :goto_d

    .line 649
    .end local v14    # "inEpicenter":Landroid/graphics/Rect;
    .local v5, "sharedElementTransition":Ljava/lang/Object;
    :cond_8c
    const/4 v14, 0x0

    .restart local v14    # "inEpicenter":Landroid/graphics/Rect;
    goto :goto_75
.end method

.method private static configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "nonExistentView"    # Landroid/view/View;
    .param p3, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p6, "enterTransition"    # Ljava/lang/Object;
    .param p7, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 481
    .local v3, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 482
    .local v4, "outFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_12

    .line 483
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 485
    :cond_12
    if-eqz v3, :cond_16

    if-nez v4, :cond_18

    .line 486
    :cond_16
    const/4 v12, 0x0

    .line 552
    :goto_17
    return-object v12

    .line 489
    :cond_18
    move-object/from16 v0, p3

    iget-boolean v5, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 490
    .local v5, "inIsPop":Z
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v12, 0x0

    .line 493
    .local v12, "sharedElementTransition":Ljava/lang/Object;
    :goto_23
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v10

    .line 496
    .local v10, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v12, v1}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    .line 499
    .local v6, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 500
    const/4 v12, 0x0

    .line 501
    if-eqz v10, :cond_3f

    .line 502
    invoke-virtual {v10}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 504
    :cond_3f
    if-eqz v6, :cond_44

    .line 505
    invoke-virtual {v6}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 514
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_44
    :goto_44
    if-nez p6, :cond_64

    if-nez p7, :cond_64

    if-nez v12, :cond_64

    .line 516
    const/4 v12, 0x0

    goto :goto_17

    .line 491
    .end local v6    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .end local v10    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_4c
    invoke-static {v3, v4, v5}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    goto :goto_23

    .line 509
    .restart local v6    # "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v10    # "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .restart local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_51
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 508
    move-object/from16 v0, p4

    invoke-static {v0, v10, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 510
    move-object/from16 v0, p5

    invoke-static {v0, v6, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    goto :goto_44

    .line 519
    .end local v12    # "sharedElementTransition":Ljava/lang/Object;
    :cond_64
    const/4 v2, 0x1

    invoke-static {v3, v4, v5, v10, v2}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 523
    if-eqz v12, :cond_9f

    .line 524
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    move-object/from16 v0, p4

    invoke-static {v12, p1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 527
    move-object/from16 v0, p3

    iget-boolean v9, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 528
    .local v9, "outIsPop":Z
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 529
    .local v11, "outTransaction":Landroid/support/v4/app/BackStackRecord;
    move-object/from16 v0, p7

    invoke-static {v12, v0, v10, v9, v11}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 531
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 532
    .local v8, "epicenter":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {v6, v0, v1, v5}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v7

    .line 534
    .local v7, "epicenterView":Landroid/view/View;
    if-eqz v7, :cond_95

    .line 535
    move-object/from16 v0, p6

    invoke-static {v0, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 542
    .end local v9    # "outIsPop":Z
    .end local v11    # "outTransaction":Landroid/support/v4/app/BackStackRecord;
    :cond_95
    :goto_95
    new-instance v2, Landroid/support/v4/app/FragmentTransition$3;

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/app/FragmentTransition$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p0, v2}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    goto/16 :goto_17

    .line 538
    .end local v7    # "epicenterView":Landroid/view/View;
    .end local v8    # "epicenter":Landroid/graphics/Rect;
    :cond_9f
    const/4 v8, 0x0

    .line 539
    .restart local v8    # "epicenter":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .restart local v7    # "epicenterView":Landroid/view/View;
    goto :goto_95
.end method

.method private static configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 32
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p4, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 292
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 295
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_17
    if-nez v2, :cond_1a

    .line 346
    :cond_19
    :goto_19
    return-void

    .line 298
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 299
    .local v17, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v25, v0

    .line 300
    .local v25, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v24, v0

    .line 301
    .local v24, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v26, v0

    .line 303
    .local v26, "outIsPop":Z
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 304
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v25 .. v26}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .line 306
    .local v9, "exitTransition":Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 309
    invoke-static/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 313
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_58

    if-nez v15, :cond_58

    if-eqz v9, :cond_19

    .line 318
    :cond_58
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 321
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_68

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 322
    :cond_68
    const/4 v9, 0x0

    .line 327
    .end local v9    # "exitTransition":Ljava/lang/Object;
    :cond_69
    move-object/from16 v0, p3

    invoke-static {v8, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 329
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move-object/from16 v0, v17

    invoke-static {v8, v9, v15, v0, v3}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 332
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_19

    .line 333
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 334
    invoke-static/range {v10 .. v16}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v16, v2

    move-object/from16 v18, p3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v14

    .line 337
    invoke-static/range {v16 .. v23}, Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 339
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 342
    invoke-static {v2, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 343
    move-object/from16 v0, p4

    invoke-static {v2, v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto/16 :goto_19
.end method

.method private static configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .registers 27
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p1, "containerId"    # I
    .param p2, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p4, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 197
    .local v2, "sceneRoot":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "sceneRoot":Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 200
    .restart local v2    # "sceneRoot":Landroid/view/ViewGroup;
    :cond_17
    if-nez v2, :cond_1a

    .line 247
    :cond_19
    :goto_19
    return-void

    .line 203
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    .line 204
    .local v17, "inFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v20, v0

    .line 205
    .local v20, "outFragment":Landroid/support/v4/app/Fragment;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v18, v0

    .line 206
    .local v18, "inIsPop":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v21, v0

    .line 208
    .local v21, "outIsPop":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static/range {v17 .. v18}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 211
    .local v8, "enterTransition":Ljava/lang/Object;
    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    .local v9, "exitTransition":Ljava/lang/Object;
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    .line 213
    invoke-static/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsReordered(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 217
    .local v15, "sharedElementTransition":Ljava/lang/Object;
    if-nez v8, :cond_54

    if-nez v15, :cond_54

    if-eqz v9, :cond_19

    .line 222
    :cond_54
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v14

    .line 225
    .local v14, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v8, v0, v7, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v12

    .line 228
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x4

    invoke-static {v12, v3}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 230
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v9, v15, v0, v1}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 233
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_19

    .line 234
    move-object/from16 v0, v20

    invoke-static {v9, v0, v14}, Landroid/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 236
    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .local v19, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v11, v8

    move-object v13, v9

    move-object/from16 v16, v7

    .line 237
    invoke-static/range {v10 .. v16}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 240
    invoke-static {v2, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v2, v6, v7, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 243
    const/4 v3, 0x0

    invoke-static {v12, v3}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 244
    invoke-static {v15, v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_19
.end method

.method private static ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .registers 3
    .param p0, "containerTransition"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    if-nez p0, :cond_a

    .line 1135
    new-instance p0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .end local p0    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    .line 1136
    .restart local p0    # "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    :cond_a
    return-object p0
.end method

.method private static findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "map":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 810
    .local v1, "numElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_1b

    .line 811
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 812
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 815
    :goto_17
    return-object v2

    .line 810
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 815
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 425
    if-nez p0, :cond_4

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    .line 428
    :goto_a
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 430
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 3
    .param p0, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 438
    if-nez p0, :cond_4

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_3
    return-object v0

    :cond_4
    if-eqz p1, :cond_f

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    .line 441
    :goto_a
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 443
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private static getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .registers 8
    .param p1, "fragments"    # Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p3, "inIsPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "inSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 830
    iget-object v0, p1, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 831
    .local v0, "inTransaction":Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_2f

    if-eqz p0, :cond_2f

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 834
    if-eqz p3, :cond_25

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 837
    .local v1, "targetName":Ljava/lang/String;
    :goto_1e
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 839
    .end local v1    # "targetName":Ljava/lang/String;
    :goto_24
    return-object v2

    .line 835
    :cond_25
    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1e

    .line 839
    :cond_2f
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 5
    .param p0, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "outFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 411
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 412
    :cond_4
    const/4 v1, 0x0

    .line 417
    :goto_5
    return-object v1

    .line 414
    :cond_6
    if-eqz p2, :cond_15

    .line 415
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v1

    .line 414
    :goto_c
    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    .local v0, "transition":Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 416
    .end local v0    # "transition":Ljava/lang/Object;
    :cond_15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    goto :goto_c
.end method

.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .registers 7
    .param p0, "enterTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p2, "sharedElementTransition"    # Ljava/lang/Object;
    .param p3, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "isPop"    # Z
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 959
    .local v0, "overlap":Z
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    .line 960
    if-eqz p4, :cond_14

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 969
    :cond_d
    :goto_d
    if-eqz v0, :cond_19

    .line 971
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 979
    .local v1, "transition":Ljava/lang/Object;
    :goto_13
    return-object v1

    .line 961
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_14
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_d

    .line 976
    :cond_19
    invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "transition":Ljava/lang/Object;
    goto :goto_13
.end method

.method private static replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "exitTransition"    # Ljava/lang/Object;
    .param p1, "exitingFragment"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_25

    if-eqz p0, :cond_25

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_25

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_25

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_25

    .line 259
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 260
    invoke-static {p0, v1, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 262
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 263
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroid/support/v4/app/FragmentTransition$1;

    invoke-direct {v1, p2}, Landroid/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 270
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_25
    return-void
.end method

.method private static retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p0, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 877
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 878
    .local v1, "targetName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 879
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 876
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 882
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 16
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "inFragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .param p4, "enterTransition"    # Ljava/lang/Object;
    .param p6, "exitTransition"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Landroid/support/v4/app/FragmentTransition$2;

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p7

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    .line 394
    return-void
.end method

.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
    .registers 9
    .param p0, "sharedElementTransition"    # Ljava/lang/Object;
    .param p1, "exitTransition"    # Ljava/lang/Object;
    .param p3, "outIsPop"    # Z
    .param p4, "outTransaction"    # Landroid/support/v4/app/BackStackRecord;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "outSharedElements":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v3, 0x0

    .line 855
    iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 856
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 857
    if-eqz p3, :cond_27

    iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 858
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 860
    .local v1, "sourceName":Ljava/lang/String;
    :goto_18
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 861
    .local v0, "outEpicenterView":Landroid/view/View;
    invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 863
    if-eqz p1, :cond_26

    .line 864
    invoke-static {p1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 867
    .end local v0    # "outEpicenterView":Landroid/view/View;
    .end local v1    # "sourceName":Ljava/lang/String;
    :cond_26
    return-void

    .line 858
    :cond_27
    iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 859
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_18
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p0, :cond_3

    .line 948
    :cond_2
    return-void

    .line 944
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2

    .line 945
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 946
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 944
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method static startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .registers 18
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManagerImpl;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "isReordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v11, 0x1

    if-ge v10, v11, :cond_6

    .line 124
    :cond_5
    return-void

    .line 90
    :cond_6
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_5

    .line 91
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 93
    .local v9, "transitioningFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;>;"
    move v3, p3

    .local v3, "i":I
    :goto_12
    move/from16 v0, p4

    if-ge v3, v0, :cond_36

    .line 94
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/BackStackRecord;

    .line 95
    .local v8, "record":Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 96
    .local v4, "isPop":Z
    if-eqz v4, :cond_30

    .line 97
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/FragmentTransition;->calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 93
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 99
    :cond_30
    move/from16 v0, p5

    invoke-static {v8, v9, v0}, Landroid/support/v4/app/FragmentTransition;->calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2d

    .line 103
    .end local v4    # "isPop":Z
    .end local v8    # "record":Landroid/support/v4/app/BackStackRecord;
    :cond_36
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-eqz v10, :cond_5

    .line 104
    new-instance v6, Landroid/view/View;

    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    .local v6, "nonExistentView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 106
    .local v7, "numContainers":I
    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v7, :cond_5

    .line 107
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 108
    .local v1, "containerId":I
    move/from16 v0, p4

    invoke-static {v1, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 112
    .local v5, "nameOverrides":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    .line 114
    .local v2, "containerTransition":Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    if-eqz p5, :cond_66

    .line 115
    invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsReordered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    .line 106
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 118
    :cond_66
    invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsOrdered(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_63
.end method
