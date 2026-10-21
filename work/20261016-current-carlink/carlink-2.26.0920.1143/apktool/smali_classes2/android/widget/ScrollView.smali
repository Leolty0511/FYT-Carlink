.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 9
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 11
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 13
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 14
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 15
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 16
    sget-object v0, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    :cond_0
    return-void
.end method

.method private canScroll()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 17
    .line 18
    add-int/2addr v1, v3

    .line 19
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_0
    return v0
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    if-ge v4, v1, :cond_8

    .line 15
    .line 16
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    if-ge p2, v8, :cond_7

    .line 31
    .line 32
    if-ge v7, p3, :cond_7

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-ge p2, v7, :cond_0

    .line 36
    .line 37
    if-ge v8, p3, :cond_0

    .line 38
    .line 39
    move v10, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v10, v3

    .line 42
    :goto_1
    if-nez v2, :cond_1

    .line 43
    .line 44
    move-object v2, v6

    .line 45
    move v5, v10

    .line 46
    goto :goto_4

    .line 47
    :cond_1
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-lt v7, v11, :cond_3

    .line 54
    .line 55
    :cond_2
    if-nez p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-le v8, v7, :cond_4

    .line 62
    .line 63
    :cond_3
    move v7, v9

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move v7, v3

    .line 66
    :goto_2
    if-eqz v5, :cond_5

    .line 67
    .line 68
    if-eqz v10, :cond_7

    .line 69
    .line 70
    if-eqz v7, :cond_7

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    if-eqz v10, :cond_6

    .line 74
    .line 75
    move-object v2, v6

    .line 76
    move v5, v9

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    if-eqz v7, :cond_7

    .line 79
    .line 80
    :goto_3
    move-object v2, v6

    .line 81
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    return-object v2
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    if-lez p1, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_2

    .line 12
    .line 13
    if-gez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    int-to-float v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v2, v1, v0}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 24
    .line 25
    sub-int/2addr v2, v3

    .line 26
    sub-int/2addr v0, v2

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v3, v0

    .line 19
    if-lt p2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sub-int/2addr v3, v0

    .line 26
    if-ge p2, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lt p1, p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-ge p1, p2, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_0
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 14
    .line 15
    .line 16
    const/high16 v0, 0x40000

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 66
    .line 67
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v1, p0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroid/view/View;

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    add-int/2addr p1, p2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lt p1, v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    sub-int/2addr p1, p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-int/2addr p2, p3

    .line 32
    if-gt p1, p2, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    if-nez v0, :cond_0

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
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    iput v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 36
    .line 37
    iget-object p1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    const/16 v2, 0x21

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    move v2, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    invoke-direct {p0, v2, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    :cond_1
    if-lt p2, v1, :cond_2

    .line 27
    .line 28
    if-gt p3, v0, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    if-eqz v2, :cond_3

    .line 32
    .line 33
    sub-int/2addr p2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    sub-int p2, p3, v0

    .line 36
    .line 37
    :goto_1
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 38
    .line 39
    .line 40
    move v3, v4

    .line 41
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eq v5, p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 48
    .line 49
    .line 50
    :cond_4
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/16 v1, 0x21

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const/16 v4, 0x82

    .line 59
    .line 60
    if-ne p1, v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ge v1, v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-ne p1, v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-lez v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    add-int/2addr v6, v5

    .line 98
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    .line 99
    .line 100
    sub-int/2addr v6, v5

    .line 101
    sub-int/2addr v1, v6

    .line 102
    if-ge v1, v2, :cond_3

    .line 103
    .line 104
    move v2, v1

    .line 105
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 106
    .line 107
    return v3

    .line 108
    :cond_4
    if-ne p1, v4, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    neg-int v2, v2

    .line 112
    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 113
    .line 114
    .line 115
    :goto_2
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const/high16 v0, 0x20000

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 142
    .line 143
    .line 144
    :cond_6
    const/4 p1, 0x1

    .line 145
    return p1
.end method

.method public computeScroll()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 10
    .line 11
    iget v11, p0, Landroid/view/View;->mScrollY:I

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    if-eq v11, v12, :cond_4

    .line 28
    .line 29
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    if-lez v13, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 46
    :cond_2
    :goto_0
    move v14, v3

    .line 47
    sub-int v2, v1, v0

    .line 48
    .line 49
    sub-int v3, v12, v11

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    iget v9, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    move-object v1, p0

    .line 57
    move v4, v0

    .line 58
    move v5, v11

    .line 59
    move v7, v13

    .line 60
    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 61
    .line 62
    .line 63
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 64
    .line 65
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 66
    .line 67
    invoke-virtual {p0, v1, v2, v0, v11}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 68
    .line 69
    .line 70
    if-eqz v14, :cond_4

    .line 71
    .line 72
    if-gez v12, :cond_3

    .line 73
    .line 74
    if-ltz v11, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 77
    .line 78
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    float-to-int v1, v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-le v12, v13, :cond_4

    .line 90
    .line 91
    if-gt v11, v13, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    float-to-int v1, v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 124
    .line 125
    :cond_6
    :goto_2
    return-void
.end method

.method public computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int v3, v2, v0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-lez v5, :cond_1

    .line 26
    .line 27
    add-int/2addr v2, v4

    .line 28
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ge v5, v6, :cond_2

    .line 39
    .line 40
    sub-int/2addr v3, v4

    .line 41
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    if-le v4, v3, :cond_4

    .line 44
    .line 45
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    if-le v5, v2, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-le v4, v0, :cond_3

    .line 54
    .line 55
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    sub-int/2addr p1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    sub-int/2addr p1, v3

    .line 62
    :goto_0
    add-int/2addr p1, v1

    .line 63
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-int/2addr v0, v3

    .line 72
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    if-ge v5, v2, :cond_6

    .line 80
    .line 81
    if-ge v4, v3, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-le v4, v0, :cond_5

    .line 88
    .line 89
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    sub-int/2addr v3, p1

    .line 92
    sub-int/2addr v1, v3

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    sub-int/2addr v2, p1

    .line 97
    sub-int/2addr v1, v2

    .line 98
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    neg-int p1, p1

    .line 103
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :cond_6
    :goto_2
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 28
    .line 29
    sub-int v1, v2, v1

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-gez v3, :cond_1

    .line 36
    .line 37
    sub-int/2addr v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-le v3, v0, :cond_2

    .line 40
    .line 41
    sub-int/2addr v3, v0

    .line 42
    add-int/2addr v2, v3

    .line 43
    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    .line 34
    .line 35
    sub-int/2addr v4, v5

    .line 36
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    .line 37
    .line 38
    sub-int/2addr v4, v5

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    .line 44
    .line 45
    sub-int/2addr v5, v6

    .line 46
    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    .line 47
    .line 48
    sub-int/2addr v5, v7

    .line 49
    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    .line 50
    .line 51
    int-to-float v7, v7

    .line 52
    int-to-float v6, v6

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    move v6, v3

    .line 63
    move v7, v6

    .line 64
    :goto_0
    const/4 v8, 0x0

    .line 65
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    int-to-float v8, v8

    .line 70
    add-float/2addr v8, v6

    .line 71
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    invoke-virtual {v6, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 80
    .line 81
    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 112
    .line 113
    sub-int/2addr v1, v4

    .line 114
    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 115
    .line 116
    sub-int/2addr v1, v4

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    .line 122
    .line 123
    sub-int/2addr v4, v5

    .line 124
    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    .line 125
    .line 126
    sub-int/2addr v4, v6

    .line 127
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    .line 128
    .line 129
    int-to-float v6, v6

    .line 130
    int-to-float v5, v5

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    move v5, v3

    .line 141
    move v6, v5

    .line 142
    :goto_1
    neg-int v7, v1

    .line 143
    int-to-float v7, v7

    .line 144
    add-float/2addr v7, v6

    .line 145
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    add-int/2addr v0, v4

    .line 154
    int-to-float v0, v0

    .line 155
    add-float/2addr v0, v5

    .line 156
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    .line 158
    .line 159
    const/high16 v0, 0x43340000    # 180.0f

    .line 160
    .line 161
    int-to-float v5, v1

    .line 162
    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 166
    .line 167
    invoke-virtual {v0, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 182
    .line 183
    .line 184
    :cond_5
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "fillViewport"

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x82

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, p0, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    if-eq p1, p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_1
    return v1

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_9

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v3, 0x13

    .line 66
    .line 67
    const/16 v4, 0x21

    .line 68
    .line 69
    if-eq v0, v3, :cond_7

    .line 70
    .line 71
    const/16 v3, 0x14

    .line 72
    .line 73
    if-eq v0, v3, :cond_5

    .line 74
    .line 75
    const/16 v3, 0x3e

    .line 76
    .line 77
    if-eq v0, v3, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    move v2, v4

    .line 87
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    goto :goto_0

    .line 118
    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    :cond_9
    :goto_0
    return v1
.end method

.method public fling(I)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object v3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 27
    .line 28
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 29
    .line 30
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    sub-int/2addr v2, v0

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    const/4 v12, 0x0

    .line 42
    div-int/lit8 v13, v0, 0x2

    .line 43
    .line 44
    move v7, p1

    .line 45
    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const-string p1, "ScrollView-fling"

    .line 53
    .line 54
    invoke-static {p1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x82

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    sub-int/2addr v0, v1

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    sub-int/2addr v1, v3

    .line 49
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    .line 57
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 30
    .line 31
    sub-int/2addr v2, v3

    .line 32
    sub-int/2addr v2, v1

    .line 33
    if-ge v2, v0, :cond_1

    .line 34
    .line 35
    int-to-float v1, v2

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr v1, v0

    .line 38
    return v1

    .line 39
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 14
    .line 15
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v1, v0

    .line 20
    return v1

    .line 21
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method public measureChild(Landroid/view/View;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 6
    .line 7
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    .line 12
    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 17
    .line 18
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-static {p3, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 8
    .line 9
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/2addr v1, p3

    .line 19
    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    .line 21
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 26
    .line 27
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 28
    .line 29
    add-int/2addr p3, v1

    .line 30
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr p3, v1

    .line 33
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    .line 35
    add-int/2addr p3, v0

    .line 36
    add-int/2addr p3, p5

    .line 37
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    sub-int/2addr p4, p3

    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/high16 v0, 0x400000

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x1a

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget v1, p0, Landroid/widget/ScrollView;->mVerticalScrollFactor:F

    .line 41
    .line 42
    mul-float/2addr v0, v1

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 54
    .line 55
    sub-int v0, v2, v0

    .line 56
    .line 57
    if-gez v0, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-le v0, v1, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move v1, v0

    .line 65
    :goto_1
    if-eq v1, v2, :cond_5

    .line 66
    .line 67
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 68
    .line 69
    invoke-super {p0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 35
    .line 36
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    return v4

    .line 35
    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 36
    .line 37
    const-string v3, "ScrollView-scroll"

    .line 38
    .line 39
    if-eqz v0, :cond_a

    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    if-eq v0, v1, :cond_8

    .line 43
    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    if-eq v0, v1, :cond_8

    .line 48
    .line 49
    const/4 v1, 0x6

    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_4
    iget v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 60
    .line 61
    if-ne v0, v5, :cond_5

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ne v6, v5, :cond_6

    .line 70
    .line 71
    const-string p1, "Invalid pointerId="

    .line 72
    .line 73
    const-string v1, " in onInterceptTouchEvent"

    .line 74
    .line 75
    const-string v2, "ScrollView"

    .line 76
    .line 77
    invoke-static {p1, v0, v1, v2}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    float-to-int v0, v0

    .line 87
    iget v5, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 88
    .line 89
    sub-int v5, v0, v5

    .line 90
    .line 91
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iget v6, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 96
    .line 97
    if-le v5, v6, :cond_d

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    and-int/2addr v2, v5

    .line 104
    if-nez v2, :cond_d

    .line 105
    .line 106
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 107
    .line 108
    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 109
    .line 110
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 116
    .line 117
    .line 118
    iput v4, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 119
    .line 120
    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 121
    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 129
    .line 130
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_d

    .line 135
    .line 136
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 141
    .line 142
    iput v5, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 143
    .line 144
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 148
    .line 149
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 150
    .line 151
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 152
    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    float-to-int v0, v0

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    float-to-int v5, v5

    .line 183
    invoke-direct {p0, v5, v0}, Landroid/widget/ScrollView;->inChild(II)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_b

    .line 188
    .line 189
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 190
    .line 191
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_b
    iput v0, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 196
    .line 197
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 202
    .line 203
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 207
    .line 208
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    xor-int/2addr p1, v1

    .line 223
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 224
    .line 225
    if-eqz p1, :cond_c

    .line 226
    .line 227
    iget-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 228
    .line 229
    if-nez p1, :cond_c

    .line 230
    .line 231
    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iput-object p1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 236
    .line 237
    :cond_c
    invoke-virtual {p0, v2}, Landroid/view/View;->startNestedScroll(I)Z

    .line 238
    .line 239
    .line 240
    :cond_d
    :goto_0
    iget-boolean p1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 241
    .line 242
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 6
    .line 7
    iget-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p2, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-nez p4, :cond_4

    .line 30
    .line 31
    iget-object p4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 32
    .line 33
    if-eqz p4, :cond_1

    .line 34
    .line 35
    iget p4, p4, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 36
    .line 37
    iput p4, p0, Landroid/view/View;->mScrollY:I

    .line 38
    .line 39
    iput-object p2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-lez p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move p2, p1

    .line 57
    :goto_0
    sub-int/2addr p5, p3

    .line 58
    iget p3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 59
    .line 60
    sub-int/2addr p5, p3

    .line 61
    iget p3, p0, Landroid/view/View;->mPaddingTop:I

    .line 62
    .line 63
    sub-int/2addr p5, p3

    .line 64
    sub-int/2addr p2, p5

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iget p3, p0, Landroid/view/View;->mScrollY:I

    .line 70
    .line 71
    if-le p3, p2, :cond_3

    .line 72
    .line 73
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    if-gez p3, :cond_4

    .line 77
    .line 78
    iput p1, p0, Landroid/view/View;->mScrollY:I

    .line 79
    .line 80
    :cond_4
    :goto_1
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 81
    .line 82
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-lez p2, :cond_3

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/16 v2, 0x17

    .line 44
    .line 45
    if-lt v0, v2, :cond_2

    .line 46
    .line 47
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 48
    .line 49
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 50
    .line 51
    add-int/2addr v0, v2

    .line 52
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 53
    .line 54
    add-int/2addr v0, v2

    .line 55
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 56
    .line 57
    add-int/2addr v0, v2

    .line 58
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 59
    .line 60
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 61
    .line 62
    add-int/2addr v2, v3

    .line 63
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .line 65
    add-int/2addr v2, v3

    .line 66
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 70
    .line 71
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 72
    .line 73
    add-int/2addr v0, v2

    .line 74
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 75
    .line 76
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    .line 77
    .line 78
    :goto_0
    add-int/2addr v2, v3

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sub-int/2addr v3, v2

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ge v2, v3, :cond_3

    .line 89
    .line 90
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/high16 v0, 0x40000000    # 2.0f

    .line 97
    .line 98
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    float-to-int p1, p3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    iget p1, p0, Landroid/view/View;->mScrollY:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2, p5}, Landroid/view/View;->scrollBy(II)V

    .line 5
    .line 6
    .line 7
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 8
    .line 9
    sub-int v2, p2, p1

    .line 10
    .line 11
    sub-int v4, p5, v2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 8

    .line 1
    iget-object p3, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget p3, p0, Landroid/view/View;->mScrollX:I

    .line 10
    .line 11
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 12
    .line 13
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 14
    .line 15
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 21
    .line 22
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 25
    .line 26
    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 30
    .line 31
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 32
    .line 33
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/16 p1, 0x82

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x21

    .line 11
    .line 12
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 13
    .line 14
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    return v1

    .line 43
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    check-cast p1, Landroid/widget/ScrollView$SavedState;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/widget/ScrollView$SavedState;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 28
    .line 29
    iput v0, v1, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 30
    .line 31
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput v1, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 20
    .line 21
    :cond_0
    iget v2, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    const/4 v13, 0x0

    .line 25
    invoke-virtual {v12, v13, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v14, 0x1

    .line 30
    if-eqz v0, :cond_15

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v0, v14, :cond_12

    .line 34
    .line 35
    if-eq v0, v2, :cond_5

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 49
    .line 50
    .line 51
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 52
    .line 53
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    float-to-int v1, v1

    .line 75
    iput v1, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 76
    .line 77
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_3
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 86
    .line 87
    if-eqz v0, :cond_19

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-lez v0, :cond_19

    .line 94
    .line 95
    iget-object v15, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 96
    .line 97
    iget v0, v10, Landroid/view/View;->mScrollX:I

    .line 98
    .line 99
    iget v1, v10, Landroid/view/View;->mScrollY:I

    .line 100
    .line 101
    const/16 v18, 0x0

    .line 102
    .line 103
    const/16 v19, 0x0

    .line 104
    .line 105
    const/16 v20, 0x0

    .line 106
    .line 107
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 108
    .line 109
    .line 110
    move-result v21

    .line 111
    move/from16 v16, v0

    .line 112
    .line 113
    move/from16 v17, v1

    .line 114
    .line 115
    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 122
    .line 123
    .line 124
    :cond_4
    iput v3, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 125
    .line 126
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_5
    iget v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 132
    .line 133
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    if-ne v15, v3, :cond_6

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "Invalid pointerId="

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, " in onTouchEvent"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "ScrollView"

    .line 161
    .line 162
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_6
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    float-to-int v0, v0

    .line 172
    iget v2, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 173
    .line 174
    sub-int/2addr v2, v0

    .line 175
    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 176
    .line 177
    iget-object v4, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 178
    .line 179
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_7

    .line 184
    .line 185
    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 186
    .line 187
    aget v3, v3, v14

    .line 188
    .line 189
    sub-int/2addr v2, v3

    .line 190
    iget-object v3, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 191
    .line 192
    aget v3, v3, v14

    .line 193
    .line 194
    int-to-float v3, v3

    .line 195
    invoke-virtual {v12, v13, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 196
    .line 197
    .line 198
    iget v3, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 199
    .line 200
    iget-object v4, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 201
    .line 202
    aget v4, v4, v14

    .line 203
    .line 204
    add-int/2addr v3, v4

    .line 205
    iput v3, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 206
    .line 207
    :cond_7
    iget-boolean v3, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 208
    .line 209
    if-nez v3, :cond_a

    .line 210
    .line 211
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    iget v4, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 216
    .line 217
    if-le v3, v4, :cond_a

    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    if-eqz v3, :cond_8

    .line 224
    .line 225
    invoke-interface {v3, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    .line 227
    .line 228
    :cond_8
    iput-boolean v14, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 229
    .line 230
    if-lez v2, :cond_9

    .line 231
    .line 232
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 233
    .line 234
    sub-int/2addr v2, v3

    .line 235
    goto :goto_0

    .line 236
    :cond_9
    iget v3, v10, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 237
    .line 238
    add-int/2addr v2, v3

    .line 239
    :cond_a
    :goto_0
    move v9, v2

    .line 240
    iget-boolean v2, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 241
    .line 242
    if-eqz v2, :cond_19

    .line 243
    .line 244
    iget-object v2, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 245
    .line 246
    aget v2, v2, v14

    .line 247
    .line 248
    sub-int/2addr v0, v2

    .line 249
    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 250
    .line 251
    iget v8, v10, Landroid/view/View;->mScrollY:I

    .line 252
    .line 253
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_c

    .line 262
    .line 263
    if-ne v0, v14, :cond_b

    .line 264
    .line 265
    if-lez v7, :cond_b

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_b
    move/from16 v16, v1

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_c
    :goto_1
    move/from16 v16, v14

    .line 272
    .line 273
    :goto_2
    const/4 v1, 0x0

    .line 274
    const/4 v3, 0x0

    .line 275
    iget v4, v10, Landroid/view/View;->mScrollY:I

    .line 276
    .line 277
    const/4 v5, 0x0

    .line 278
    const/16 v17, 0x0

    .line 279
    .line 280
    iget v6, v10, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 281
    .line 282
    const/16 v18, 0x1

    .line 283
    .line 284
    move-object/from16 v0, p0

    .line 285
    .line 286
    move v2, v9

    .line 287
    move/from16 v19, v6

    .line 288
    .line 289
    move v6, v7

    .line 290
    move/from16 v22, v7

    .line 291
    .line 292
    move/from16 v7, v17

    .line 293
    .line 294
    move/from16 v17, v8

    .line 295
    .line 296
    move/from16 v8, v19

    .line 297
    .line 298
    move v13, v9

    .line 299
    move/from16 v9, v18

    .line 300
    .line 301
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_d

    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_d

    .line 312
    .line 313
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 316
    .line 317
    .line 318
    :cond_d
    iget v0, v10, Landroid/view/View;->mScrollY:I

    .line 319
    .line 320
    sub-int v2, v0, v17

    .line 321
    .line 322
    sub-int v4, v13, v2

    .line 323
    .line 324
    const/4 v1, 0x0

    .line 325
    const/4 v3, 0x0

    .line 326
    iget-object v5, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 327
    .line 328
    move-object/from16 v0, p0

    .line 329
    .line 330
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_e

    .line 335
    .line 336
    iget v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 337
    .line 338
    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 339
    .line 340
    aget v1, v1, v14

    .line 341
    .line 342
    sub-int/2addr v0, v1

    .line 343
    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 344
    .line 345
    int-to-float v0, v1

    .line 346
    const/4 v1, 0x0

    .line 347
    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 348
    .line 349
    .line 350
    iget v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 351
    .line 352
    iget-object v1, v10, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 353
    .line 354
    aget v1, v1, v14

    .line 355
    .line 356
    add-int/2addr v0, v1

    .line 357
    iput v0, v10, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 358
    .line 359
    goto/16 :goto_5

    .line 360
    .line 361
    :cond_e
    if-eqz v16, :cond_19

    .line 362
    .line 363
    add-int v8, v17, v13

    .line 364
    .line 365
    if-gez v8, :cond_f

    .line 366
    .line 367
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 368
    .line 369
    int-to-float v1, v13

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    int-to-float v2, v2

    .line 375
    div-float/2addr v1, v2

    .line 376
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    int-to-float v3, v3

    .line 385
    div-float/2addr v2, v3

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 390
    .line 391
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-nez v0, :cond_10

    .line 396
    .line 397
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_f
    move/from16 v0, v22

    .line 404
    .line 405
    if-le v8, v0, :cond_10

    .line 406
    .line 407
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 408
    .line 409
    int-to-float v1, v13

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    int-to-float v2, v2

    .line 415
    div-float/2addr v1, v2

    .line 416
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    int-to-float v3, v3

    .line 425
    div-float/2addr v2, v3

    .line 426
    const/high16 v3, 0x3f800000    # 1.0f

    .line 427
    .line 428
    sub-float/2addr v3, v2

    .line 429
    invoke-virtual {v0, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 430
    .line 431
    .line 432
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_10

    .line 439
    .line 440
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 441
    .line 442
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 443
    .line 444
    .line 445
    :cond_10
    :goto_3
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 446
    .line 447
    if-eqz v0, :cond_19

    .line 448
    .line 449
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_11

    .line 454
    .line 455
    iget-object v0, v10, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_19

    .line 462
    .line 463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_5

    .line 467
    .line 468
    :cond_12
    iget-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 469
    .line 470
    if-eqz v0, :cond_19

    .line 471
    .line 472
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 473
    .line 474
    iget v1, v10, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 475
    .line 476
    int-to-float v1, v1

    .line 477
    const/16 v2, 0x3e8

    .line 478
    .line 479
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 480
    .line 481
    .line 482
    iget v1, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    float-to-int v0, v0

    .line 489
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    iget v2, v10, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 494
    .line 495
    if-le v1, v2, :cond_13

    .line 496
    .line 497
    neg-int v0, v0

    .line 498
    invoke-direct {v10, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 499
    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_13
    iget-object v15, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 503
    .line 504
    iget v0, v10, Landroid/view/View;->mScrollX:I

    .line 505
    .line 506
    iget v1, v10, Landroid/view/View;->mScrollY:I

    .line 507
    .line 508
    const/16 v18, 0x0

    .line 509
    .line 510
    const/16 v19, 0x0

    .line 511
    .line 512
    const/16 v20, 0x0

    .line 513
    .line 514
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 515
    .line 516
    .line 517
    move-result v21

    .line 518
    move/from16 v16, v0

    .line 519
    .line 520
    move/from16 v17, v1

    .line 521
    .line 522
    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_14

    .line 527
    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 529
    .line 530
    .line 531
    :cond_14
    :goto_4
    iput v3, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 532
    .line 533
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    .line 534
    .line 535
    .line 536
    goto :goto_5

    .line 537
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-nez v0, :cond_16

    .line 542
    .line 543
    return v1

    .line 544
    :cond_16
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 545
    .line 546
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    xor-int/2addr v0, v14

    .line 551
    iput-boolean v0, v10, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 552
    .line 553
    if-eqz v0, :cond_17

    .line 554
    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-eqz v0, :cond_17

    .line 560
    .line 561
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 562
    .line 563
    .line 564
    :cond_17
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 565
    .line 566
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-nez v0, :cond_18

    .line 571
    .line 572
    iget-object v0, v10, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 573
    .line 574
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 575
    .line 576
    .line 577
    iget-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 578
    .line 579
    if-eqz v0, :cond_18

    .line 580
    .line 581
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 582
    .line 583
    .line 584
    const/4 v0, 0x0

    .line 585
    iput-object v0, v10, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 586
    .line 587
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    float-to-int v0, v0

    .line 592
    iput v0, v10, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 593
    .line 594
    invoke-virtual {v11, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    iput v0, v10, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 599
    .line 600
    invoke-virtual {v10, v2}, Landroid/view/View;->startNestedScroll(I)Z

    .line 601
    .line 602
    .line 603
    :cond_19
    :goto_5
    iget-object v0, v10, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 604
    .line 605
    if-eqz v0, :cond_1a

    .line 606
    .line 607
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 608
    .line 609
    .line 610
    :cond_1a
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 611
    .line 612
    .line 613
    return v14
.end method

.method public pageScroll(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x82

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v3

    .line 23
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    add-int/2addr v1, v3

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-le v1, v2, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sub-int/2addr v0, v3

    .line 54
    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v1, v3

    .line 64
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    if-gez v1, :cond_2

    .line 71
    .line 72
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    add-int/2addr v3, v1

    .line 79
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    invoke-direct {p0, p1, v1, v3}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    const/16 p2, 0x1000

    .line 18
    .line 19
    if-eq p1, p2, :cond_4

    .line 20
    .line 21
    const/16 p2, 0x2000

    .line 22
    .line 23
    if-eq p1, p2, :cond_2

    .line 24
    .line 25
    const p2, 0x1020038

    .line 26
    .line 27
    .line 28
    if-eq p1, p2, :cond_2

    .line 29
    .line 30
    const p2, 0x102003a

    .line 31
    .line 32
    .line 33
    if-eq p1, p2, :cond_4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget p2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 41
    .line 42
    sub-int/2addr p1, p2

    .line 43
    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 44
    .line 45
    sub-int/2addr p1, p2

    .line 46
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 47
    .line 48
    sub-int/2addr p2, p1

    .line 49
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 54
    .line 55
    if-eq p1, p2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 58
    .line 59
    .line 60
    return v0

    .line 61
    :cond_3
    return v1

    .line 62
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget p2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 67
    .line 68
    sub-int/2addr p1, p2

    .line 69
    iget p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 70
    .line 71
    sub-int/2addr p1, p2

    .line 72
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 73
    .line 74
    add-int/2addr p2, p1

    .line 75
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget p2, p0, Landroid/view/View;->mScrollY:I

    .line 84
    .line 85
    if-eq p1, p2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_5
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getRevealOnFocusHint()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    .line 35
    .line 36
    sub-int/2addr v1, v2

    .line 37
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    .line 38
    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {p2, v1, v0}, Landroid/widget/ScrollView;->clamp(III)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 49
    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 53
    .line 54
    if-eq p2, v0, :cond_1

    .line 55
    .line 56
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 29
    .line 30
    iput-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0xfa

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 26
    .line 27
    sub-int/2addr p1, v0

    .line 28
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 29
    .line 30
    sub-int/2addr p1, v0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sub-int/2addr v1, p1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 46
    .line 47
    add-int/2addr p2, v1

    .line 48
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sub-int/2addr p1, v1

    .line 57
    iget-object p2, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 58
    .line 59
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 60
    .line 61
    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 90
    .line 91
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    iput-wide p1, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 99
    .line 100
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    return-void
.end method
