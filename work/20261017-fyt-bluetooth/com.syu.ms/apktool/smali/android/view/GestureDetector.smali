.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 3
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz p3, :cond_1

    .line 6
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p3, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {p3, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object p3, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 8
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 9
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_2

    .line 10
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method public static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method public static synthetic access$502(Landroid/view/GestureDetector;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 7
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 8
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 9
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 10
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 11
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 12
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 5
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 6
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 7
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 8
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v1, :cond_0

    .line 9
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 4
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    const-string v1, "OnGestureListener must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    .line 5
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v0

    .line 6
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move v1, p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move p1, v0

    move v0, v2

    :goto_0
    mul-int/2addr p1, p1

    .line 14
    iput p1, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    mul-int/2addr v1, v1

    .line 15
    iput v1, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    mul-int/2addr v0, v0

    .line 16
    iput v0, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    return-void
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3
    sget p2, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    sget p2, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    mul-int/2addr p2, p2

    mul-int/2addr p1, p1

    add-int/2addr p2, p1

    .line 6
    iget p1, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    .line 8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v1

    move v9, v7

    move v10, v9

    :goto_2
    if-ge v8, v6, :cond_5

    if-ne v5, v8, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 10
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_4
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_1c

    const/16 v8, 0x3e8

    if-eq v0, v3, :cond_13

    if-eq v0, v4, :cond_c

    if-eq v0, v5, :cond_b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_7

    goto/16 :goto_8

    .line 11
    :cond_7
    iput v9, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v9, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 12
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 13
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 16
    iget-object v3, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 17
    iget-object v4, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    move v4, v1

    :goto_5
    if-ge v4, v6, :cond_11

    if-ne v4, v0, :cond_8

    goto :goto_6

    .line 18
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 19
    iget-object v8, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v3

    .line 20
    iget-object v9, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v8, v5

    cmpg-float v5, v8, v7

    if-gez v5, :cond_9

    .line 21
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_8

    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 22
    :cond_a
    iput v9, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v9, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 23
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 24
    invoke-direct {p0}, Landroid/view/GestureDetector;->cancelTaps()V

    goto/16 :goto_8

    .line 25
    :cond_b
    invoke-direct {p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_8

    .line 26
    :cond_c
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_d

    goto :goto_8

    .line 27
    :cond_d
    iget v0, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v0, v9

    .line 28
    iget v2, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v2, v10

    .line 29
    iget-boolean v6, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v6, :cond_e

    .line 30
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    goto/16 :goto_e

    .line 31
    :cond_e
    iget-boolean v6, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_10

    .line 32
    iget v6, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v6, v9, v6

    float-to-int v6, v6

    .line 33
    iget v7, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v7, v10, v7

    float-to-int v7, v7

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    .line 34
    iget v7, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    if-le v6, v7, :cond_f

    .line 35
    iget-object v7, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v2}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 36
    iput v9, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 37
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 38
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 39
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7

    :cond_f
    move v0, v1

    .line 42
    :goto_7
    iget v2, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    if-le v6, v2, :cond_22

    .line 43
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_e

    .line 44
    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-gez v3, :cond_12

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    move v0, v1

    goto/16 :goto_e

    .line 45
    :cond_12
    :goto_9
    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, p1, v0, v2}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 46
    iput v9, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 47
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_e

    .line 48
    :cond_13
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 49
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 50
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v2, :cond_14

    .line 51
    iget-object v2, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    goto :goto_c

    .line 52
    :cond_14
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v2, :cond_15

    .line 53
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_a

    .line 55
    :cond_15
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_16

    .line 56
    iget-object v2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 57
    iget-boolean v5, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v5, :cond_19

    iget-object v5, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v5, :cond_19

    .line 58
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_c

    .line 59
    :cond_16
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 61
    iget v6, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v2, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 62
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 63
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 64
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_18

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_17

    goto :goto_b

    :cond_17
    :goto_a
    move v2, v1

    goto :goto_c

    .line 65
    :cond_18
    :goto_b
    iget-object v5, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v7, p1, v2, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 66
    :cond_19
    :goto_c
    iget-object v5, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_1a

    .line 67
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 68
    :cond_1a
    iput-object v0, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 69
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1b

    .line 70
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 72
    :cond_1b
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 73
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 74
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    move v0, v2

    goto/16 :goto_e

    .line 76
    :cond_1c
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1f

    .line 77
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    :cond_1d
    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1e

    iget-object v6, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1e

    if-eqz v0, :cond_1e

    invoke-direct {p0, v2, v6, p1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 81
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v2}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 82
    iget-object v2, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_d

    .line 83
    :cond_1e
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v2

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f
    move v0, v1

    .line 84
    :goto_d
    iput v9, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v9, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 85
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 86
    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_20

    .line 87
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 88
    :cond_20
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 89
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 90
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 91
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 92
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 93
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 94
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v2, :cond_21

    .line 95
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v7, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    sget v7, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 97
    :cond_21
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sget v6, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 98
    iget-object v2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_22
    :goto_e
    if-nez v0, :cond_23

    .line 99
    iget-object v2, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_23

    .line 100
    invoke-virtual {v2, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_23
    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
