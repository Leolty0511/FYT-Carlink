.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 7
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    if-ne p4, p3, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    .line 9
    :goto_0
    iput-boolean p4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 p4, 0x0

    .line 10
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p1, v0, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    const/4 p4, 0x3

    .line 12
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 p4, 0x6

    .line 13
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 p3, 0x4

    .line 14
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_3

    const/4 p4, 0x5

    .line 15
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-eqz p4, :cond_2

    if-eq p3, p4, :cond_1

    .line 16
    iput p3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 17
    iput p4, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x40c00000    # 6.0f

    mul-float/2addr p4, p3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 19
    iput p4, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 20
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 p4, 0x43160000    # 150.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 21
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 p4, 0x43480000    # 200.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 22
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 p4, 0x44fa0000    # 2000.0f

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 23
    iput p4, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 24
    iput p3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content and handle attributes must refer to different children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private animateOpen(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .line 1
    const/16 v0, -0x2712

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 9
    .line 10
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 11
    .line 12
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    add-int/2addr v1, v2

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    cmpl-float v0, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-ltz v0, :cond_1

    .line 33
    .line 34
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 41
    .line 42
    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    cmpg-float v2, v0, v2

    .line 46
    .line 47
    if-gez v2, :cond_2

    .line 48
    .line 49
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 50
    .line 51
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    float-to-int v0, v0

    .line 56
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 60
    .line 61
    const-wide/16 v2, 0x10

    .line 62
    .line 63
    add-long/2addr v0, v2

    .line 64
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 65
    .line 66
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    long-to-float v2, v2

    .line 10
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 11
    .line 12
    div-float/2addr v2, v3

    .line 13
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 14
    .line 15
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 16
    .line 17
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 18
    .line 19
    mul-float v6, v4, v2

    .line 20
    .line 21
    add-float/2addr v6, v3

    .line 22
    const/high16 v3, 0x3f000000    # 0.5f

    .line 23
    .line 24
    mul-float/2addr v3, v5

    .line 25
    mul-float/2addr v3, v2

    .line 26
    mul-float/2addr v3, v2

    .line 27
    add-float/2addr v3, v6

    .line 28
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 29
    .line 30
    mul-float/2addr v5, v2

    .line 31
    add-float/2addr v5, v4

    .line 32
    iput v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 33
    .line 34
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 35
    .line 36
    return-void
.end method

.method private moveHandle(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, -0x2712

    .line 7
    .line 8
    const/16 v4, -0x2711

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    if-ne p1, v4, :cond_0

    .line 13
    .line 14
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr p1, v1

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    if-ne p1, v3, :cond_1

    .line 30
    .line 31
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 32
    .line 33
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 34
    .line 35
    add-int/2addr p1, v1

    .line 36
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 37
    .line 38
    sub-int/2addr p1, v1

    .line 39
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 40
    .line 41
    sub-int/2addr p1, v1

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sub-int/2addr p1, v1

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sub-int v3, p1, v1

    .line 60
    .line 61
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 62
    .line 63
    if-ge p1, v4, :cond_2

    .line 64
    .line 65
    sub-int v3, v4, v1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 69
    .line 70
    iget v4, p0, Landroid/view/View;->mBottom:I

    .line 71
    .line 72
    add-int v5, p1, v4

    .line 73
    .line 74
    iget v6, p0, Landroid/view/View;->mTop:I

    .line 75
    .line 76
    sub-int/2addr v5, v6

    .line 77
    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 78
    .line 79
    sub-int/2addr v5, v7

    .line 80
    sub-int/2addr v5, v1

    .line 81
    if-le v3, v5, :cond_3

    .line 82
    .line 83
    add-int/2addr p1, v4

    .line 84
    sub-int/2addr p1, v6

    .line 85
    sub-int/2addr p1, v7

    .line 86
    sub-int v3, p1, v1

    .line 87
    .line 88
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 92
    .line 93
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 104
    .line 105
    sub-int/2addr v4, v3

    .line 106
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 107
    .line 108
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 109
    .line 110
    sub-int/2addr v6, v3

    .line 111
    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 112
    .line 113
    .line 114
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    sub-int/2addr v0, v3

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    sub-int/2addr p1, v3

    .line 124
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    add-int/2addr v3, p1

    .line 131
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_4
    if-ne p1, v4, :cond_5

    .line 140
    .line 141
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    sub-int/2addr p1, v1

    .line 148
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    if-ne p1, v3, :cond_6

    .line 156
    .line 157
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 158
    .line 159
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 160
    .line 161
    add-int/2addr p1, v1

    .line 162
    iget v1, p0, Landroid/view/View;->mLeft:I

    .line 163
    .line 164
    sub-int/2addr p1, v1

    .line 165
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 166
    .line 167
    sub-int/2addr p1, v1

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    sub-int/2addr p1, v1

    .line 173
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    sub-int v3, p1, v1

    .line 185
    .line 186
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 187
    .line 188
    if-ge p1, v4, :cond_7

    .line 189
    .line 190
    sub-int v3, v4, v1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 194
    .line 195
    iget v4, p0, Landroid/view/View;->mRight:I

    .line 196
    .line 197
    add-int v5, p1, v4

    .line 198
    .line 199
    iget v6, p0, Landroid/view/View;->mLeft:I

    .line 200
    .line 201
    sub-int/2addr v5, v6

    .line 202
    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 203
    .line 204
    sub-int/2addr v5, v7

    .line 205
    sub-int/2addr v5, v1

    .line 206
    if-le v3, v5, :cond_8

    .line 207
    .line 208
    add-int/2addr p1, v4

    .line 209
    sub-int/2addr p1, v6

    .line 210
    sub-int/2addr p1, v7

    .line 211
    sub-int v3, p1, v1

    .line 212
    .line 213
    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 217
    .line 218
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 227
    .line 228
    sub-int/2addr v0, v3

    .line 229
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 232
    .line 233
    sub-int/2addr v5, v3

    .line 234
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    .line 235
    .line 236
    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 237
    .line 238
    .line 239
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 240
    .line 241
    sub-int v0, p1, v3

    .line 242
    .line 243
    sub-int/2addr p1, v3

    .line 244
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    add-int/2addr v3, p1

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 259
    .line 260
    .line 261
    :goto_2
    return-void
.end method

.method private openDrawer()V
    .locals 2

    .line 1
    const/16 v0, -0x2711

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private performFling(IFZZ)V
    .locals 3

    .line 1
    int-to-float v0, p1

    .line 2
    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 3
    .line 4
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    if-nez p3, :cond_2

    .line 12
    .line 13
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 14
    .line 15
    int-to-float v0, p3

    .line 16
    cmpl-float v0, p2, v0

    .line 17
    .line 18
    if-gtz v0, :cond_2

    .line 19
    .line 20
    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 21
    .line 22
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 30
    .line 31
    :goto_0
    add-int/2addr v0, v2

    .line 32
    if-le p1, v0, :cond_1

    .line 33
    .line 34
    neg-int p1, p3

    .line 35
    int-to-float p1, p1

    .line 36
    cmpl-float p1, p2, p1

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 42
    .line 43
    neg-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 46
    .line 47
    cmpl-float p1, p2, v1

    .line 48
    .line 49
    if-lez p1, :cond_7

    .line 50
    .line 51
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 55
    .line 56
    int-to-float p1, p1

    .line 57
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 58
    .line 59
    cmpg-float p1, p2, v1

    .line 60
    .line 61
    if-gez p1, :cond_7

    .line 62
    .line 63
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-nez p3, :cond_6

    .line 67
    .line 68
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 69
    .line 70
    int-to-float p3, p3

    .line 71
    cmpl-float p3, p2, p3

    .line 72
    .line 73
    if-gtz p3, :cond_5

    .line 74
    .line 75
    iget-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 76
    .line 77
    if-eqz p3, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    :goto_2
    div-int/lit8 p3, p3, 0x2

    .line 89
    .line 90
    if-le p1, p3, :cond_6

    .line 91
    .line 92
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 93
    .line 94
    neg-int p1, p1

    .line 95
    int-to-float p1, p1

    .line 96
    cmpl-float p1, p2, p1

    .line 97
    .line 98
    if-lez p1, :cond_6

    .line 99
    .line 100
    :cond_5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 101
    .line 102
    int-to-float p1, p1

    .line 103
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 104
    .line 105
    cmpg-float p1, p2, v1

    .line 106
    .line 107
    if-gez p1, :cond_7

    .line 108
    .line 109
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 113
    .line 114
    neg-int p1, p1

    .line 115
    int-to-float p1, p1

    .line 116
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 117
    .line 118
    cmpl-float p1, p2, v1

    .line 119
    .line 120
    if-lez p1, :cond_7

    .line 121
    .line 122
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 123
    .line 124
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide p1

    .line 128
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 129
    .line 130
    const-wide/16 v0, 0x10

    .line 131
    .line 132
    add-long/2addr p1, v0

    .line 133
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 134
    .line 135
    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 137
    .line 138
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 144
    .line 145
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private prepareContent()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/high16 v3, 0x40000000    # 2.0f

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 22
    .line 23
    iget v4, p0, Landroid/view/View;->mBottom:I

    .line 24
    .line 25
    iget v5, p0, Landroid/view/View;->mTop:I

    .line 26
    .line 27
    sub-int/2addr v4, v5

    .line 28
    sub-int/2addr v4, v1

    .line 29
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 30
    .line 31
    sub-int/2addr v4, v5

    .line 32
    iget v5, p0, Landroid/view/View;->mRight:I

    .line 33
    .line 34
    iget v6, p0, Landroid/view/View;->mLeft:I

    .line 35
    .line 36
    sub-int/2addr v5, v6

    .line 37
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 49
    .line 50
    add-int/2addr v3, v1

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 56
    .line 57
    add-int/2addr v5, v1

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/2addr v1, v5

    .line 63
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget v4, p0, Landroid/view/View;->mRight:I

    .line 74
    .line 75
    iget v5, p0, Landroid/view/View;->mLeft:I

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    sub-int/2addr v4, v1

    .line 79
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 80
    .line 81
    sub-int/2addr v4, v5

    .line 82
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iget v5, p0, Landroid/view/View;->mBottom:I

    .line 87
    .line 88
    iget v6, p0, Landroid/view/View;->mTop:I

    .line 89
    .line 90
    sub-int/2addr v5, v6

    .line 91
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 96
    .line 97
    .line 98
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 99
    .line 100
    add-int v4, v1, v3

    .line 101
    .line 102
    add-int/2addr v3, v1

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    add-int/2addr v1, v3

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 129
    .line 130
    .line 131
    :cond_3
    const/16 v1, 0x8

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private prepareTracking(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 11
    .line 12
    xor-int/2addr v1, v0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 19
    .line 20
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 21
    .line 22
    int-to-float p1, p1

    .line 23
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 24
    .line 25
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 43
    .line 44
    :goto_0
    sub-int/2addr v1, v2

    .line 45
    add-int/2addr p1, v1

    .line 46
    int-to-float p1, p1

    .line 47
    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 48
    .line 49
    float-to-int p1, p1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 51
    .line 52
    .line 53
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 65
    .line 66
    const-wide/16 v3, 0x10

    .line 67
    .line 68
    add-long/2addr v1, v3

    .line 69
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 70
    .line 71
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 80
    .line 81
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method private stopTracking(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 5
    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 4
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateOpen()V
    .locals 3

    .line 3
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 4
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    const/16 v1, 0x20

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateToggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 6
    .line 7
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 8
    .line 9
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 10
    .line 11
    .line 12
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 22
    .line 23
    if-eqz v2, :cond_6

    .line 24
    .line 25
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    invoke-virtual {p1, v4, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    invoke-virtual {p1, v4, v1, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    move v4, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 73
    .line 74
    sub-int/2addr v4, v6

    .line 75
    int-to-float v4, v4

    .line 76
    :goto_1
    if-eqz v3, :cond_5

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 83
    .line 84
    sub-int/2addr v2, v3

    .line 85
    int-to-float v5, v2

    .line 86
    :cond_5
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "The content attribute is must refer to an existing child."

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "The handle attribute is must refer to an existing child."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    float-to-int v6, v2

    .line 31
    float-to-int v7, v3

    .line 32
    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    float-to-int v2, v3

    .line 68
    sub-int/2addr v2, v0

    .line 69
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 70
    .line 71
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    float-to-int v2, v2

    .line 82
    sub-int/2addr v2, v0

    .line 83
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 84
    .line 85
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p5, p3

    .line 8
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 19
    .line 20
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sub-int/2addr p4, p2

    .line 26
    div-int/lit8 p4, p4, 0x2

    .line 27
    .line 28
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget p5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sub-int/2addr p5, p3

    .line 36
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 37
    .line 38
    add-int/2addr p5, v1

    .line 39
    :goto_0
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 40
    .line 41
    add-int/2addr v1, p3

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 47
    .line 48
    add-int/2addr v4, p3

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    add-int/2addr v5, v4

    .line 54
    invoke-virtual {v0, v2, v1, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    sub-int/2addr p4, p2

    .line 66
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 67
    .line 68
    add-int/2addr p4, v1

    .line 69
    :goto_1
    sub-int/2addr p5, p3

    .line 70
    div-int/lit8 p5, p5, 0x2

    .line 71
    .line 72
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 73
    .line 74
    add-int v3, v1, p2

    .line 75
    .line 76
    add-int/2addr v1, p2

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/2addr v4, v1

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 87
    .line 88
    .line 89
    :goto_2
    add-int/2addr p2, p4

    .line 90
    add-int/2addr p3, p5

    .line 91
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 105
    .line 106
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 27
    .line 28
    const/high16 p2, 0x40000000    # 2.0f

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sub-int p1, v3, p1

    .line 37
    .line 38
    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 39
    .line 40
    sub-int/2addr p1, v0

    .line 41
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 42
    .line 43
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-int p1, v1, p1

    .line 60
    .line 61
    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 62
    .line 63
    sub-int/2addr p1, v0

    .line 64
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 65
    .line 66
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string p2, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_18

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v0, v3, :cond_3

    .line 28
    .line 29
    goto/16 :goto_a

    .line 30
    .line 31
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    float-to-int v0, v0

    .line 45
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 46
    .line 47
    sub-int/2addr v0, v3

    .line 48
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_a

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 54
    .line 55
    iget v3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    cmpg-float v6, v3, v5

    .line 74
    .line 75
    if-gez v6, :cond_4

    .line 76
    .line 77
    move v6, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move v6, v2

    .line 80
    :goto_1
    cmpg-float v5, v0, v5

    .line 81
    .line 82
    if-gez v5, :cond_5

    .line 83
    .line 84
    neg-float v0, v0

    .line 85
    :cond_5
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 86
    .line 87
    int-to-float v7, v5

    .line 88
    cmpl-float v7, v0, v7

    .line 89
    .line 90
    if-lez v7, :cond_9

    .line 91
    .line 92
    int-to-float v0, v5

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    cmpg-float v6, v0, v5

    .line 95
    .line 96
    if-gez v6, :cond_7

    .line 97
    .line 98
    move v6, v1

    .line 99
    goto :goto_2

    .line 100
    :cond_7
    move v6, v2

    .line 101
    :goto_2
    cmpg-float v5, v3, v5

    .line 102
    .line 103
    if-gez v5, :cond_8

    .line 104
    .line 105
    neg-float v3, v3

    .line 106
    :cond_8
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 107
    .line 108
    int-to-float v7, v5

    .line 109
    cmpl-float v7, v3, v7

    .line 110
    .line 111
    if-lez v7, :cond_9

    .line 112
    .line 113
    int-to-float v3, v5

    .line 114
    :cond_9
    :goto_3
    float-to-double v7, v0

    .line 115
    float-to-double v9, v3

    .line 116
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    double-to-float v0, v7

    .line 121
    if-eqz v6, :cond_a

    .line 122
    .line 123
    neg-float v0, v0

    .line 124
    :cond_a
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 141
    .line 142
    int-to-float v7, v7

    .line 143
    cmpg-float v6, v6, v7

    .line 144
    .line 145
    if-gez v6, :cond_16

    .line 146
    .line 147
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 148
    .line 149
    if-eqz v4, :cond_c

    .line 150
    .line 151
    if-eqz v6, :cond_b

    .line 152
    .line 153
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 154
    .line 155
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 156
    .line 157
    add-int/2addr v7, v8

    .line 158
    if-lt v3, v7, :cond_e

    .line 159
    .line 160
    :cond_b
    if-nez v6, :cond_14

    .line 161
    .line 162
    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 163
    .line 164
    iget v7, p0, Landroid/view/View;->mBottom:I

    .line 165
    .line 166
    add-int/2addr v6, v7

    .line 167
    iget v7, p0, Landroid/view/View;->mTop:I

    .line 168
    .line 169
    sub-int/2addr v6, v7

    .line 170
    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 171
    .line 172
    sub-int/2addr v6, v7

    .line 173
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 174
    .line 175
    sub-int/2addr v6, v7

    .line 176
    if-le v3, v6, :cond_14

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_c
    if-eqz v6, :cond_d

    .line 180
    .line 181
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 182
    .line 183
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 184
    .line 185
    add-int/2addr v7, v8

    .line 186
    if-lt v5, v7, :cond_e

    .line 187
    .line 188
    :cond_d
    if-nez v6, :cond_14

    .line 189
    .line 190
    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 191
    .line 192
    iget v7, p0, Landroid/view/View;->mRight:I

    .line 193
    .line 194
    add-int/2addr v6, v7

    .line 195
    iget v7, p0, Landroid/view/View;->mLeft:I

    .line 196
    .line 197
    sub-int/2addr v6, v7

    .line 198
    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 199
    .line 200
    sub-int/2addr v6, v7

    .line 201
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 202
    .line 203
    sub-int/2addr v6, v7

    .line 204
    if-le v5, v6, :cond_14

    .line 205
    .line 206
    :cond_e
    :goto_4
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 207
    .line 208
    if-eqz v6, :cond_12

    .line 209
    .line 210
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 211
    .line 212
    .line 213
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 214
    .line 215
    if-eqz v0, :cond_10

    .line 216
    .line 217
    if-eqz v4, :cond_f

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_f
    move v3, v5

    .line 221
    :goto_5
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    .line 222
    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_10
    if-eqz v4, :cond_11

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_11
    move v3, v5

    .line 229
    :goto_6
    invoke-direct {p0, v3, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    .line 230
    .line 231
    .line 232
    goto :goto_a

    .line 233
    :cond_12
    if-eqz v4, :cond_13

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_13
    move v3, v5

    .line 237
    :goto_7
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 238
    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_14
    if-eqz v4, :cond_15

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_15
    move v3, v5

    .line 245
    :goto_8
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 246
    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_16
    if-eqz v4, :cond_17

    .line 250
    .line 251
    goto :goto_9

    .line 252
    :cond_17
    move v3, v5

    .line 253
    :goto_9
    invoke-direct {p0, v3, v0, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 254
    .line 255
    .line 256
    :cond_18
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 257
    .line 258
    if-nez v0, :cond_1a

    .line 259
    .line 260
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 261
    .line 262
    if-nez v0, :cond_1a

    .line 263
    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_19

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_19
    move v1, v2

    .line 272
    :cond_1a
    :goto_b
    return v1
.end method

.method public open()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
