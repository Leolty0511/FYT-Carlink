.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100b3

    .line 6
    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 11
    .line 12
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 18
    .line 19
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 25
    .line 26
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {p2}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    const/4 p3, 0x0

    .line 9
    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 10
    iput-object p3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 11
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    const p3, -0x800001

    .line 12
    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/4 p3, 0x1

    .line 14
    iput p3, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 15
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 16
    iput-boolean p3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 17
    new-instance p2, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 p2, 0x40000

    .line 20
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 21
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    new-instance p2, Landroid/widget/Scroller;

    sget-object p4, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr v0, p4

    float-to-int v0, v0

    .line 26
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 27
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 28
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 29
    new-instance p2, Landroid/widget/EdgeEffect;

    invoke-direct {p2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float/2addr p1, p4

    float-to-int p1, p1

    .line 30
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, p4

    float-to-int p1, p1

    .line 31
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr p4, p1

    float-to-int p1, p4

    .line 32
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method public static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 4
    iget v1, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 5
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v3, :cond_3

    .line 6
    iget v3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, p3

    add-float/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    const/4 p3, 0x0

    .line 7
    :goto_1
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p3, v4, :cond_6

    .line 8
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 9
    :goto_2
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p3, v5, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 10
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_2

    .line 11
    :cond_1
    :goto_3
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_2

    .line 12
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iput v3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 14
    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_6

    .line 15
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 16
    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_4
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    .line 18
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 19
    :goto_5
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 20
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_5

    .line 21
    :cond_4
    :goto_6
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v1, v5, :cond_5

    .line 22
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 23
    :cond_5
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 24
    iput p3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 25
    :cond_6
    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 26
    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 27
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_7

    move v5, v1

    goto :goto_7

    :cond_7
    const v5, -0x800001

    .line 28
    :goto_7
    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_8

    .line 29
    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v1

    sub-float/2addr v3, v5

    goto :goto_8

    :cond_8
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    add-int/lit8 v3, p2, -0x1

    :goto_9
    if-ltz v3, :cond_b

    .line 30
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 31
    :goto_a
    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v4, v7, :cond_9

    .line 32
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    move v4, v8

    goto :goto_a

    .line 33
    :cond_9
    iget v8, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    .line 34
    iput v1, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    if-nez v7, :cond_a

    .line 35
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 36
    :cond_b
    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v3, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 37
    iget p1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 38
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 39
    :goto_c
    iget v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge p1, v4, :cond_c

    .line 40
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_c

    :cond_c
    if-ne v4, v0, :cond_d

    .line 41
    iget v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 42
    :cond_d
    iput v1, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 43
    iget v3, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ne v1, v5, :cond_1

    .line 42
    .line 43
    if-eq v4, v6, :cond_2

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 49
    .line 50
    move v1, v3

    .line 51
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v1, v4, :cond_4

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 66
    .line 67
    iget-boolean v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    iput-boolean v3, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 72
    .line 73
    move v0, v2

    .line 74
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    if-eqz v0, :cond_6

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 2

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-le p4, v0, :cond_1

    .line 9
    .line 10
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 15
    .line 16
    if-le p4, v0, :cond_1

    .line 17
    .line 18
    if-gez p3, :cond_0

    .line 19
    .line 20
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p2, v1

    .line 24
    :goto_0
    sub-int/2addr p1, p2

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 27
    .line 28
    if-lt p1, p3, :cond_2

    .line 29
    .line 30
    const p3, 0x3ecccccd    # 0.4f

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const p3, 0x3f19999a    # 0.6f

    .line 35
    .line 36
    .line 37
    :goto_1
    int-to-float p1, p1

    .line 38
    iget p4, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 39
    .line 40
    int-to-float p4, p4

    .line 41
    add-float/2addr p2, p3

    .line 42
    mul-float/2addr p2, p4

    .line 43
    sub-float/2addr p1, p2

    .line 44
    float-to-int p1, p1

    .line 45
    :goto_2
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-lez p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 60
    .line 61
    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    add-int/lit8 p4, p4, -0x1

    .line 68
    .line 69
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 74
    .line 75
    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 76
    .line 77
    iget p3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 78
    .line 79
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :cond_3
    return p1
.end method

.method private enableLayers(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eq p2, p0, :cond_2

    .line 48
    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object p1
.end method

.method private getLeftEdgeForItem(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 15
    .line 16
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 17
    .line 18
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    mul-float/2addr v1, v0

    .line 25
    float-to-int v1, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget p1, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 33
    .line 34
    mul-float/2addr v0, p1

    .line 35
    const/high16 p1, 0x3f000000    # 0.5f

    .line 36
    .line 37
    add-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    const/high16 v0, 0x1000000

    .line 40
    .line 41
    sub-int/2addr v0, p1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    return v0

    .line 44
    :cond_1
    return v1
.end method

.method private getPaddedWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x1000000

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    int-to-float v3, v1

    .line 14
    div-float/2addr v0, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    if-lez v1, :cond_1

    .line 18
    .line 19
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v3, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v2

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, -0x1

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    move v9, v4

    .line 37
    move v10, v6

    .line 38
    move-object v8, v7

    .line 39
    move v7, v5

    .line 40
    move v5, v2

    .line 41
    :goto_2
    if-ge v9, v1, :cond_7

    .line 42
    .line 43
    iget-object v11, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget v12, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 54
    .line 55
    add-int/2addr v7, v6

    .line 56
    if-eq v12, v7, :cond_2

    .line 57
    .line 58
    iget-object v11, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 59
    .line 60
    add-float/2addr v2, v5

    .line 61
    add-float/2addr v2, v3

    .line 62
    iput v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 63
    .line 64
    iput v7, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 73
    .line 74
    add-int/lit8 v9, v9, -0x1

    .line 75
    .line 76
    :cond_2
    move-object v7, v11

    .line 77
    iget v2, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 78
    .line 79
    if-nez v10, :cond_4

    .line 80
    .line 81
    cmpl-float v5, v0, v2

    .line 82
    .line 83
    if-ltz v5, :cond_3

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    return-object v8

    .line 87
    :cond_4
    :goto_3
    iget v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 88
    .line 89
    add-float/2addr v5, v2

    .line 90
    add-float/2addr v5, v3

    .line 91
    cmpg-float v5, v0, v5

    .line 92
    .line 93
    if-ltz v5, :cond_6

    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    sub-int/2addr v5, v6

    .line 102
    if-ne v9, v5, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    iget v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 106
    .line 107
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 108
    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    move v10, v4

    .line 112
    move-object v13, v7

    .line 113
    move v7, v5

    .line 114
    move v5, v8

    .line 115
    move-object v8, v13

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    :goto_4
    return-object v7

    .line 118
    :cond_7
    return-object v8
.end method

.method private isGutterDrag(FF)Z
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "onPageScrolled did not call superclass implementation"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, v2, p1, v2}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 16
    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/high16 v0, 0x1000000

    .line 36
    .line 37
    sub-int p1, v0, p1

    .line 38
    .line 39
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 48
    .line 49
    add-int v5, v3, v4

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    int-to-float v3, v3

    .line 53
    div-float/2addr v4, v3

    .line 54
    iget v6, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 55
    .line 56
    int-to-float p1, p1

    .line 57
    div-float/2addr p1, v3

    .line 58
    iget v3, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 59
    .line 60
    sub-float/2addr p1, v3

    .line 61
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 62
    .line 63
    add-float/2addr v0, v4

    .line 64
    div-float/2addr p1, v0

    .line 65
    int-to-float v0, v5

    .line 66
    mul-float/2addr v0, p1

    .line 67
    float-to-int v0, v0

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 69
    .line 70
    invoke-virtual {p0, v6, p1, v0}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    return p1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method

.method private performDrag(F)Z
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 6
    .line 7
    sub-float/2addr v1, p1

    .line 8
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    add-float/2addr v3, v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/high16 v4, 0x4b800000    # 1.6777216E7f

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sub-float v3, v4, v3

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 49
    .line 50
    iget v6, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    move v6, v7

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v6, v5

    .line 58
    :goto_1
    if-eqz v6, :cond_3

    .line 59
    .line 60
    iget v1, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 61
    .line 62
    int-to-float v8, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    int-to-float v1, v0

    .line 65
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 66
    .line 67
    :goto_2
    mul-float/2addr v1, v8

    .line 68
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    sub-int/2addr v9, v7

    .line 75
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 80
    .line 81
    iget v9, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 82
    .line 83
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    sub-int/2addr v10, v7

    .line 90
    if-ne v9, v10, :cond_4

    .line 91
    .line 92
    move v9, v7

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move v9, v5

    .line 95
    :goto_3
    if-eqz v9, :cond_5

    .line 96
    .line 97
    iget v8, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 98
    .line 99
    int-to-float v10, v0

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    int-to-float v8, v0

    .line 102
    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 103
    .line 104
    :goto_4
    mul-float/2addr v8, v10

    .line 105
    cmpg-float v10, v3, v1

    .line 106
    .line 107
    if-gez v10, :cond_7

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    sub-float v2, v1, v3

    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v0, v0

    .line 118
    div-float/2addr v2, v0

    .line 119
    invoke-virtual {p1, v2}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 120
    .line 121
    .line 122
    move v5, v7

    .line 123
    :cond_6
    move v3, v1

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    cmpl-float p1, v3, v8

    .line 126
    .line 127
    if-lez p1, :cond_9

    .line 128
    .line 129
    if-eqz v9, :cond_8

    .line 130
    .line 131
    sub-float/2addr v3, v8

    .line 132
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    int-to-float v0, v0

    .line 137
    div-float/2addr p1, v0

    .line 138
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 139
    .line 140
    .line 141
    move v5, v7

    .line 142
    :cond_8
    move v3, v8

    .line 143
    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_a

    .line 148
    .line 149
    sub-float v3, v4, v3

    .line 150
    .line 151
    :cond_a
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 152
    .line 153
    float-to-int v0, v3

    .line 154
    int-to-float v1, v0

    .line 155
    sub-float/2addr v3, v1

    .line 156
    add-float/2addr v3, p1

    .line 157
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 167
    .line 168
    .line 169
    return v5
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 6

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sub-int v0, p1, v0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    add-int/2addr v0, p3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    sub-int/2addr p2, p3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    sub-int/2addr p2, p3

    .line 33
    add-int/2addr p2, p4

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    int-to-float p3, p3

    .line 39
    int-to-float p2, p2

    .line 40
    div-float/2addr p3, p2

    .line 41
    int-to-float p2, v0

    .line 42
    mul-float/2addr p3, p2

    .line 43
    float-to-int v1, p3

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, v1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    sub-int v5, p2, p3

    .line 72
    .line 73
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 83
    .line 84
    int-to-float p1, p1

    .line 85
    mul-float/2addr p2, p1

    .line 86
    float-to-int v3, p2

    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-eqz p2, :cond_1

    .line 99
    .line 100
    iget p2, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 101
    .line 102
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 103
    .line 104
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 p2, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    sub-int/2addr p1, p3

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    sub-int/2addr p1, p3

    .line 120
    int-to-float p1, p1

    .line 121
    mul-float/2addr p2, p1

    .line 122
    float-to-int p1, p2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eq p1, p2, :cond_2

    .line 128
    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 17
    .line 18
    iget-boolean v1, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p4, :cond_4

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 23
    .line 24
    if-eqz p2, :cond_4

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-eqz p4, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz p4, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 18
    .line 19
    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 25
    .line 26
    .line 27
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v1, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 37
    .line 38
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_5

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 9
    .line 10
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 23
    .line 24
    if-ltz p2, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lt p2, p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 25
    .line 26
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 15
    .line 16
    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "Cannot add pager decor view during layout"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, p0, :cond_0

    .line 9
    .line 10
    :goto_0
    move-object v0, v3

    .line 11
    goto :goto_4

    .line 12
    :cond_0
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    if-ne v4, p0, :cond_1

    .line 23
    .line 24
    move v4, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v4, v2

    .line 32
    :goto_2
    if-nez v4, :cond_4

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    const-string v5, " => "

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    .line 82
    .line 83
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v4, "ViewPager"

    .line 98
    .line 99
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/16 v4, 0x42

    .line 112
    .line 113
    const/16 v5, 0x11

    .line 114
    .line 115
    if-eqz v3, :cond_8

    .line 116
    .line 117
    if-eq v3, v0, :cond_8

    .line 118
    .line 119
    if-ne p1, v5, :cond_6

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 122
    .line 123
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    if-lt v1, v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    goto :goto_5

    .line 146
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    :goto_5
    move v2, v0

    .line 151
    goto :goto_7

    .line 152
    :cond_6
    if-ne p1, v4, :cond_c

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 163
    .line 164
    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    if-gt v1, v2, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    goto :goto_5

    .line 179
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    goto :goto_5

    .line 184
    :cond_8
    if-eq p1, v5, :cond_b

    .line 185
    .line 186
    if-ne p1, v1, :cond_9

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    if-eq p1, v4, :cond_a

    .line 190
    .line 191
    const/4 v0, 0x2

    .line 192
    if-ne p1, v0, :cond_c

    .line 193
    .line 194
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    goto :goto_7

    .line 199
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 204
    .line 205
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 210
    .line 211
    .line 212
    :cond_d
    return v2
.end method

.method public canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 11
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 20
    .line 21
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    if-le v2, p1, :cond_1

    .line 24
    .line 25
    move v1, v3

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-lez p1, :cond_3

    .line 28
    .line 29
    int-to-float p1, v0

    .line 30
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 31
    .line 32
    mul-float/2addr p1, v0

    .line 33
    float-to-int p1, p1

    .line 34
    if-ge v2, p1, :cond_3

    .line 35
    .line 36
    move v1, v3

    .line 37
    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ne v0, v2, :cond_0

    .line 38
    .line 39
    if-eq v1, v3, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public dataSetChanged()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 16
    .line 17
    mul-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v4

    .line 35
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 36
    .line 37
    move v5, v4

    .line 38
    move v6, v5

    .line 39
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-ge v5, v7, :cond_7

    .line 46
    .line 47
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 56
    .line 57
    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    const/4 v9, -0x1

    .line 64
    if-ne v8, v9, :cond_1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_1
    const/4 v9, -0x2

    .line 68
    if-ne v8, v9, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v5, v5, -0x1

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 82
    .line 83
    .line 84
    move v6, v3

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 86
    .line 87
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 88
    .line 89
    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v1, p0, v8, v9}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 95
    .line 96
    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 97
    .line 98
    if-ne v1, v7, :cond_3

    .line 99
    .line 100
    add-int/lit8 v2, v0, -0x1

    .line 101
    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    move v2, v1

    .line 111
    :cond_3
    :goto_2
    move v1, v3

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 114
    .line 115
    if-eq v9, v8, :cond_6

    .line 116
    .line 117
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 118
    .line 119
    if-ne v9, v1, :cond_5

    .line 120
    .line 121
    move v2, v8

    .line 122
    :cond_5
    iput v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    :goto_3
    add-int/2addr v5, v3

    .line 126
    goto :goto_1

    .line 127
    :cond_7
    if-eqz v6, :cond_8

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 135
    .line 136
    sget-object v5, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 137
    .line 138
    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 139
    .line 140
    .line 141
    if-eqz v1, :cond_b

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    move v1, v4

    .line 148
    :goto_4
    if-ge v1, v0, :cond_a

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 159
    .line 160
    iget-boolean v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 161
    .line 162
    if-nez v6, :cond_9

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    iput v6, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 166
    .line 167
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 174
    .line 175
    .line 176
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/high16 v4, 0x43870000    # 270.0f

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    .line 71
    .line 72
    neg-int v4, v2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    add-int/2addr v5, v4

    .line 78
    int-to-float v4, v5

    .line 79
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 80
    .line 81
    int-to-float v6, v3

    .line 82
    mul-float/2addr v5, v6

    .line 83
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    or-int/2addr v1, v2

    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    sub-int/2addr v3, v4

    .line 131
    const/high16 v4, 0x42b40000    # 90.0f

    .line 132
    .line 133
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    neg-int v4, v4

    .line 141
    int-to-float v4, v4

    .line 142
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 143
    .line 144
    const/high16 v6, 0x3f800000    # 1.0f

    .line 145
    .line 146
    add-float/2addr v5, v6

    .line 147
    neg-float v5, v5

    .line 148
    int-to-float v6, v2

    .line 149
    mul-float/2addr v5, v6

    .line 150
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 154
    .line 155
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 159
    .line 160
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    or-int/2addr v1, v2

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 171
    .line 172
    .line 173
    :cond_4
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x3d

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/16 p1, 0x42

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/16 p1, 0x11

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 63
    :goto_1
    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    sub-int p2, p1, p2

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 23
    .line 24
    iget p1, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 25
    .line 26
    return p1
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 14
    .line 15
    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method public infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    instance-of p1, v0, Landroid/view/View;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object p1, v0

    .line 15
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 17
    .line 18
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 7
    .line 8
    if-lez v1, :cond_5

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_5

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 23
    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    int-to-float v4, v2

    .line 38
    div-float/2addr v3, v4

    .line 39
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 47
    .line 48
    iget v7, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 49
    .line 50
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    iget v9, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 57
    .line 58
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 59
    .line 60
    add-int/lit8 v11, v8, -0x1

    .line 61
    .line 62
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 67
    .line 68
    iget v10, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 69
    .line 70
    :goto_0
    if-ge v9, v10, :cond_5

    .line 71
    .line 72
    :goto_1
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 73
    .line 74
    if-le v9, v11, :cond_0

    .line 75
    .line 76
    if-ge v6, v8, :cond_0

    .line 77
    .line 78
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 79
    .line 80
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    if-ne v9, v11, :cond_1

    .line 90
    .line 91
    iget v7, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 92
    .line 93
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_1
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 97
    .line 98
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    :goto_2
    mul-float v12, v7, v4

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-eqz v13, :cond_2

    .line 109
    .line 110
    const/high16 v13, 0x4b800000    # 1.6777216E7f

    .line 111
    .line 112
    sub-float/2addr v13, v12

    .line 113
    goto :goto_3

    .line 114
    :cond_2
    mul-float v13, v11, v4

    .line 115
    .line 116
    add-float/2addr v13, v12

    .line 117
    :goto_3
    add-float/2addr v7, v11

    .line 118
    add-float/2addr v7, v3

    .line 119
    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 120
    .line 121
    int-to-float v12, v11

    .line 122
    add-float/2addr v12, v13

    .line 123
    int-to-float v14, v1

    .line 124
    cmpl-float v12, v12, v14

    .line 125
    .line 126
    if-lez v12, :cond_3

    .line 127
    .line 128
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    float-to-int v14, v13

    .line 131
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 132
    .line 133
    int-to-float v11, v11

    .line 134
    add-float/2addr v11, v13

    .line 135
    const/high16 v16, 0x3f000000    # 0.5f

    .line 136
    .line 137
    add-float v11, v11, v16

    .line 138
    .line 139
    float-to-int v11, v11

    .line 140
    move/from16 v16, v3

    .line 141
    .line 142
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 143
    .line 144
    invoke-virtual {v12, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    move-object/from16 v11, p1

    .line 150
    .line 151
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_3
    move-object/from16 v11, p1

    .line 156
    .line 157
    move/from16 v16, v3

    .line 158
    .line 159
    :goto_4
    add-int v3, v1, v2

    .line 160
    .line 161
    int-to-float v3, v3

    .line 162
    cmpl-float v3, v13, v3

    .line 163
    .line 164
    if-lez v3, :cond_4

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 168
    .line 169
    move/from16 v3, v16

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_5
    :goto_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/internal/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x1000

    .line 25
    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/internal/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, -0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    if-eq v0, v1, :cond_e

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-ne v0, v9, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return v9

    .line 27
    :cond_1
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    return v8

    .line 32
    :cond_2
    const/4 v1, 0x2

    .line 33
    if-eqz v0, :cond_a

    .line 34
    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_4
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_5

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 62
    .line 63
    sub-float v1, v10, v1

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    .line 74
    .line 75
    sub-float v0, v12, v0

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    const/4 v0, 0x0

    .line 82
    cmpl-float v14, v1, v0

    .line 83
    .line 84
    if-eqz v14, :cond_6

    .line 85
    .line 86
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 87
    .line 88
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    float-to-int v3, v1

    .line 96
    float-to-int v4, v10

    .line 97
    float-to-int v5, v12

    .line 98
    move-object v0, p0

    .line 99
    move-object v1, p0

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iput v10, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 107
    .line 108
    iput v12, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 109
    .line 110
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 111
    .line 112
    return v8

    .line 113
    :cond_6
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 114
    .line 115
    int-to-float v1, v0

    .line 116
    cmpl-float v1, v11, v1

    .line 117
    .line 118
    if-lez v1, :cond_8

    .line 119
    .line 120
    const/high16 v1, 0x3f000000    # 0.5f

    .line 121
    .line 122
    mul-float/2addr v11, v1

    .line 123
    cmpl-float v1, v11, v13

    .line 124
    .line 125
    if-lez v1, :cond_8

    .line 126
    .line 127
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 128
    .line 129
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 133
    .line 134
    .line 135
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    .line 136
    .line 137
    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 138
    .line 139
    int-to-float v1, v1

    .line 140
    if-lez v14, :cond_7

    .line 141
    .line 142
    add-float/2addr v0, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_7
    sub-float/2addr v0, v1

    .line 145
    :goto_0
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 146
    .line 147
    iput v12, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 148
    .line 149
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    int-to-float v0, v0

    .line 154
    cmpl-float v0, v13, v0

    .line 155
    .line 156
    if-lez v0, :cond_9

    .line 157
    .line 158
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 159
    .line 160
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 161
    .line 162
    if-eqz v0, :cond_c

    .line 163
    .line 164
    invoke-direct {p0, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_c

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    .line 179
    .line 180
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    .line 187
    .line 188
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 195
    .line 196
    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 197
    .line 198
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 201
    .line 202
    .line 203
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 204
    .line 205
    if-ne v0, v1, :cond_b

    .line 206
    .line 207
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iget-object v1, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    sub-int/2addr v0, v1

    .line 220
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 225
    .line 226
    if-le v0, v1, :cond_b

    .line 227
    .line 228
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 231
    .line 232
    .line 233
    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 236
    .line 237
    .line 238
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 239
    .line 240
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, v9}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_b
    invoke-direct {p0, v8}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 248
    .line 249
    .line 250
    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 251
    .line 252
    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 253
    .line 254
    if-nez v0, :cond_d

    .line 255
    .line 256
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    .line 262
    :cond_d
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    .line 264
    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 265
    .line 266
    .line 267
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 268
    .line 269
    return v0

    .line 270
    :cond_e
    :goto_3
    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 271
    .line 272
    iput-boolean v8, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 273
    .line 274
    iput v2, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 275
    .line 276
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 277
    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 281
    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    .line 286
    :cond_f
    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 52
    .line 53
    iget-boolean v14, v12, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    add-int/2addr v14, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    sub-int v14, v2, v14

    .line 98
    .line 99
    div-int/lit8 v14, v14, 0x2

    .line 100
    .line 101
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    :goto_1
    move/from16 v17, v14

    .line 106
    .line 107
    move v14, v4

    .line 108
    move/from16 v4, v17

    .line 109
    .line 110
    :goto_2
    const/16 v15, 0x10

    .line 111
    .line 112
    if-eq v12, v15, :cond_5

    .line 113
    .line 114
    const/16 v15, 0x30

    .line 115
    .line 116
    if-eq v12, v15, :cond_4

    .line 117
    .line 118
    const/16 v15, 0x50

    .line 119
    .line 120
    if-eq v12, v15, :cond_3

    .line 121
    .line 122
    move v12, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    sub-int v12, v3, v7

    .line 125
    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    sub-int/2addr v12, v15

    .line 131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    add-int/2addr v7, v15

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    add-int/2addr v12, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    sub-int v12, v3, v12

    .line 148
    .line 149
    div-int/lit8 v12, v12, 0x2

    .line 150
    .line 151
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    :goto_3
    move/from16 v17, v12

    .line 156
    .line 157
    move v12, v5

    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    :goto_4
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    add-int/2addr v15, v4

    .line 166
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result v16

    .line 170
    add-int v9, v16, v5

    .line 171
    .line 172
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    move v5, v12

    .line 178
    move v4, v14

    .line 179
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    sub-int/2addr v2, v4

    .line 184
    sub-int/2addr v2, v6

    .line 185
    const/4 v8, 0x0

    .line 186
    :goto_5
    if-ge v8, v1, :cond_d

    .line 187
    .line 188
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-ne v10, v12, :cond_8

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 204
    .line 205
    iget-boolean v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 206
    .line 207
    if-eqz v13, :cond_9

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_9
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    if-nez v13, :cond_a

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_a
    iget-boolean v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 218
    .line 219
    if-eqz v14, :cond_b

    .line 220
    .line 221
    const/4 v14, 0x0

    .line 222
    iput-boolean v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 223
    .line 224
    int-to-float v14, v2

    .line 225
    iget v10, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 226
    .line 227
    mul-float/2addr v14, v10

    .line 228
    float-to-int v10, v14

    .line 229
    const/high16 v14, 0x40000000    # 2.0f

    .line 230
    .line 231
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    sub-int v15, v3, v5

    .line 236
    .line 237
    sub-int/2addr v15, v7

    .line 238
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    invoke-virtual {v9, v10, v14}, Landroid/view/View;->measure(II)V

    .line 243
    .line 244
    .line 245
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    int-to-float v14, v2

    .line 250
    iget v13, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 251
    .line 252
    mul-float/2addr v14, v13

    .line 253
    float-to-int v13, v14

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    if-eqz v14, :cond_c

    .line 259
    .line 260
    const/high16 v14, 0x1000000

    .line 261
    .line 262
    sub-int/2addr v14, v6

    .line 263
    sub-int/2addr v14, v13

    .line 264
    sub-int/2addr v14, v10

    .line 265
    goto :goto_6

    .line 266
    :cond_c
    add-int v14, v4, v13

    .line 267
    .line 268
    :goto_6
    add-int/2addr v10, v14

    .line 269
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 270
    .line 271
    .line 272
    move-result v13

    .line 273
    add-int/2addr v13, v5

    .line 274
    invoke-virtual {v9, v14, v5, v10, v13}, Landroid/view/View;->layout(IIII)V

    .line 275
    .line 276
    .line 277
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_d
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 281
    .line 282
    sub-int/2addr v3, v7

    .line 283
    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 284
    .line 285
    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 286
    .line 287
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 288
    .line 289
    if-eqz v1, :cond_e

    .line 290
    .line 291
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 292
    .line 293
    const/4 v2, 0x0

    .line 294
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_e
    const/4 v2, 0x0

    .line 299
    :goto_8
    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 300
    .line 301
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    .line 19
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    move v2, v0

    .line 56
    :goto_0
    const/16 v3, 0x8

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ge v2, v1, :cond_c

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eq v7, v3, :cond_b

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 78
    .line 79
    if-eqz v3, :cond_b

    .line 80
    .line 81
    iget-boolean v7, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 82
    .line 83
    if-eqz v7, :cond_b

    .line 84
    .line 85
    iget v7, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    .line 86
    .line 87
    and-int/lit8 v8, v7, 0x7

    .line 88
    .line 89
    and-int/lit8 v7, v7, 0x70

    .line 90
    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    if-eq v7, v9, :cond_1

    .line 94
    .line 95
    const/16 v9, 0x50

    .line 96
    .line 97
    if-ne v7, v9, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move v7, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    move v7, v4

    .line 103
    :goto_2
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_3

    .line 105
    .line 106
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_2

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    move v4, v0

    .line 111
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    move v9, v8

    .line 116
    move v8, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    .line 120
    move v9, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move v9, v8

    .line 123
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    .line 125
    const/4 v11, -0x1

    .line 126
    const/4 v12, -0x2

    .line 127
    if-eq v10, v12, :cond_7

    .line 128
    .line 129
    if-eq v10, v11, :cond_6

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_6
    move v10, p1

    .line 133
    :goto_5
    move v8, v5

    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v10, p1

    .line 136
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    .line 138
    if-eq v3, v12, :cond_9

    .line 139
    .line 140
    if-eq v3, v11, :cond_8

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_8
    move v3, p2

    .line 144
    goto :goto_7

    .line 145
    :cond_9
    move v3, p2

    .line 146
    move v5, v9

    .line 147
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 156
    .line 157
    .line 158
    if-eqz v7, :cond_a

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-int/2addr p2, v3

    .line 165
    goto :goto_8

    .line 166
    :cond_a
    if-eqz v4, :cond_b

    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    sub-int/2addr p1, v3

    .line 173
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 181
    .line 182
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    iput p2, p0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 187
    .line 188
    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 191
    .line 192
    .line 193
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    :goto_9
    if-ge v0, p2, :cond_f

    .line 200
    .line 201
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eq v2, v3, :cond_e

    .line 210
    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 216
    .line 217
    if-eqz v2, :cond_d

    .line 218
    .line 219
    iget-boolean v4, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 220
    .line 221
    if-nez v4, :cond_e

    .line 222
    .line 223
    :cond_d
    int-to-float v4, p1

    .line 224
    iget v2, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 225
    .line 226
    mul-float/2addr v4, v2

    .line 227
    float-to-int v2, v4

    .line 228
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 233
    .line 234
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 235
    .line 236
    .line 237
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_f
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    move v7, v1

    .line 28
    :goto_0
    if-ge v7, v6, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 39
    .line 40
    iget-boolean v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 41
    .line 42
    if-nez v10, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v9, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    .line 46
    .line 47
    and-int/lit8 v9, v9, 0x7

    .line 48
    .line 49
    if-eq v9, v2, :cond_3

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    if-eq v9, v10, :cond_2

    .line 53
    .line 54
    const/4 v10, 0x5

    .line 55
    if-eq v9, v10, :cond_1

    .line 56
    .line 57
    move v9, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    sub-int v9, v5, v4

    .line 60
    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    sub-int/2addr v9, v10

    .line 66
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    add-int/2addr v4, v10

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    add-int/2addr v9, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    sub-int v9, v5, v9

    .line 83
    .line 84
    div-int/lit8 v9, v9, 0x2

    .line 85
    .line 86
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    :goto_1
    move v11, v9

    .line 91
    move v9, v3

    .line 92
    move v3, v11

    .line 93
    :goto_2
    add-int/2addr v3, v0

    .line 94
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    sub-int/2addr v3, v10

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    move v3, v9

    .line 105
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 123
    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    :goto_4
    if-ge v1, p2, :cond_9

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 145
    .line 146
    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sub-int/2addr v0, p1

    .line 156
    int-to-float v0, v0

    .line 157
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    int-to-float v3, v3

    .line 162
    div-float/2addr v0, v3

    .line 163
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 164
    .line 165
    invoke-interface {v3, p3, v0}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 166
    .line 167
    .line 168
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 172
    .line 173
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    move v0, v2

    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 38
    .line 39
    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 11
    .line 12
    iput v0, v1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 7
    .line 8
    invoke-direct {p0, p1, p3, p2, p2}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_e

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v0, :cond_b

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v0, v2, :cond_9

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    if-eq v0, v4, :cond_6

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    if-eq v0, v4, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 104
    .line 105
    if-eqz p1, :cond_c

    .line 106
    .line 107
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 108
    .line 109
    invoke-direct {p0, p1, v2, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 110
    .line 111
    .line 112
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 125
    .line 126
    .line 127
    :goto_0
    move v1, v2

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 131
    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 145
    .line 146
    sub-float v4, v3, v4

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 157
    .line 158
    sub-float v5, v0, v5

    .line 159
    .line 160
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 165
    .line 166
    int-to-float v6, v6

    .line 167
    cmpl-float v6, v4, v6

    .line 168
    .line 169
    if-lez v6, :cond_8

    .line 170
    .line 171
    cmpl-float v4, v4, v5

    .line 172
    .line 173
    if-lez v4, :cond_8

    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 176
    .line 177
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 178
    .line 179
    .line 180
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    .line 181
    .line 182
    sub-float/2addr v3, v4

    .line 183
    const/4 v5, 0x0

    .line 184
    cmpl-float v3, v3, v5

    .line 185
    .line 186
    if-lez v3, :cond_7

    .line 187
    .line 188
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 189
    .line 190
    int-to-float v3, v3

    .line 191
    add-float/2addr v4, v3

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 194
    .line 195
    int-to-float v3, v3

    .line 196
    sub-float/2addr v4, v3

    .line 197
    :goto_1
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 198
    .line 199
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 200
    .line 201
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 214
    .line 215
    .line 216
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 217
    .line 218
    if-eqz v0, :cond_c

    .line 219
    .line 220
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    or-int/2addr v1, p1

    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 238
    .line 239
    if-eqz v0, :cond_c

    .line 240
    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 242
    .line 243
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 244
    .line 245
    int-to-float v1, v1

    .line 246
    const/16 v4, 0x3e8

    .line 247
    .line 248
    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 249
    .line 250
    .line 251
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    float-to-int v0, v0

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 259
    .line 260
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    int-to-float v1, v1

    .line 265
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    int-to-float v4, v4

    .line 270
    div-float/2addr v1, v4

    .line 271
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_a

    .line 282
    .line 283
    iget v6, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 284
    .line 285
    sub-float/2addr v6, v1

    .line 286
    iget v1, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 287
    .line 288
    div-float/2addr v6, v1

    .line 289
    goto :goto_2

    .line 290
    :cond_a
    iget v6, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 291
    .line 292
    sub-float/2addr v1, v6

    .line 293
    iget v4, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 294
    .line 295
    div-float v6, v1, v4

    .line 296
    .line 297
    :goto_2
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    .line 308
    .line 309
    sub-float/2addr p1, v1

    .line 310
    float-to-int p1, p1

    .line 311
    invoke-direct {p0, v5, v6, v0, p1}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {p0, p1, v2, v2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 316
    .line 317
    .line 318
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 319
    .line 320
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 338
    .line 339
    .line 340
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    .line 350
    .line 351
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    .line 358
    .line 359
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 360
    .line 361
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 366
    .line 367
    :cond_c
    :goto_3
    if-eqz v1, :cond_d

    .line 368
    .line 369
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 370
    .line 371
    .line 372
    :cond_d
    return v2

    .line 373
    :cond_e
    :goto_4
    return v1
.end method

.method public pageLeft()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public pageRight()Z
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

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
    const/16 p2, 0x1000

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eq p1, p2, :cond_3

    .line 13
    .line 14
    const/16 p2, 0x2000

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    const p2, 0x1020039

    .line 19
    .line 20
    .line 21
    if-eq p1, p2, :cond_1

    .line 22
    .line 23
    const p2, 0x102003b

    .line 24
    .line 25
    .line 26
    if-eq p1, p2, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    const/4 p1, -0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 37
    .line 38
    sub-int/2addr p1, v0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    return v1

    .line 44
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_4
    return v1
.end method

.method public populate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    return-void
.end method

.method public populate(I)V
    .locals 14

    .line 2
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_1

    if-ge v0, p1, :cond_0

    const/16 v1, 0x42

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 4
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 11
    iget p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 12
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 14
    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v4, v5, :cond_21

    .line 16
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 17
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 18
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt v6, v7, :cond_5

    if-ne v6, v7, :cond_6

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    if-lez v4, :cond_7

    .line 19
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v5

    :cond_7
    if-eqz v5, :cond_18

    add-int/lit8 v6, v3, -0x1

    if-ltz v6, :cond_8

    .line 20
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    .line 21
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v8, :cond_9

    const/4 v10, 0x0

    goto :goto_5

    .line 22
    :cond_9
    iget v10, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v9, v10

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 24
    :goto_5
    iget v11, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    :goto_6
    if-ltz v11, :cond_f

    cmpl-float v13, v12, v10

    if-ltz v13, :cond_b

    if-ge v11, v2, :cond_b

    if-nez v7, :cond_a

    goto :goto_8

    .line 25
    :cond_a
    iget v13, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v13, :cond_e

    iget-boolean v13, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v13, :cond_e

    .line 26
    iget-object v13, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    iget-object v13, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v13, p0, v11, v7}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v3, v3, -0x1

    if-ltz v6, :cond_d

    .line 28
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_b
    if-eqz v7, :cond_c

    .line 29
    iget v13, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v13, :cond_c

    .line 30
    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_d

    .line 31
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v6, 0x1

    .line 32
    invoke-virtual {p0, v11, v7}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v7

    .line 33
    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    add-int/lit8 v3, v3, 0x1

    if-ltz v6, :cond_d

    .line 34
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :cond_e
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 35
    :cond_f
    :goto_8
    iget v2, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v6, v3, 0x1

    cmpg-float v7, v2, v9

    if-gez v7, :cond_17

    .line 36
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    :goto_9
    if-gtz v8, :cond_11

    const/4 v8, 0x0

    goto :goto_a

    .line 37
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float v8, v10, v9

    .line 38
    :goto_a
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    :cond_12
    :goto_b
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v4, :cond_17

    cmpl-float v10, v2, v8

    if-ltz v10, :cond_14

    if-le v9, p1, :cond_14

    if-nez v7, :cond_13

    goto :goto_c

    .line 39
    :cond_13
    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_12

    iget-boolean v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_12

    .line 40
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v9, v7}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 42
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_b

    :cond_14
    if-eqz v7, :cond_15

    .line 43
    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_15

    .line 44
    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    .line 45
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_b

    .line 46
    :cond_15
    invoke-virtual {p0, v9, v6}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 47
    iget v7, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v7

    .line 48
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_b

    :cond_16
    const/4 v7, 0x0

    goto :goto_b

    .line 49
    :cond_17
    :goto_c
    invoke-direct {p0, v5, v3, v0}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    .line 50
    :cond_18
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v5, :cond_19

    iget-object v2, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_1b

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 55
    iput v0, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 56
    iget-boolean v4, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_1a

    iget v4, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1a

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 58
    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v4, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 59
    iget v2, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iput v2, v3, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 60
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_f

    :cond_1c
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1d

    .line 64
    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v0, v2, :cond_20

    :cond_1d
    const/4 v0, 0x0

    .line 65
    :goto_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 68
    iget v3, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_1f

    if-nez p1, :cond_1e

    const/4 v3, 0x0

    goto :goto_11

    .line 69
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 71
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 73
    :goto_11
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_12

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    :goto_12
    return-void

    .line 74
    :cond_21
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    .line 75
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    :goto_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    const-string v3, ", found: "

    const-string v5, " Pager id: "

    .line 77
    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pager class: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Problematic adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    move v0, v1

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v0, v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 34
    .line 35
    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v3, p0, v4, v2}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 56
    .line 57
    .line 58
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 59
    .line 60
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 66
    .line 67
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    new-instance v2, Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 77
    .line 78
    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$1;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 82
    .line 83
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 91
    .line 92
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 104
    .line 105
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 106
    .line 107
    if-ltz v5, :cond_3

    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 110
    .line 111
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 112
    .line 113
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 114
    .line 115
    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 116
    .line 117
    .line 118
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 119
    .line 120
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 121
    .line 122
    .line 123
    const/4 v1, -0x1

    .line 124
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 125
    .line 126
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 127
    .line 128
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    if-nez v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    if-eq v0, p1, :cond_6

    .line 145
    .line 146
    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    return-void
.end method

.method public setCurrentItemInternal(IZZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result p1

    return p1
.end method

.method public setCurrentItemInternal(IZZI)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    if-nez p3, :cond_1

    .line 4
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return v1

    .line 6
    :cond_1
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 7
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int v3, v0, p3

    if-gt p1, v3, :cond_2

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_3

    :cond_2
    move p3, v1

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq p3, p1, :cond_4

    move v1, v2

    .line 11
    :cond_4
    iget-boolean p3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_7

    .line 12
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v1, :cond_5

    .line 13
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_5

    .line 14
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_5
    if-eqz v1, :cond_6

    .line 15
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_6

    .line 16
    invoke-interface {p2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 19
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    :goto_1
    return v2

    .line 20
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return v1
.end method

.method public setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 4
    .line 5
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "Requested offscreen page limit "

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " too small; defaulting to 1"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "ViewPager"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move p1, v0

    .line 29
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 9
    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    move v3, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v3, v1

    .line 15
    :goto_1
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    move v3, v0

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    move v3, v1

    .line 20
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 23
    .line 24
    .line 25
    if-eqz v2, :cond_4

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    :cond_3
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_4
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 34
    .line 35
    :goto_3
    if-eqz v3, :cond_5

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 38
    .line 39
    .line 40
    :cond_5
    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method public smoothScrollTo(III)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 8
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result p1

    .line 12
    div-int/lit8 p2, p1, 0x2

    .line 13
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p2

    .line 15
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float p1, p2

    div-float/2addr v0, p1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p2, p1

    .line 18
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 20
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
