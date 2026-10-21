.class final Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InvalidateOnAnimationRunnable"
.end annotation


# instance fields
.field private mPosted:Z

.field private mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

.field private mTempViews:[Landroid/view/View;

.field private final mViewRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method

.method private postIfNeededLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-boolean v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->postIfNeededLocked()V

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 24
    .line 25
    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 26
    .line 27
    if-ne v2, p1, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 35
    .line 36
    .line 37
    :cond_0
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->this$0:Landroid/view/ViewRootImpl;

    .line 60
    .line 61
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 70
    .line 71
    :cond_2
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1
.end method

.method public run()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mPosted:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-array v3, v1, [Landroid/view/View;

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [Landroid/view/View;

    .line 27
    .line 28
    iput-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 29
    .line 30
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViews:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v2, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-array v4, v2, [Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, [Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 57
    .line 58
    iput-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 59
    .line 60
    iget-object v3, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mViewRects:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 63
    .line 64
    .line 65
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    move v3, v0

    .line 67
    :goto_2
    if-ge v3, v1, :cond_4

    .line 68
    .line 69
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 70
    .line 71
    aget-object v4, v4, v3

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViews:[Landroid/view/View;

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    aput-object v5, v4, v3

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_3
    if-ge v0, v2, :cond_5

    .line 85
    .line 86
    iget-object v1, p0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->mTempViewRects:[Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 87
    .line 88
    aget-object v1, v1, v0

    .line 89
    .line 90
    iget-object v3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 91
    .line 92
    iget v4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 93
    .line 94
    iget v5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 95
    .line 96
    iget v6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 97
    .line 98
    iget v7, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 99
    .line 100
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw v0
.end method
