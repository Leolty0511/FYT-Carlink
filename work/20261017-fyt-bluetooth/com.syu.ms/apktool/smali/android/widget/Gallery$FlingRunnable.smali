.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field public final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private endFling(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {p1}, Landroid/widget/Gallery;->access$500(Landroid/widget/Gallery;)V

    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0, v2}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/widget/Gallery;->access$602(Landroid/widget/Gallery;Z)Z

    .line 4
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 5
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 7
    iget v3, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_2

    .line 8
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v4}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    sub-int/2addr v6, v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    :goto_0
    invoke-static {v4, v6}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 9
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->access$900(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->access$1000(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 10
    :cond_2
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v4}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v6, v5

    add-int/lit8 v5, v6, -0x1

    :goto_1
    invoke-static {v4, v5}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 12
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->access$1100(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->access$1200(Landroid/widget/Gallery;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    neg-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 13
    :goto_2
    iget-object v4, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v4, v3}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v1}, Landroid/widget/Gallery;->access$600(Landroid/widget/Gallery;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 16
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 17
    :cond_4
    invoke-direct {p0, v2}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    :goto_3
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 3
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {p1}, Landroid/widget/Gallery;->access$400(Landroid/widget/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 2
    iput v2, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 3
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4
    iget-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
