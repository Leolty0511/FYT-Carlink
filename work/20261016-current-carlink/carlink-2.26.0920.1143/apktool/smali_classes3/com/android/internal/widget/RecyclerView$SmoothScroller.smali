.class public abstract Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private final mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "RecyclerView"

    .line 51
    .line 52
    const-string v2, "Passed over target position while smooth scrolling."

    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 59
    .line 60
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 90
    .line 91
    iget-object p1, v0, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method public normalize(Landroid/graphics/PointF;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    .line 3
    mul-float/2addr v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 5
    .line 6
    mul-float/2addr v1, v1

    .line 7
    add-float/2addr v1, v0

    .line 8
    float-to-double v0, v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 14
    .line 15
    float-to-double v2, v2

    .line 16
    div-double/2addr v2, v0

    .line 17
    double-to-float v2, v2

    .line 18
    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 19
    .line 20
    iget v2, p1, Landroid/graphics/PointF;->y:F

    .line 21
    .line 22
    float-to-double v2, v2

    .line 23
    div-double/2addr v2, v0

    .line 24
    double-to-float v0, v2

    .line 25
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public abstract onSeekTargetStep(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method public start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    iget p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView$State;->access$1102(Lcom/android/internal/widget/RecyclerView$State;I)I

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "Invalid target position"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$State;->access$1102(Lcom/android/internal/widget/RecyclerView$State;I)I

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 19
    .line 20
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->access$1200(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 35
    .line 36
    return-void
.end method
