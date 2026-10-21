.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$SlidingHandler;,
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

.field private static final MSG_ANIMATE:I = 0x3e8

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

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

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
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/widget/SlidingDrawer$SlidingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 6
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ne p3, p2, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v1

    .line 8
    :goto_0
    iput-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    const/4 p3, 0x3

    .line 11
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 p3, 0x6

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 p2, 0x4

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p3, 0x5

    .line 14
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_2

    if-eq p2, p3, :cond_1

    .line 15
    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 16
    iput p3, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x40c00000    # 6.0f

    mul-float/2addr p3, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 18
    iput p3, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 19
    iput p3, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 p3, 0x43160000    # 150.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 20
    iput p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 p3, 0x43480000    # 200.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 21
    iput p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 p3, 0x44fa0000    # 2000.0f

    mul-float/2addr p3, p2

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 22
    iput p3, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p3

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 23
    iput p2, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content and handle attributes must refer to different children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The content attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/SlidingDrawer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/SlidingDrawer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpen(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 6
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    .line 2
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 5
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_1

    .line 6
    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 7
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 8
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    :cond_2
    float-to-int v0, v0

    .line 9
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 10
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 11
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 3
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 4
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 5
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    .line 6
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 7
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 8
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 2
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    .line 3
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    :cond_0
    if-ne p1, v3, :cond_1

    .line 5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v3, p1, v1

    .line 8
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_2

    sub-int v3, v4, v1

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int v5, p1, v4

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v1

    if-le v3, v5, :cond_3

    add-int/2addr p1, v4

    sub-int/2addr p1, v6

    sub-int/2addr p1, v7

    sub-int v3, p1, v1

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 11
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 12
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 16
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/graphics/Rect;->union(IIII)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_4
    if-ne p1, v4, :cond_5

    .line 18
    iget p1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    .line 20
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v1, p0, Landroid/view/View;->mRight:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v3, p1, v1

    .line 23
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_7

    sub-int v3, v4, v1

    goto :goto_1

    .line 24
    :cond_7
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v4, p0, Landroid/view/View;->mRight:I

    add-int v5, p1, v4

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v1

    if-le v3, v5, :cond_8

    add-int/2addr p1, v4

    sub-int/2addr p1, v6

    sub-int/2addr p1, v7

    sub-int v3, p1, v1

    .line 25
    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 26
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 27
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 31
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p1, v3

    sub-int/2addr p1, v3

    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method

.method private openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    .line 1
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 2
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 5
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    :cond_1
    return-void
.end method

.method private performFling(IFZ)V
    .locals 3

    int-to-float v0, p1

    .line 1
    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 2
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 3
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    .line 4
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, p3

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    neg-int p1, p3

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    .line 6
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 7
    :cond_2
    :goto_1
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    .line 8
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_3
    if-nez p3, :cond_6

    .line 9
    iget p3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p3, p3

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_5

    iget-boolean p3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    :goto_2
    div-int/lit8 p3, p3, 0x2

    if-le p1, p3, :cond_6

    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    .line 10
    :cond_5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_7

    .line 11
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    .line 12
    :cond_6
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float p1, p2, v1

    if-lez p1, :cond_7

    .line 13
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 14
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 15
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v0, 0x10

    add-long/2addr p1, v0

    .line 16
    iput-wide p1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 18
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 20
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->stopTracking()V

    return-void
.end method

.method private prepareContent()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 5
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 6
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 7
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 8
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 10
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 11
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 12
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int v4, v1, v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_3
    const/16 v1, 0x8

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareTracking(I)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    xor-int/2addr v1, v0

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 4
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 5
    iget p1, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 6
    iget p1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    sub-int/2addr v1, v3

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int p1, p1

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 8
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 9
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 11
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    .line 12
    iput-wide v1, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 13
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    goto :goto_1

    .line 14
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 16
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    :goto_1
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

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
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateOpen()V
    .locals 2

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
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

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

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 3
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 4
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 5
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_6

    .line 7
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    .line 8
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v5, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v4, v1, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_4

    move v4, v5

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    :cond_5
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_2
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 5
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 6
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 7
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 8
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 9
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 10
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 11
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 12
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 14
    :cond_2
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    .line 16
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 17
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v2

    sub-int/2addr v2, v0

    .line 19
    iput v2, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 20
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 21
    :goto_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 2
    iget-object p1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 5
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 6
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sub-int/2addr p4, p2

    .line 7
    div-int/lit8 p4, p4, 0x2

    .line 8
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_1

    iget p5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_0

    :cond_1
    sub-int/2addr p5, p3

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p5, v1

    .line 9
    :goto_0
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v4, p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 10
    :cond_2
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget p4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_3
    sub-int/2addr p4, p2

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr p4, v1

    :goto_1
    sub-int/2addr p5, p3

    .line 11
    div-int/lit8 p5, p5, 0x2

    .line 12
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int v3, v1, p2

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 13
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 7
    iget-boolean p1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int p1, v3, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr p1, v0

    .line 11
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 12
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto/16 :goto_a

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto/16 :goto_a

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    iget v3, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 9
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 10
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    cmpg-float v6, v3, v5

    if-gez v6, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    neg-float v0, v0

    .line 11
    :cond_5
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v5

    cmpl-float v7, v0, v7

    if-lez v7, :cond_9

    int-to-float v0, v5

    goto :goto_3

    :cond_6
    cmpg-float v6, v0, v5

    if-gez v6, :cond_7

    move v6, v1

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    neg-float v3, v3

    .line 12
    :cond_8
    iget v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v5

    cmpl-float v7, v3, v7

    if-lez v7, :cond_9

    int-to-float v3, v5

    :cond_9
    :goto_3
    float-to-double v7, v0

    float-to-double v9, v3

    .line 13
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v0, v7

    if-eqz v6, :cond_a

    neg-float v0, v0

    .line 14
    :cond_a
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 15
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    .line 17
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_c

    if-eqz v6, :cond_b

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v8

    if-lt v3, v7, :cond_e

    :cond_b
    if-nez v6, :cond_14

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v3, v6, :cond_14

    goto :goto_4

    :cond_c
    if-eqz v6, :cond_d

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v8

    if-lt v5, v7, :cond_e

    :cond_d
    if-nez v6, :cond_14

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_14

    .line 18
    :cond_e
    :goto_4
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v6, :cond_12

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 20
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_10

    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    move v3, v5

    .line 21
    :goto_5
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    goto :goto_a

    :cond_10
    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    move v3, v5

    .line 22
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    goto :goto_7

    :cond_13
    move v3, v5

    .line 23
    :goto_7
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_a

    :cond_14
    if-eqz v4, :cond_15

    goto :goto_8

    :cond_15
    move v3, v5

    .line 24
    :goto_8
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    goto :goto_a

    :cond_16
    if-eqz v4, :cond_17

    goto :goto_9

    :cond_17
    move v3, v5

    .line 25
    :goto_9
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    .line 26
    :cond_18
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_1a

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_b

    :cond_19
    move v1, v2

    :cond_1a
    :goto_b
    return v1
.end method

.method public open()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/16 v0, 0x20

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
