.class public Landroid/view/accessibility/AccessibilityNodeInfoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_INTEGRITY_IF_DEBUGGABLE_BUILD:Z = true

.field private static final DEBUG:Z = false

.field private static final ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityNodeInfoCache"


# instance fields
.field private final mCacheImpl:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mWindowId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    return-void
.end method

.method private checkIntegrity()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    .line 7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 8
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 9
    invoke-interface {v5, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object v6, v3

    .line 10
    :cond_2
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 11
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 13
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_3
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_4

    .line 16
    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate accessibility focus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object v3, v7

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_6

    .line 18
    sget-object v8, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate input focus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object v6, v7

    .line 19
    :cond_7
    :goto_2
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_2

    .line 21
    invoke-virtual {v7, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    .line 22
    iget-object v12, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v10, :cond_8

    .line 23
    invoke-interface {v5, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 24
    :cond_9
    :goto_4
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 25
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 27
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v5

    if-ne v5, v1, :cond_a

    .line 28
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disconneced node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 29
    :cond_a
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Node from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30
    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearSubTreeLocked(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeRecursiveLocked(J)V

    return-void
.end method

.method private clearSubTreeRecursiveLocked(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    .line 6
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeRecursiveLocked(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshCachedNode(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v5

    .line 6
    invoke-virtual {v4}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 7
    invoke-virtual {v4, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    .line 8
    invoke-virtual {v5, v8, v9}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v10

    if-gez v10, :cond_0

    .line 9
    invoke-direct {p0, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2

    .line 12
    invoke-direct {p0, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 13
    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 14
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mCacheImpl:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 4
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 2
    :sswitch_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    .line 4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :sswitch_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clearSubTreeLocked(J)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->refreshCachedNode(J)V

    .line 10
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 11
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result p1

    .line 12
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mWindowId:I

    if-eq v0, p1, :cond_1

    .line 13
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfoCache;->mWindowId:I

    .line 14
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clear()V

    goto :goto_1

    .line 15
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->refreshCachedNode(J)V

    .line 16
    :cond_1
    :goto_1
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_2

    .line 17
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->checkIntegrity()V

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_3
        0x8000 -> :sswitch_3
        0x10000 -> :sswitch_3
    .end sparse-switch
.end method
