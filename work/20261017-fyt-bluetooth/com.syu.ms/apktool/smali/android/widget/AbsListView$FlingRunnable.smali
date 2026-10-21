.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field public final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method public static synthetic access$1300(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method


# virtual methods
.method public edgeReached(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5
    iget-object p1, p1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    if-lez p1, :cond_2

    .line 9
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 11
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endFling()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)V

    .line 6
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 9
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void
.end method

.method public flywheelTouch()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    sub-int v6, v14, v1

    .line 7
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v13, 0x0

    move v8, v1

    invoke-static/range {v4 .. v13}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v4

    if-eqz v4, :cond_6

    if-gtz v1, :cond_1

    if-lez v14, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-ltz v1, :cond_2

    if-gez v14, :cond_2

    move v2, v3

    :cond_2
    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-eqz v2, :cond_5

    neg-int v1, v1

    .line 10
    :cond_5
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 12
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 13
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_4

    .line 15
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 16
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_a

    .line 17
    invoke-virtual {v0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 18
    :cond_a
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_5

    .line 19
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 20
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 22
    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v4, v0

    if-lez v4, :cond_c

    .line 23
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v6, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 24
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 25
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v6, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 26
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 27
    :cond_c
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    .line 28
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v7, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 29
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 30
    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, v6, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 31
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v6}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    neg-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 32
    :goto_2
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v6, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v7, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_3

    :cond_d
    move v6, v2

    .line 34
    :goto_3
    iget-object v7, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v4, v4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v7

    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    move v2, v3

    :cond_e
    if-eqz v2, :cond_10

    if-eqz v5, :cond_f

    .line 35
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v6

    sub-int v0, v4, v0

    neg-int v7, v0

    .line 36
    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    :cond_f
    if-eqz v1, :cond_13

    .line 37
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_4

    :cond_10
    if-eqz v1, :cond_12

    if-nez v2, :cond_12

    if-eqz v7, :cond_11

    .line 38
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 39
    :cond_11
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 40
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 41
    :cond_12
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_13
    :goto_4
    return-void

    .line 42
    :cond_14
    :goto_5
    invoke-virtual {p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    return-void
.end method

.method public start(I)V
    .locals 10

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1
    iput v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x4

    iput v0, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {p1}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v0, "AbsListView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/widget/AbsListView;->access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method public startOverfling(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)I

    move-result v4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x6

    iput v0, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startScroll(IIZ)V
    .locals 7

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    .line 1
    iput v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object p3, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 p2, 0x4

    iput p2, p1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSpringback()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$1700(Landroid/widget/AbsListView;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    :goto_0
    return-void
.end method
