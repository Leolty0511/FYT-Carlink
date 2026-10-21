.class public Lcom/android/internal/widget/LinearLayoutManager;
.super Lcom/android/internal/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;,
        Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;,
        Lcom/android/internal/widget/LinearLayoutManager$SavedState;,
        Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field final mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialItemPrefetchCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

.field mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 8
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 10
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 11
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 22
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 24
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;-><init>(Lcom/android/internal/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 25
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 27
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 28
    iget p2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setOrientation(I)V

    .line 29
    iget-boolean p2, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 30
    iget-boolean p1, p1, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method private computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 23
    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    move-object v2, v3

    .line 33
    move-object v3, v4

    .line 34
    move-object v4, p0

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 23
    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 30
    .line 31
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move-object v2, v3

    .line 35
    move-object v3, v4

    .line 36
    move-object v4, p0

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method private computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 23
    .line 24
    xor-int/2addr v0, v2

    .line 25
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    move-object v2, v3

    .line 33
    move-object v3, v4

    .line 34
    move-object v4, p0

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/ScrollbarHelper;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method private findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method private findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findLastReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method private fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, p1

    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 31
    .line 32
    .line 33
    add-int/2addr p3, p2

    .line 34
    return p3

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p1, p3

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 29
    .line 30
    neg-int p4, p1

    .line 31
    invoke-virtual {p3, p4}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 32
    .line 33
    .line 34
    sub-int/2addr p2, p1

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_8

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_8

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_8

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    move v7, v5

    .line 50
    move v8, v7

    .line 51
    move v9, v8

    .line 52
    :goto_0
    if-ge v7, v4, :cond_5

    .line 53
    .line 54
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    check-cast v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 59
    .line 60
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    const/4 v12, 0x1

    .line 72
    if-ge v11, v6, :cond_2

    .line 73
    .line 74
    move v11, v12

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v11, v5

    .line 77
    :goto_1
    iget-boolean v13, v0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 78
    .line 79
    const/4 v14, -0x1

    .line 80
    if-eq v11, v13, :cond_3

    .line 81
    .line 82
    move v12, v14

    .line 83
    :cond_3
    if-ne v12, v14, :cond_4

    .line 84
    .line 85
    iget-object v11, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 86
    .line 87
    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    add-int/2addr v8, v10

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget-object v11, v0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 96
    .line 97
    iget-object v10, v10, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 98
    .line 99
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    add-int/2addr v9, v10

    .line 104
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iget-object v4, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 108
    .line 109
    iput-object v3, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 110
    .line 111
    if-lez v8, :cond_6

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    move/from16 v4, p3

    .line 122
    .line 123
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 124
    .line 125
    .line 126
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 127
    .line 128
    iput v8, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 129
    .line 130
    iput v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 136
    .line 137
    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 138
    .line 139
    .line 140
    :cond_6
    if-lez v9, :cond_7

    .line 141
    .line 142
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    move/from16 v4, p4

    .line 151
    .line 152
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 156
    .line 157
    iput v9, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 158
    .line 159
    iput v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 165
    .line 166
    invoke-virtual {p0, v1, v3, v2, v5}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 167
    .line 168
    .line 169
    :cond_7
    iget-object v1, v0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    iput-object v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 173
    .line 174
    :cond_8
    :goto_3
    return-void
.end method

.method private logChildren()V
    .locals 5

    .line 1
    const-string v0, "internal representation of views on the screen"

    .line 2
    .line 3
    const-string v1, "LinearLayoutManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "item "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ", coord:"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "=============="

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V
    .locals 2

    .line 1
    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget p2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p2, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 22
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method private recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V
    .locals 0

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-le p3, p2, :cond_1

    .line 5
    .line 6
    add-int/lit8 p3, p3, -0x1

    .line 7
    .line 8
    :goto_0
    if-lt p3, p2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 p3, p3, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, p2

    .line 15
    iget-boolean p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    move v2, p2

    .line 21
    :goto_0
    if-ge v2, v0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-lt v4, v1, :cond_2

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ge v3, v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 52
    .line 53
    move p2, v0

    .line 54
    :goto_2
    if-ltz p2, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-lt v3, v1, :cond_5

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ge v2, v1, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Lcom/android/internal/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    move v1, v0

    .line 15
    :goto_0
    if-ltz v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-gt v3, p2, :cond_2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-le v2, p2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const/4 v1, 0x0

    .line 46
    move v2, v1

    .line 47
    :goto_2
    if-ge v2, v0, :cond_6

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-gt v4, p2, :cond_5

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-le v3, p2, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleChildren(Lcom/android/internal/widget/RecyclerView$Recycler;II)V

    .line 74
    .line 75
    .line 76
    :cond_6
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 22
    .line 23
    :goto_1
    return-void
.end method

.method private updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3, v0, p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 29
    .line 30
    if-eq v0, v3, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    iget-boolean v0, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_0
    if-eqz p1, :cond_8

    .line 47
    .line 48
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_7

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_7

    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ge p2, v0, :cond_4

    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-ge p1, p2, :cond_5

    .line 90
    .line 91
    :cond_4
    move v1, v2

    .line 92
    :cond_5
    if-eqz v1, :cond_7

    .line 93
    .line 94
    iget-boolean p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    :goto_1
    iput p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 112
    .line 113
    :cond_7
    return v2

    .line 114
    :cond_8
    return v1
.end method

.method private updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_f

    .line 7
    .line 8
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-ltz v0, :cond_e

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lt v0, p1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 28
    .line 29
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 45
    .line 46
    iput-boolean p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 57
    .line 58
    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 59
    .line 60
    sub-int/2addr p1, v1

    .line 61
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 71
    .line 72
    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 73
    .line 74
    add-int/2addr p1, v1

    .line 75
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 76
    .line 77
    :goto_0
    return v0

    .line 78
    :cond_3
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 79
    .line 80
    if-ne p1, v3, :cond_c

    .line 81
    .line 82
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_8

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-le v2, v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 105
    .line 106
    .line 107
    return v0

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 109
    .line 110
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    sub-int/2addr v2, v3

    .line 121
    if-gez v2, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 130
    .line 131
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 132
    .line 133
    return v0

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sub-int/2addr v1, v2

    .line 147
    if-gez v1, :cond_6

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 156
    .line 157
    iput-boolean v0, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 158
    .line 159
    return v0

    .line 160
    :cond_6
    iget-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 161
    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 165
    .line 166
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpaceChange()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    add-int/2addr v1, p1

    .line 177
    goto :goto_1

    .line 178
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    :goto_1
    iput v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-lez p1, :cond_b

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 202
    .line 203
    if-ge v2, p1, :cond_9

    .line 204
    .line 205
    move p1, v0

    .line 206
    goto :goto_2

    .line 207
    :cond_9
    move p1, v1

    .line 208
    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 209
    .line 210
    if-ne p1, v2, :cond_a

    .line 211
    .line 212
    move v1, v0

    .line 213
    :cond_a
    iput-boolean v1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 214
    .line 215
    :cond_b
    invoke-virtual {p2}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 216
    .line 217
    .line 218
    :goto_3
    return v0

    .line 219
    :cond_c
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 220
    .line 221
    iput-boolean p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 232
    .line 233
    sub-int/2addr p1, v1

    .line 234
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_d
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 244
    .line 245
    add-int/2addr p1, v1

    .line 246
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 247
    .line 248
    :goto_4
    return v0

    .line 249
    :cond_e
    :goto_5
    iput v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 250
    .line 251
    iput v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 252
    .line 253
    :cond_f
    :goto_6
    return v1
.end method

.method private updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorFromChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput p1, p3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 31
    .line 32
    return-void
.end method

.method private updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 10
    .line 11
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    iput p4, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 16
    .line 17
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 18
    .line 19
    iput p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    iget p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v2, p1

    .line 34
    iput v2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v1

    .line 48
    :goto_0
    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 55
    .line 56
    iget v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 57
    .line 58
    add-int/2addr v0, v2

    .line 59
    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 60
    .line 61
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 62
    .line 63
    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    iput p4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 68
    .line 69
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 70
    .line 71
    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 76
    .line 77
    invoke-virtual {p4}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    sub-int/2addr p1, p4

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 88
    .line 89
    iget v2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    add-int/2addr v3, v2

    .line 98
    iput v3, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 99
    .line 100
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 101
    .line 102
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    move v0, v1

    .line 107
    :cond_2
    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 114
    .line 115
    iget v2, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 116
    .line 117
    add-int/2addr v0, v2

    .line 118
    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 119
    .line 120
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 121
    .line 122
    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    iput p4, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 127
    .line 128
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 129
    .line 130
    invoke-virtual {p4, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    neg-int p1, p1

    .line 135
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 136
    .line 137
    invoke-virtual {p4}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 138
    .line 139
    .line 140
    move-result p4

    .line 141
    add-int/2addr p1, p4

    .line 142
    :goto_1
    iget-object p4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 143
    .line 144
    iput p2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 145
    .line 146
    if-eqz p3, :cond_3

    .line 147
    .line 148
    sub-int/2addr p2, p1

    .line 149
    iput p2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 150
    .line 151
    :cond_3
    iput p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 152
    .line 153
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 4
    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 5
    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 6
    iput p2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 7
    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 4
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 5
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 6
    iput p2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 7
    iput p1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    const/4 p2, 0x1

    .line 17
    if-lez p1, :cond_2

    .line 18
    .line 19
    move v0, p2

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 v0, -0x1

    .line 22
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 30
    .line 31
    invoke-virtual {p0, p3, p1, p4}, Lcom/android/internal/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_2
    return-void
.end method

.method public collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 14
    .line 15
    iget-boolean v3, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 16
    .line 17
    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 24
    .line 25
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v0, p1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v2

    .line 35
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const/4 v1, 0x1

    .line 39
    :goto_1
    move v3, v2

    .line 40
    :goto_2
    iget v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    .line 41
    .line 42
    if-ge v3, v4, :cond_4

    .line 43
    .line 44
    if-ltz v0, :cond_4

    .line 45
    .line 46
    if-ge v0, p1, :cond_4

    .line 47
    .line 48
    invoke-interface {p2, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 49
    .line 50
    .line 51
    add-int/2addr v0, v1

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    return-void
.end method

.method public collectPrefetchPositionsForLayoutState(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    .line 1
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    iget p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 12
    .line 13
    invoke-interface {p3, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ge p1, v1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    :cond_2
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/PointF;

    .line 33
    .line 34
    int-to-float v1, v2

    .line 35
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    .line 40
    .line 41
    int-to-float v1, v2

    .line 42
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_b

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_8

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    const/high16 v3, -0x80000000

    .line 11
    .line 12
    if-eq p1, v2, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    if-eq p1, v2, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x42

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x82

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 28
    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v3

    .line 33
    :goto_0
    return v1

    .line 34
    :cond_2
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v1, v3

    .line 40
    :goto_1
    return v1

    .line 41
    :cond_4
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 42
    .line 43
    if-ne p1, v1, :cond_5

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_5
    move v0, v3

    .line 47
    :goto_2
    return v0

    .line 48
    :cond_6
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 49
    .line 50
    if-nez p1, :cond_7

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_7
    move v0, v3

    .line 54
    :goto_3
    return v0

    .line 55
    :cond_8
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 56
    .line 57
    if-ne p1, v1, :cond_9

    .line 58
    .line 59
    return v1

    .line 60
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_a

    .line 65
    .line 66
    return v0

    .line 67
    :cond_a
    return v1

    .line 68
    :cond_b
    iget p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 69
    .line 70
    if-ne p1, v1, :cond_c

    .line 71
    .line 72
    return v0

    .line 73
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_d

    .line 78
    .line 79
    return v1

    .line 80
    :cond_d
    return v0
.end method

.method public createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method public ensureLayoutState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->createLayoutState()Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/android/internal/widget/OrientationHelper;->createOrientationHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;I)Lcom/android/internal/widget/OrientationHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I
    .locals 7

    .line 1
    iget v0, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 2
    .line 3
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 18
    .line 19
    iget v3, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutChunkResult:Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;

    .line 23
    .line 24
    :cond_2
    iget-boolean v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 25
    .line 26
    if-nez v4, :cond_3

    .line 27
    .line 28
    if-lez v1, :cond_9

    .line 29
    .line 30
    :cond_3
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->hasMore(Lcom/android/internal/widget/RecyclerView$State;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_9

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/internal/widget/LinearLayoutManager;->layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 48
    .line 49
    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 50
    .line 51
    iget v6, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 52
    .line 53
    mul-int/2addr v5, v6

    .line 54
    add-int/2addr v5, v4

    .line 55
    iput v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 56
    .line 57
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 58
    .line 59
    if-eqz v4, :cond_5

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 64
    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_6

    .line 72
    .line 73
    :cond_5
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 74
    .line 75
    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 79
    .line 80
    sub-int/2addr v1, v5

    .line 81
    :cond_6
    iget v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 82
    .line 83
    if-eq v4, v2, :cond_8

    .line 84
    .line 85
    iget v5, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 86
    .line 87
    add-int/2addr v4, v5

    .line 88
    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 89
    .line 90
    iget v5, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 91
    .line 92
    if-gez v5, :cond_7

    .line 93
    .line 94
    add-int/2addr v4, v5

    .line 95
    iput v4, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 96
    .line 97
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LinearLayoutManager;->recycleByLayoutState(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;)V

    .line 98
    .line 99
    .line 100
    :cond_8
    if-eqz p4, :cond_2

    .line 101
    .line 102
    iget-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 103
    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    :cond_9
    :goto_0
    iget p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 107
    .line 108
    sub-int/2addr v0, p1

    .line 109
    return v0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :goto_0
    return v3
.end method

.method public findLastVisibleItemPosition()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/internal/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    :goto_0
    return v3
.end method

.method public findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le p2, p1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, -0x1

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-eq p1, p2, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 35
    .line 36
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v5, v1, :cond_3

    .line 41
    .line 42
    if-le v6, v0, :cond_3

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    if-lt v5, v0, :cond_1

    .line 47
    .line 48
    if-gt v6, v1, :cond_1

    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_1
    if-eqz p4, :cond_3

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move-object v3, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    return-object v4

    .line 58
    :cond_3
    :goto_2
    add-int/2addr p1, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    return-object v3
.end method

.method public findReferenceChild(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-le p4, p3, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, -0x1

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    move-object v2, v1

    .line 23
    :goto_1
    if-eq p3, p4, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ltz v4, :cond_4

    .line 34
    .line 35
    if-ge v4, p5, :cond_4

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    move-object v2, v3

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ge v4, p2, :cond_3

    .line 60
    .line 61
    iget-object v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ge v4, p1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    return-object v3

    .line 71
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 72
    .line 73
    move-object v1, v3

    .line 74
    :cond_4
    :goto_3
    add-int/2addr p3, v0

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    if-eqz v1, :cond_6

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move-object v1, v2

    .line 80
    :goto_4
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int v1, p1, v1

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public getInitialItemPrefetchCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public layoutChunk(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 1
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->next(Lcom/android/internal/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean p2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v6, v0

    .line 16
    check-cast v6, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 17
    .line 18
    iget-object v0, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 25
    .line 26
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 27
    .line 28
    if-ne v3, v1, :cond_1

    .line 29
    .line 30
    move v3, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_0
    if-ne v0, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 44
    .line 45
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 46
    .line 47
    if-ne v3, v1, :cond_4

    .line 48
    .line 49
    move v3, p2

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v3, v2

    .line 52
    :goto_1
    if-ne v0, v3, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 71
    .line 72
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 73
    .line 74
    if-ne v0, p2, :cond_8

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sub-int/2addr v0, v2

    .line 91
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    sub-int v2, v0, v2

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    add-int/2addr v0, v2

    .line 111
    :goto_3
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 112
    .line 113
    if-ne v3, v1, :cond_7

    .line 114
    .line 115
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 116
    .line 117
    iget v1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 118
    .line 119
    sub-int v1, p3, v1

    .line 120
    .line 121
    move v5, p3

    .line 122
    move v4, v0

    .line 123
    move v3, v1

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 126
    .line 127
    iget v1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 128
    .line 129
    add-int/2addr v1, p3

    .line 130
    move v3, p3

    .line 131
    move v4, v0

    .line 132
    move v5, v1

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 139
    .line 140
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    add-int/2addr v2, v0

    .line 145
    iget v3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 146
    .line 147
    if-ne v3, v1, :cond_9

    .line 148
    .line 149
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 150
    .line 151
    iget v1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 152
    .line 153
    sub-int v1, p3, v1

    .line 154
    .line 155
    move v4, p3

    .line 156
    move v3, v0

    .line 157
    move v5, v2

    .line 158
    move v2, v1

    .line 159
    goto :goto_4

    .line 160
    :cond_9
    iget p3, p3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 161
    .line 162
    iget v1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 163
    .line 164
    add-int/2addr v1, p3

    .line 165
    move v3, v0

    .line 166
    move v4, v1

    .line 167
    move v5, v2

    .line 168
    move v2, p3

    .line 169
    :goto_4
    move-object v0, p0

    .line 170
    move-object v1, p1

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-nez p3, :cond_a

    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-eqz p3, :cond_b

    .line 185
    .line 186
    :cond_a
    iput-boolean p2, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 187
    .line 188
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput-boolean p1, p4, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 193
    .line 194
    return-void
.end method

.method public onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 p2, -0x80000000

    .line 17
    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 22
    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/internal/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    if-nez v2, :cond_3

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    const v4, 0x3eaaaaab

    .line 50
    .line 51
    .line 52
    mul-float/2addr v3, v4

    .line 53
    float-to-int v3, v3

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, v3, v4, p4}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 59
    .line 60
    iput p2, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 61
    .line 62
    iput-boolean v4, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p3, v3, p4, p2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 66
    .line 67
    .line 68
    if-ne p1, v1, :cond_4

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    if-eq p1, v2, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-nez p2, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    return-object p1

    .line 89
    :cond_6
    :goto_2
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 31
    .line 32
    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 48
    .line 49
    iget-boolean v3, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 55
    .line 56
    if-ne v3, v1, :cond_3

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 66
    .line 67
    iget-boolean v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 68
    .line 69
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 70
    .line 71
    xor-int/2addr v3, v5

    .line 72
    iput-boolean v3, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 73
    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 78
    .line 79
    iput-boolean v4, v0, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LinearLayoutManager;->getExtraLayoutSpace(Lcom/android/internal/widget/RecyclerView$State;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 86
    .line 87
    iget v3, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 88
    .line 89
    if-ltz v3, :cond_5

    .line 90
    .line 91
    move v3, v0

    .line 92
    move v0, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    move v3, v2

    .line 95
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    add-int/2addr v5, v0

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEndPadding()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v0, v3

    .line 109
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 116
    .line 117
    if-eq v3, v1, :cond_8

    .line 118
    .line 119
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 120
    .line 121
    const/high16 v7, -0x80000000

    .line 122
    .line 123
    if-eq v6, v7, :cond_8

    .line 124
    .line 125
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 132
    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 136
    .line 137
    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    iget-object v7, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 142
    .line 143
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    sub-int/2addr v6, v3

    .line 148
    iget v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 152
    .line 153
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    iget-object v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    sub-int/2addr v3, v6

    .line 164
    iget v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 165
    .line 166
    :goto_1
    sub-int/2addr v6, v3

    .line 167
    if-lez v6, :cond_7

    .line 168
    .line 169
    add-int/2addr v5, v6

    .line 170
    goto :goto_2

    .line 171
    :cond_7
    sub-int/2addr v0, v6

    .line 172
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 173
    .line 174
    iget-boolean v6, v3, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 175
    .line 176
    if-eqz v6, :cond_a

    .line 177
    .line 178
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 179
    .line 180
    if-eqz v6, :cond_b

    .line 181
    .line 182
    :cond_9
    move v1, v4

    .line 183
    goto :goto_3

    .line 184
    :cond_a
    iget-boolean v6, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 185
    .line 186
    if-eqz v6, :cond_9

    .line 187
    .line 188
    :cond_b
    :goto_3
    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->onAnchorReady(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveIsInfinite()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iput-boolean v3, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    iput-boolean v3, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 209
    .line 210
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 211
    .line 212
    iget-boolean v3, v1, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 213
    .line 214
    if-eqz v3, :cond_d

    .line 215
    .line 216
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 220
    .line 221
    iput v5, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 222
    .line 223
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 227
    .line 228
    iget v3, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 229
    .line 230
    iget v5, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 231
    .line 232
    iget v1, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 233
    .line 234
    if-lez v1, :cond_c

    .line 235
    .line 236
    add-int/2addr v0, v1

    .line 237
    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 238
    .line 239
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 243
    .line 244
    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 245
    .line 246
    iget v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 247
    .line 248
    iget v6, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 249
    .line 250
    add-int/2addr v0, v6

    .line 251
    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 252
    .line 253
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 257
    .line 258
    iget v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 259
    .line 260
    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 261
    .line 262
    if-lez v0, :cond_10

    .line 263
    .line 264
    invoke-direct {p0, v5, v3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 265
    .line 266
    .line 267
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 268
    .line 269
    iput v0, v3, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 270
    .line 271
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 275
    .line 276
    iget v3, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 283
    .line 284
    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 285
    .line 286
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 290
    .line 291
    iget v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 292
    .line 293
    iget v3, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 294
    .line 295
    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 296
    .line 297
    if-lez v0, :cond_e

    .line 298
    .line 299
    add-int/2addr v5, v0

    .line 300
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 301
    .line 302
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 306
    .line 307
    iput v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 308
    .line 309
    iget v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 310
    .line 311
    iget v6, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 312
    .line 313
    add-int/2addr v5, v6

    .line 314
    iput v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 315
    .line 316
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 320
    .line 321
    iget v5, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 322
    .line 323
    iget v0, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 324
    .line 325
    if-lez v0, :cond_f

    .line 326
    .line 327
    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 331
    .line 332
    iput v0, v1, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 333
    .line 334
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 338
    .line 339
    iget v1, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 340
    .line 341
    :cond_f
    move v3, v5

    .line 342
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-lez v0, :cond_12

    .line 347
    .line 348
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 349
    .line 350
    iget-boolean v5, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 351
    .line 352
    xor-int/2addr v0, v5

    .line 353
    if-eqz v0, :cond_11

    .line 354
    .line 355
    invoke-direct {p0, v1, p1, p2, v4}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    add-int/2addr v3, v0

    .line 360
    add-int/2addr v1, v0

    .line 361
    invoke-direct {p0, v3, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    goto :goto_5

    .line 366
    :cond_11
    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutStartGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    add-int/2addr v3, v0

    .line 371
    add-int/2addr v1, v0

    .line 372
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/internal/widget/LinearLayoutManager;->fixLayoutEndGap(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    :goto_5
    add-int/2addr v3, v0

    .line 377
    add-int/2addr v1, v0

    .line 378
    :cond_12
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-nez p1, :cond_13

    .line 386
    .line 387
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->onLayoutComplete()V

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_13
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 396
    .line 397
    .line 398
    :goto_6
    iget-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 399
    .line 400
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 401
    .line 402
    return-void
.end method

.method public onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 9
    .line 10
    const/high16 p1, -0x80000000

    .line 11
    .line 12
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mAnchorInfo:Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>(Lcom/android/internal/widget/LinearLayoutManager$SavedState;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 30
    .line 31
    xor-int/2addr v1, v2

    .line 32
    iput-boolean v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sub-int/2addr v2, v3

    .line 53
    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iput v2, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    sub-int/2addr v1, v2

    .line 85
    iput v1, v0, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-object v0
.end method

.method public prepareForDrop(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    .line 1
    const-string p3, "Cannot drop a view during a scroll or layout calculation"

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    const/4 v0, 0x1

    .line 21
    const/4 v1, -0x1

    .line 22
    if-ge p3, p4, :cond_0

    .line 23
    .line 24
    move p3, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p3, v1

    .line 27
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-ne p3, v0, :cond_1

    .line 32
    .line 33
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/2addr p1, p2

    .line 52
    sub-int/2addr p3, p1

    .line 53
    invoke-virtual {p0, p4, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getEndAfterPadding()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    sub-int/2addr p1, p2

    .line 70
    invoke-virtual {p0, p4, p1}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-ne p3, v1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p4, p1}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 87
    .line 88
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget-object p3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 93
    .line 94
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    sub-int/2addr p2, p1

    .line 99
    invoke-virtual {p0, p4, p2}, Lcom/android/internal/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void
.end method

.method public resolveIsInfinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/internal/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 17
    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-direct {p0, v0, v3, v2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->updateLayoutState(IIZLcom/android/internal/widget/RecyclerView$State;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 32
    .line 33
    iget v4, v2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 34
    .line 35
    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/android/internal/widget/LinearLayoutManager;->fill(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/LinearLayoutManager$LayoutState;Lcom/android/internal/widget/RecyclerView$State;Z)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v4

    .line 40
    if-gez p2, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    if-le v3, p2, :cond_3

    .line 44
    .line 45
    mul-int p1, v0, p2

    .line 46
    .line 47
    :cond_3
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 48
    .line 49
    neg-int p3, p1

    .line 50
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/OrientationHelper;->offsetChildren(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLayoutState:Lcom/android/internal/widget/LinearLayoutManager$LayoutState;

    .line 54
    .line 55
    iput p1, p2, Lcom/android/internal/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 2
    .line 3
    iput p2, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LinearLayoutManager;->scrollBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mInitialItemPrefetchCount:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "invalid orientation:"

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iput p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientation:I

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public shouldMeasureTwice()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->hasFlexibleChildInBothOrientations()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/android/internal/widget/LinearSmoothScroller;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mPendingSavedState:Lcom/android/internal/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validateChildOrder()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "validating child count "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "LinearLayoutManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ge v0, v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iget-object v3, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-boolean v4, p0, Lcom/android/internal/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 52
    .line 53
    const-string v5, "detected invalid location"

    .line 54
    .line 55
    const-string v6, "detected invalid position. loc invalid? "

    .line 56
    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    move v4, v1

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-ge v4, v7, :cond_8

    .line 65
    .line 66
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 75
    .line 76
    invoke-virtual {v9, v7}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ge v8, v2, :cond_2

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 83
    .line 84
    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    if-ge v7, v3, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v1, v0

    .line 96
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v2

    .line 107
    :cond_2
    if-gt v7, v3, :cond_3

    .line 108
    .line 109
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    move v4, v1

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-ge v4, v7, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    iget-object v9, p0, Lcom/android/internal/widget/LinearLayoutManager;->mOrientationHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 137
    .line 138
    invoke-virtual {v9, v7}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-ge v8, v2, :cond_6

    .line 143
    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 145
    .line 146
    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    if-ge v7, v3, :cond_5

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_5
    move v1, v0

    .line 158
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v2

    .line 169
    :cond_6
    if-lt v7, v3, :cond_7

    .line 170
    .line 171
    add-int/lit8 v4, v4, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/LinearLayoutManager;->logChildren()V

    .line 175
    .line 176
    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    .line 178
    .line 179
    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_8
    return-void
.end method
