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

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 8
    .line 9
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    add-int/lit8 p2, v1, -0x1

    .line 14
    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ltz p2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 23
    .line 24
    iget-wide v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    .line 25
    .line 26
    iget v8, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 27
    .line 28
    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 33
    .line 34
    if-eq v6, v7, :cond_1

    .line 35
    .line 36
    if-ne v6, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :cond_0
    iput v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    move p2, v2

    .line 57
    move v4, p2

    .line 58
    :goto_1
    if-ge v2, v1, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 65
    .line 66
    iget v6, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 67
    .line 68
    if-eq v6, v3, :cond_5

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 74
    .line 75
    sub-int/2addr v6, v7

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    :goto_2
    iget-object v6, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 78
    .line 79
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 80
    .line 81
    invoke-interface {v6, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    :goto_3
    iget v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 86
    .line 87
    add-int/2addr v7, v6

    .line 88
    iput v7, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 89
    .line 90
    iget v7, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 91
    .line 92
    sub-int v4, v7, v4

    .line 93
    .line 94
    add-int/2addr v4, p2

    .line 95
    iput v4, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 96
    .line 97
    add-int p2, v4, v6

    .line 98
    .line 99
    iput p2, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    move v4, v7

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

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

    .line 16
    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    const/4 v2, -0x1

    .line 17
    invoke-static {v2, v2, v0, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 18
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 19
    invoke-direct {p0, v1, v1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 21
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    return v3

    .line 22
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

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v2, p1, v2

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    const/4 v3, 0x1

    .line 24
    sub-int/2addr v0, v3

    .line 25
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const-wide/16 v6, 0x64

    .line 34
    .line 35
    add-long/2addr v4, v6

    .line 36
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    move v7, p3

    .line 44
    move v8, v7

    .line 45
    move v9, v2

    .line 46
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v10

    .line 50
    cmp-long v10, v10, v4

    .line 51
    .line 52
    if-gtz v10, :cond_b

    .line 53
    .line 54
    invoke-interface {v6, p3}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v10

    .line 58
    cmp-long v10, v10, p1

    .line 59
    .line 60
    if-nez v10, :cond_4

    .line 61
    .line 62
    return p3

    .line 63
    :cond_4
    if-ne v7, v0, :cond_5

    .line 64
    .line 65
    move v10, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move v10, v2

    .line 68
    :goto_1
    if-nez v8, :cond_6

    .line 69
    .line 70
    move v11, v3

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    move v11, v2

    .line 73
    :goto_2
    if-eqz v10, :cond_7

    .line 74
    .line 75
    if-eqz v11, :cond_7

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_7
    if-nez v11, :cond_a

    .line 79
    .line 80
    if-eqz v9, :cond_8

    .line 81
    .line 82
    if-nez v10, :cond_8

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    if-nez v10, :cond_9

    .line 86
    .line 87
    if-nez v9, :cond_3

    .line 88
    .line 89
    if-nez v11, :cond_3

    .line 90
    .line 91
    :cond_9
    add-int/lit8 v8, v8, -0x1

    .line 92
    .line 93
    move v9, v3

    .line 94
    move p3, v8

    .line 95
    goto :goto_0

    .line 96
    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 97
    .line 98
    move v9, v2

    .line 99
    move p3, v7

    .line 100
    goto :goto_0

    .line 101
    :cond_b
    :goto_4
    return v1
.end method

.method public getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

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

    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/Filterable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/Filterable;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int/lit8 v4, v3, -0x1

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget v7, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 16
    .line 17
    iget v6, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 18
    .line 19
    iget v8, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    move v5, v7

    .line 24
    invoke-static/range {v5 .. v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    return-object v1

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    move v10, v3

    .line 31
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x2

    .line 33
    const/4 v7, 0x1

    .line 34
    if-gt v10, v4, :cond_6

    .line 35
    .line 36
    invoke-static {v4, v10, v6, v10}, Landroid/app/m;->b(IIII)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    move-object v15, v8

    .line 45
    check-cast v15, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 46
    .line 47
    iget v13, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 48
    .line 49
    iget v8, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 50
    .line 51
    if-le v13, v8, :cond_2

    .line 52
    .line 53
    add-int/lit8 v10, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-ge v13, v8, :cond_3

    .line 57
    .line 58
    add-int/lit8 v4, v3, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    if-ne v13, v8, :cond_1

    .line 62
    .line 63
    iget v12, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 64
    .line 65
    if-ne v12, v6, :cond_4

    .line 66
    .line 67
    iget v11, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 68
    .line 69
    iget v14, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 70
    .line 71
    move/from16 v16, v3

    .line 72
    .line 73
    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    return-object v1

    .line 78
    :cond_4
    if-ne v12, v7, :cond_5

    .line 79
    .line 80
    iget v2, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 81
    .line 82
    iget v14, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 83
    .line 84
    add-int/2addr v2, v14

    .line 85
    add-int/lit8 v11, v2, 0x1

    .line 86
    .line 87
    move/from16 v16, v3

    .line 88
    .line 89
    invoke-static/range {v11 .. v16}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    return-object v1

    .line 94
    :cond_5
    return-object v5

    .line 95
    :cond_6
    iget v8, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 96
    .line 97
    if-eq v8, v6, :cond_7

    .line 98
    .line 99
    return-object v5

    .line 100
    :cond_7
    if-le v10, v3, :cond_8

    .line 101
    .line 102
    add-int/lit8 v3, v10, -0x1

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 109
    .line 110
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 111
    .line 112
    iget v7, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 113
    .line 114
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 115
    .line 116
    sub-int v2, v7, v2

    .line 117
    .line 118
    add-int v5, v2, v3

    .line 119
    .line 120
    iget v6, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 121
    .line 122
    iget v8, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static/range {v5 .. v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    return-object v1

    .line 130
    :cond_8
    if-ge v4, v3, :cond_9

    .line 131
    .line 132
    add-int/2addr v7, v4

    .line 133
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 138
    .line 139
    iget v3, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 140
    .line 141
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 142
    .line 143
    iget v4, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 144
    .line 145
    sub-int/2addr v2, v4

    .line 146
    sub-int v2, v3, v2

    .line 147
    .line 148
    iget v3, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 149
    .line 150
    iget v5, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    return-object v1

    .line 158
    :cond_9
    return-object v5
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 6
    .line 7
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 25
    .line 26
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 27
    .line 28
    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 29
    .line 30
    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v0, "Flat list position is of unknown type"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public getItemId(I)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 6
    .line 7
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 8
    .line 9
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 16
    .line 17
    iget v3, v2, Landroid/widget/ExpandableListPosition;->type:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 23
    .line 24
    invoke-interface {v2, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x1

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 33
    .line 34
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 35
    .line 36
    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 37
    .line 38
    invoke-interface {v3, v4, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 43
    .line 44
    invoke-interface {v4, v0, v1, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 49
    .line 50
    .line 51
    return-wide v0

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    const-string v0, "Flat list position is of unknown type"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 8
    .line 9
    instance-of v2, v1, Landroid/widget/HeterogeneousExpandableList;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v1, Landroid/widget/HeterogeneousExpandableList;

    .line 15
    .line 16
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 28
    .line 29
    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 30
    .line 31
    invoke-interface {v1, v2, v0}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {v1}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 42
    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method public getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, v1, -0x1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v6, -0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move v3, p1

    .line 16
    move v5, p1

    .line 17
    invoke-static/range {v3 .. v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    move v3, v2

    .line 24
    move v2, v1

    .line 25
    :goto_0
    if-gt v1, v3, :cond_5

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {v3, v1, v2, v1}, Landroid/app/m;->b(IIII)I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v8, v2

    .line 37
    check-cast v8, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 38
    .line 39
    iget v2, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 40
    .line 41
    if-le p1, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v1, v9, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget v4, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 47
    .line 48
    if-ge p1, v4, :cond_2

    .line 49
    .line 50
    add-int/lit8 v2, v9, -0x1

    .line 51
    .line 52
    move v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-ne p1, v4, :cond_3

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    iget v6, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 58
    .line 59
    const/4 v7, -0x1

    .line 60
    move v4, p1

    .line 61
    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_3
    if-gt p1, v2, :cond_4

    .line 67
    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    sub-int v7, p1, v4

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    iget v6, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 74
    .line 75
    move v4, p1

    .line 76
    invoke-static/range {v4 .. v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_4
    :goto_1
    move v2, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    if-le v1, v2, :cond_6

    .line 84
    .line 85
    add-int/lit8 v2, v1, -0x1

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 92
    .line 93
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 94
    .line 95
    sub-int v2, p1, v2

    .line 96
    .line 97
    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 98
    .line 99
    add-int/2addr v2, v0

    .line 100
    :goto_2
    move v8, v1

    .line 101
    move v5, v2

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    if-ge v3, v2, :cond_7

    .line 104
    .line 105
    add-int/lit8 v1, v3, 0x1

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 112
    .line 113
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 114
    .line 115
    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 116
    .line 117
    sub-int/2addr v0, p1

    .line 118
    sub-int/2addr v2, v0

    .line 119
    goto :goto_2

    .line 120
    :goto_3
    const/4 v4, 0x2

    .line 121
    const/4 v6, -0x1

    .line 122
    const/4 v7, 0x0

    .line 123
    move v3, p1

    .line 124
    invoke-static/range {v3 .. v8}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string v0, "Unknown state"

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 6
    .line 7
    iget v2, v1, Landroid/widget/ExpandableListPosition;->type:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-interface {p1, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_2

    .line 27
    .line 28
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 29
    .line 30
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 31
    .line 32
    if-ne v2, p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    move v7, v3

    .line 37
    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 38
    .line 39
    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 40
    .line 41
    iget v6, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 42
    .line 43
    move-object v8, p2

    .line 44
    move-object v9, p3

    .line 45
    invoke-interface/range {v4 .. v9}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string p2, "Flat list position is of unknown type"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public getViewTypeCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/HeterogeneousExpandableList;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 6
    .line 7
    iget v1, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 13
    .line 14
    iget v2, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 15
    .line 16
    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    .line 17
    .line 18
    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method public isGroupExpanded(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 18
    .line 19
    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 15
    .line 16
    .line 17
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

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 25
    .line 26
    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 27
    .line 28
    if-lt v3, v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, v2, p1}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    return-void
.end method
