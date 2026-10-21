.class public final Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mInputFocus:J

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/32 v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 15
    .line 16
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 38
    .line 39
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 40
    .line 41
    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/LongSparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/LongSparseArray;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 p3, 0x0

    .line 18
    :goto_0
    if-ge p3, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-direct {p0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 p3, p3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private clearWindowCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 32
    .line 33
    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/LongSparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v0, v2}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/util/LongSparseArray;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Landroid/util/LongSparseArray;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 37
    .line 38
    if-eqz v5, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v8, 0x0

    .line 49
    :goto_0
    if-ge v8, v7, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    if-nez v9, :cond_1

    .line 56
    .line 57
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-gez v11, :cond_3

    .line 73
    .line 74
    :cond_2
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 75
    .line 76
    .line 77
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    cmp-long v7, v7, v5

    .line 89
    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    invoke-direct {p0, v1, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, v3, v4, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 109
    .line 110
    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 117
    .line 118
    :cond_7
    monitor-exit v0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p1
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public checkIntegrity()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v6, v3

    .line 32
    move-object v7, v6

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ge v5, v0, :cond_5

    .line 35
    .line 36
    iget-object v8, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 43
    .line 44
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    const-string v9, "AccessibilityCache"

    .line 53
    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v11, "Duplicate active window:"

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v6, v8

    .line 76
    :cond_2
    :goto_1
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    const-string v9, "AccessibilityCache"

    .line 85
    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v11, "Duplicate focused window:"

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object v7, v8

    .line 108
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    move-object v5, v3

    .line 118
    const/4 v6, 0x0

    .line 119
    :goto_3
    if-ge v6, v0, :cond_13

    .line 120
    .line 121
    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Landroid/util/LongSparseArray;

    .line 128
    .line 129
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-gtz v8, :cond_7

    .line 134
    .line 135
    :cond_6
    move/from16 v17, v0

    .line 136
    .line 137
    goto/16 :goto_d

    .line 138
    .line 139
    :cond_7
    new-instance v8, Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v9, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 145
    .line 146
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    const/4 v11, 0x0

    .line 155
    :goto_4
    if-ge v11, v10, :cond_6

    .line 156
    .line 157
    invoke-virtual {v7, v11}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 162
    .line 163
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-nez v13, :cond_8

    .line 168
    .line 169
    const-string v13, "AccessibilityCache"

    .line 170
    .line 171
    new-instance v14, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v15, "Duplicate node: "

    .line 177
    .line 178
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v12, " in window:"

    .line 185
    .line 186
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move/from16 v17, v0

    .line 200
    .line 201
    goto/16 :goto_c

    .line 202
    .line 203
    :cond_8
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-eqz v13, :cond_a

    .line 208
    .line 209
    if-eqz v3, :cond_9

    .line 210
    .line 211
    const-string v13, "AccessibilityCache"

    .line 212
    .line 213
    new-instance v14, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v15, "Duplicate accessibility focus:"

    .line 219
    .line 220
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v15, " in window:"

    .line 227
    .line 228
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    move-object v3, v12

    .line 243
    :cond_a
    :goto_5
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-eqz v13, :cond_c

    .line 248
    .line 249
    if-eqz v5, :cond_b

    .line 250
    .line 251
    const-string v13, "AccessibilityCache"

    .line 252
    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v15, "Duplicate input focus: "

    .line 259
    .line 260
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v15, " in window:"

    .line 267
    .line 268
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_b
    move-object v5, v12

    .line 283
    :cond_c
    :goto_6
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    .line 284
    .line 285
    .line 286
    move-result-wide v13

    .line 287
    invoke-virtual {v7, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 292
    .line 293
    if-eqz v13, :cond_f

    .line 294
    .line 295
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    const/4 v15, 0x0

    .line 300
    :goto_7
    if-ge v15, v14, :cond_e

    .line 301
    .line 302
    move-object/from16 v16, v5

    .line 303
    .line 304
    invoke-virtual {v13, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    invoke-virtual {v7, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 313
    .line 314
    if-ne v4, v12, :cond_d

    .line 315
    .line 316
    const/4 v4, 0x1

    .line 317
    goto :goto_8

    .line 318
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 319
    .line 320
    move-object/from16 v5, v16

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_e
    move-object/from16 v16, v5

    .line 324
    .line 325
    const/4 v4, 0x0

    .line 326
    :goto_8
    if-nez v4, :cond_10

    .line 327
    .line 328
    const-string v4, "AccessibilityCache"

    .line 329
    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v14, "Invalid parent-child relation between parent: "

    .line 336
    .line 337
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v14, " and child: "

    .line 344
    .line 345
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :cond_f
    move-object/from16 v16, v5

    .line 360
    .line 361
    :cond_10
    :goto_9
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    const/4 v5, 0x0

    .line 366
    :goto_a
    if-ge v5, v4, :cond_12

    .line 367
    .line 368
    invoke-virtual {v12, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    .line 369
    .line 370
    .line 371
    move-result-wide v14

    .line 372
    invoke-virtual {v7, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 377
    .line 378
    if-eqz v14, :cond_11

    .line 379
    .line 380
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    .line 381
    .line 382
    .line 383
    move-result-wide v14

    .line 384
    invoke-virtual {v7, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 389
    .line 390
    if-eq v14, v12, :cond_11

    .line 391
    .line 392
    const-string v14, "AccessibilityCache"

    .line 393
    .line 394
    new-instance v15, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    move/from16 v17, v0

    .line 400
    .line 401
    const-string v0, "Invalid child-parent relation between child: "

    .line 402
    .line 403
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v0, " and parent: "

    .line 410
    .line 411
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_11
    move/from16 v17, v0

    .line 426
    .line 427
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 428
    .line 429
    move/from16 v0, v17

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_12
    move/from16 v17, v0

    .line 433
    .line 434
    move-object/from16 v5, v16

    .line 435
    .line 436
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 437
    .line 438
    move/from16 v0, v17

    .line 439
    .line 440
    goto/16 :goto_4

    .line 441
    .line 442
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 443
    .line 444
    move/from16 v0, v17

    .line 445
    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_13
    monitor-exit v2

    .line 449
    return-void

    .line 450
    :catchall_0
    move-exception v0

    .line 451
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    throw v0
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-wide/32 v1, 0x7fffffff

    .line 29
    .line 30
    .line 31
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 32
    .line 33
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/util/LongSparseArray;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    monitor-exit v0

    .line 19
    return-object p1

    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public getWindows()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v2

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v1, :cond_1

    .line 26
    .line 27
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 63
    .line 64
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    monitor-exit v0

    .line 78
    return-object v3

    .line 79
    :cond_3
    monitor-exit v0

    .line 80
    return-object v2

    .line 81
    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-wide/32 v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    cmp-long v1, v4, v6

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 31
    .line 32
    invoke-direct {p0, p1, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 33
    .line 34
    .line 35
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_1
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 40
    .line 41
    cmp-long v1, v4, v2

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 50
    .line 51
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    .line 65
    .line 66
    invoke-direct {p0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :sswitch_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    and-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 106
    .line 107
    .line 108
    :goto_0
    monitor-exit v1

    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    throw p1

    .line 113
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :sswitch_5
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 118
    .line 119
    cmp-long v1, v4, v2

    .line 120
    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 128
    .line 129
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    .line 143
    .line 144
    invoke-direct {p0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    invoke-direct {p0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    .line 157
    .line 158
    .line 159
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    sget-boolean p1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    .line 161
    .line 162
    if-eqz p1, :cond_4

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    .line 165
    .line 166
    .line 167
    :cond_4
    return-void

    .line 168
    :catchall_1
    move-exception p1

    .line 169
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    throw p1

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_6
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x400000 -> :sswitch_4
    .end sparse-switch
.end method

.method public setWindows(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method
