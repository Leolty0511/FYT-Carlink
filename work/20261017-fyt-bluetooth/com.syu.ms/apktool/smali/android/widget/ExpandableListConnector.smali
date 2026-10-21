.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 3
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    const/4 v3, -0x1

    if-eqz p2, :cond_3

    add-int/lit8 p2, v1, -0x1

    move v4, v2

    :goto_0
    if-ltz p2, :cond_2

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 5
    iget-wide v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v8, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v6

    .line 6
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v6, v7, :cond_1

    if-ne v6, v3, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 8
    :cond_0
    iput v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    move p2, v2

    move v4, p2

    :goto_1
    if-ge v2, v1, :cond_6

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 11
    iget v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v6, v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v6, v7

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v6

    .line 14
    :goto_3
    iget v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v6

    iput v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 15
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int v4, v7, v4

    add-int/2addr p2, v4

    .line 16
    iput p2, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/2addr p2, v6

    .line 17
    iput p2, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    add-int/lit8 v2, v2, 0x1

    move v4, v7

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public collapseGroup(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result p1

    .line 5
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return p1
.end method

.method public collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 3

    .line 6
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public expandGroup(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result p1

    .line 5
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return p1
.end method

.method public expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .locals 6

    .line 6
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-ltz v0, :cond_3

    .line 7
    iget v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 10
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 11
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 12
    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 13
    iget v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v3

    .line 14
    iput v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 15
    :cond_2
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    const/4 v2, -0x1

    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 16
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 17
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    return v3

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Need group"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findGroupPosition(JI)I
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 2
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    .line 5
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v6

    if-nez v6, :cond_2

    return v1

    :cond_2
    move v7, p3

    move v8, v7

    move v9, v2

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gtz v10, :cond_b

    .line 7
    invoke-interface {v6, p3}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_4

    return p3

    :cond_4
    if-ne v7, v0, :cond_5

    move v10, v3

    goto :goto_1

    :cond_5
    move v10, v2

    :goto_1
    if-nez v8, :cond_6

    move v11, v3

    goto :goto_2

    :cond_6
    move v11, v2

    :goto_2
    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    if-nez v11, :cond_a

    if-eqz v9, :cond_8

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    if-nez v9, :cond_3

    if-nez v11, :cond_3

    :cond_9
    add-int/lit8 v8, v8, -0x1

    move v9, v3

    move p3, v8

    goto :goto_0

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v2

    move p3, v7

    goto :goto_0

    :cond_b
    :goto_4
    return v1
.end method

.method public getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_0

    .line 3
    iget v7, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v1, Landroid/widget/ExpandableListPosition;->type:I

    iget v8, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v7

    invoke-static/range {v5 .. v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x0

    move v10, v3

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gt v10, v4, :cond_6

    sub-int v3, v4, v10

    .line 4
    div-int/2addr v3, v6

    add-int/2addr v3, v10

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 6
    iget v13, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v8, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v13, v8, :cond_2

    add-int/lit8 v10, v3, 0x1

    goto :goto_0

    :cond_2
    if-ge v13, v8, :cond_3

    add-int/lit8 v4, v3, -0x1

    goto :goto_0

    :cond_3
    if-ne v13, v8, :cond_1

    .line 7
    iget v12, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v12, v6, :cond_4

    .line 8
    iget v11, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v14, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_4
    if-ne v12, v7, :cond_5

    .line 9
    iget v2, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v14, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    add-int/2addr v2, v14

    add-int/lit8 v11, v2, 0x1

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_5
    return-object v5

    .line 10
    :cond_6
    iget v8, v1, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v8, v6, :cond_7

    return-object v5

    :cond_7
    if-le v10, v3, :cond_8

    add-int/lit8 v3, v10, -0x1

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 12
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v7, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int v2, v7, v2

    add-int v5, v3, v2

    .line 13
    iget v6, v1, Landroid/widget/ExpandableListPosition;->type:I

    iget v8, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_8
    if-ge v4, v3, :cond_9

    add-int/2addr v7, v4

    .line 14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 15
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    sub-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 16
    iget v3, v1, Landroid/widget/ExpandableListPosition;->type:I

    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_9
    return-object v5
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemId(I)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    .line 3
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 5
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 3
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v1, Landroid/widget/HeterogeneousExpandableList;

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/widget/HeterogeneousExpandableList;

    .line 5
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v2, v3, :cond_0

    .line 6
    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v0}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v0

    .line 8
    invoke-interface {v1}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_1
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v0
.end method

.method public getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-nez v1, :cond_0

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v5, p1

    .line 3
    invoke-static/range {v3 .. v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-gt v1, v3, :cond_5

    sub-int v2, v3, v1

    .line 4
    div-int/lit8 v2, v2, 0x2

    add-int v9, v2, v1

    .line 5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 6
    iget v2, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-le p1, v2, :cond_2

    add-int/lit8 v1, v9, 0x1

    :cond_1
    :goto_1
    move v2, v9

    goto :goto_0

    .line 7
    :cond_2
    iget v4, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ge p1, v4, :cond_3

    add-int/lit8 v3, v9, -0x1

    goto :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    const/4 v5, 0x2

    .line 8
    iget v6, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v7, -0x1

    move v4, p1

    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    :cond_4
    if-gt p1, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    sub-int v7, p1, v4

    const/4 v5, 0x1

    .line 9
    iget v6, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v4, p1

    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    :cond_5
    if-le v1, v2, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 11
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int/2addr v2, v0

    :goto_2
    move v8, v1

    move v5, v2

    goto :goto_3

    :cond_6
    if-ge v3, v2, :cond_7

    add-int/lit8 v1, v3, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 13
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    goto :goto_2

    :goto_3
    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, p1

    .line 14
    invoke-static/range {v3 .. v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    .line 5
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v8, p2

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 6
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Flat list position is of unknown type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 3
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p1

    .line 2
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 3
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v2
.end method

.method public isGroupExpanded(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 3
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 4
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, v2, p1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    return-void
.end method
