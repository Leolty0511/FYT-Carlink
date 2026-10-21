.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "SourceFile"


# instance fields
.field private mLastPos:I


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/core/Scheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 19
    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    move-object v4, v1

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/filterfw/core/Filter;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/filterfw/core/Filter;->canProcess()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 46
    .line 47
    if-gt v2, v6, :cond_1

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    move v3, v2

    .line 52
    move-object v4, v5

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iput v2, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 55
    .line 56
    return-object v5

    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v4, :cond_4

    .line 61
    .line 62
    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_4
    return-object v1
.end method
