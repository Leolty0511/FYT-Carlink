.class public abstract Landroid/widget/CursorTreeAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    }
.end annotation


# instance fields
.field private mAutoRequery:Z

.field mChildrenCursorHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/CursorTreeAdapter$MyCursorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCursorFilter:Landroid/widget/CursorFilter;

.field mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorTreeAdapter;->init(Landroid/database/Cursor;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/CursorTreeAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    return p0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p2, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-boolean p3, p0, Landroid/widget/CursorTreeAdapter;->mAutoRequery:Z

    .line 11
    .line 12
    new-instance p2, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 13
    .line 14
    invoke-direct {p2, p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 18
    .line 19
    new-instance p1, Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 25
    .line 26
    return-void
.end method

.method private declared-synchronized releaseCursorHelpers()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method


# virtual methods
.method public abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public abstract bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized deactivateChildrenCursorHelper(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public getChild(II)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0, p2, p1, p3, p5}, Landroid/widget/CursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    :cond_0
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, p4, p2, p1, p3}, Landroid/widget/CursorTreeAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 23
    .line 24
    .line 25
    return-object p4

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string/jumbo p2, "this should only be called when the cursor is valid"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->isValid()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public abstract getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end method

.method public declared-synchronized getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_0
    :try_start_1
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/CursorTreeAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;-><init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Landroid/widget/CursorTreeAdapter;->mChildrenCursorHelpers:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    move-object p2, v0

    .line 44
    :cond_1
    monitor-exit p0

    .line 45
    return-object p2

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/CursorFilter;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getGroup(I)Landroid/database/Cursor;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCount()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->moveTo(I)Landroid/database/Cursor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iget-object p3, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/widget/CursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    :cond_0
    iget-object p4, p0, Landroid/widget/CursorTreeAdapter;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/widget/CursorTreeAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 20
    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string/jumbo p2, "this should only be called when the cursor is valid"

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/CursorTreeAdapter;->releaseCursorHelpers()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/CursorTreeAdapter;->deactivateChildrenCursorHelper(I)V

    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->getCursor()Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public setChildrenCursor(ILandroid/database/Cursor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/widget/CursorTreeAdapter;->getChildrenCursorHelper(IZ)Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CursorTreeAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-void
.end method

.method public setGroupCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter;->mGroupCursorHelper:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->changeCursor(Landroid/database/Cursor;Z)V

    return-void
.end method
