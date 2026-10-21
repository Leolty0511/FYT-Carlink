.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
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

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 6
    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 12
    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 18
    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    .line 24
    .line 25
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
    move-object p3, p2

    check-cast p3, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 11
    :cond_2
    instance-of p3, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz p3, :cond_3

    .line 12
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 13
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0

    .line 14
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

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method public static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method public static synthetic access$502(Landroid/view/GestureDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method private cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 43
    .line 44
    return-void
.end method

.method private cancelTaps()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 33
    .line 34
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 23
    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 29
    .line 30
    move v1, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 59
    .line 60
    move p1, v0

    .line 61
    move v0, v2

    .line 62
    :goto_0
    mul-int/2addr p1, p1

    .line 63
    iput p1, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 64
    .line 65
    mul-int/2addr v1, v1

    .line 66
    iput v1, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 67
    .line 68
    mul-int/2addr v0, v0

    .line 69
    iput v0, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 73
    .line 74
    const-string v0, "OnGestureListener must not be null"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

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
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    sub-long/2addr v2, v4

    .line 16
    sget p2, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 17
    .line 18
    int-to-long v4, p2

    .line 19
    cmp-long p2, v2, v4

    .line 20
    .line 21
    if-gtz p2, :cond_4

    .line 22
    .line 23
    sget p2, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    .line 24
    .line 25
    int-to-long v4, p2

    .line 26
    cmp-long p2, v2, v4

    .line 27
    .line 28
    if-gez p2, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    float-to-int p2, p2

    .line 36
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    sub-int/2addr p2, v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    float-to-int v0, v0

    .line 47
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    float-to-int p3, p3

    .line 52
    sub-int/2addr v0, p3

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    and-int/lit8 p1, p1, 0x8

    .line 58
    .line 59
    const/4 p3, 0x1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    move p1, p3

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move p1, v1

    .line 65
    :goto_0
    if-eqz p1, :cond_3

    .line 66
    .line 67
    move p1, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget p1, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 70
    .line 71
    :goto_1
    mul-int/2addr p2, p2

    .line 72
    mul-int/2addr v0, v0

    .line 73
    add-int/2addr v0, p2

    .line 74
    if-ge v0, p1, :cond_4

    .line 75
    .line 76
    move v1, p3

    .line 77
    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0xb

    .line 18
    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x1

    .line 23
    if-eq v2, v3, :cond_3

    .line 24
    .line 25
    const/16 p1, 0xc

    .line 26
    .line 27
    if-eq v2, p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean p1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 31
    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    if-eq v0, v4, :cond_2

    .line 35
    .line 36
    if-ne v0, v5, :cond_5

    .line 37
    .line 38
    :cond_2
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 39
    .line 40
    iput-boolean v6, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 48
    .line 49
    if-nez v3, :cond_5

    .line 50
    .line 51
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    if-eq v0, v4, :cond_4

    .line 56
    .line 57
    if-ne v0, v5, :cond_5

    .line 58
    .line 59
    :cond_4
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iput-boolean v6, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 66
    .line 67
    iget-object p1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    .line 77
    .line 78
    return v6

    .line 79
    :cond_5
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iput-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    move v4, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v4, v1

    .line 37
    :goto_0
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v5, -0x1

    .line 45
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    and-int/lit8 v6, v6, 0x8

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    move v6, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move v6, v1

    .line 56
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const/4 v8, 0x0

    .line 61
    move v9, v1

    .line 62
    move v10, v8

    .line 63
    move v11, v10

    .line 64
    :goto_3
    if-ge v9, v7, :cond_6

    .line 65
    .line 66
    if-ne v5, v9, :cond_5

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_5
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    add-float/2addr v10, v12

    .line 74
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    add-float/2addr v11, v12

    .line 79
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    if-eqz v4, :cond_7

    .line 83
    .line 84
    add-int/lit8 v4, v7, -0x1

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    move v4, v7

    .line 88
    :goto_5
    int-to-float v4, v4

    .line 89
    div-float/2addr v10, v4

    .line 90
    div-float/2addr v11, v4

    .line 91
    const/4 v4, 0x2

    .line 92
    const/4 v5, 0x3

    .line 93
    if-eqz v0, :cond_1f

    .line 94
    .line 95
    const/16 v9, 0x3e8

    .line 96
    .line 97
    if-eq v0, v3, :cond_16

    .line 98
    .line 99
    if-eq v0, v4, :cond_d

    .line 100
    .line 101
    if-eq v0, v5, :cond_c

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    if-eq v0, v3, :cond_b

    .line 105
    .line 106
    if-eq v0, v2, :cond_8

    .line 107
    .line 108
    goto/16 :goto_b

    .line 109
    .line 110
    :cond_8
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 111
    .line 112
    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 113
    .line 114
    iput v11, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 115
    .line 116
    iput v11, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 117
    .line 118
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 119
    .line 120
    iget v2, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 121
    .line 122
    int-to-float v2, v2

    .line 123
    invoke-virtual {v0, v9, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget-object v3, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iget-object v4, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    .line 142
    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move v4, v1

    .line 147
    :goto_6
    if-ge v4, v7, :cond_15

    .line 148
    .line 149
    if-ne v4, v0, :cond_9

    .line 150
    .line 151
    goto :goto_7

    .line 152
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    iget-object v6, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 157
    .line 158
    invoke-virtual {v6, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    mul-float/2addr v6, v3

    .line 163
    iget-object v9, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 164
    .line 165
    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    mul-float/2addr v5, v2

    .line 170
    add-float/2addr v5, v6

    .line 171
    cmpg-float v5, v5, v8

    .line 172
    .line 173
    if-gez v5, :cond_a

    .line 174
    .line 175
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_b

    .line 181
    .line 182
    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_b
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 186
    .line 187
    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 188
    .line 189
    iput v11, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 190
    .line 191
    iput v11, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 192
    .line 193
    invoke-direct {p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_b

    .line 197
    .line 198
    :cond_c
    invoke-direct {p0}, Landroid/view/GestureDetector;->cancel()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_b

    .line 202
    .line 203
    :cond_d
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 204
    .line 205
    if-nez v0, :cond_15

    .line 206
    .line 207
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 208
    .line 209
    if-eqz v0, :cond_e

    .line 210
    .line 211
    goto/16 :goto_b

    .line 212
    .line 213
    :cond_e
    iget v0, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 214
    .line 215
    sub-float/2addr v0, v10

    .line 216
    iget v2, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 217
    .line 218
    sub-float/2addr v2, v11

    .line 219
    iget-boolean v7, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 220
    .line 221
    if-eqz v7, :cond_f

    .line 222
    .line 223
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 224
    .line 225
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    or-int/2addr v0, v1

    .line 230
    goto/16 :goto_f

    .line 231
    .line 232
    :cond_f
    iget-boolean v7, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 233
    .line 234
    if-eqz v7, :cond_13

    .line 235
    .line 236
    iget v7, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 237
    .line 238
    sub-float v7, v10, v7

    .line 239
    .line 240
    float-to-int v7, v7

    .line 241
    iget v8, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 242
    .line 243
    sub-float v8, v11, v8

    .line 244
    .line 245
    float-to-int v8, v8

    .line 246
    mul-int/2addr v7, v7

    .line 247
    mul-int/2addr v8, v8

    .line 248
    add-int/2addr v8, v7

    .line 249
    if-eqz v6, :cond_10

    .line 250
    .line 251
    move v7, v1

    .line 252
    goto :goto_8

    .line 253
    :cond_10
    iget v7, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 254
    .line 255
    :goto_8
    if-le v8, v7, :cond_11

    .line 256
    .line 257
    iget-object v7, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 258
    .line 259
    iget-object v9, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 260
    .line 261
    invoke-interface {v7, v9, p1, v0, v2}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 266
    .line 267
    iput v11, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 268
    .line 269
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 270
    .line 271
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 272
    .line 273
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    .line 275
    .line 276
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    .line 280
    .line 281
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 282
    .line 283
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_11
    move v0, v1

    .line 288
    :goto_9
    if-eqz v6, :cond_12

    .line 289
    .line 290
    move v2, v1

    .line 291
    goto :goto_a

    .line 292
    :cond_12
    iget v2, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 293
    .line 294
    :goto_a
    if-le v8, v2, :cond_25

    .line 295
    .line 296
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 297
    .line 298
    goto/16 :goto_f

    .line 299
    .line 300
    :cond_13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    const/high16 v4, 0x3f800000    # 1.0f

    .line 305
    .line 306
    cmpl-float v3, v3, v4

    .line 307
    .line 308
    if-gez v3, :cond_14

    .line 309
    .line 310
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    cmpl-float v3, v3, v4

    .line 315
    .line 316
    if-ltz v3, :cond_15

    .line 317
    .line 318
    :cond_14
    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 319
    .line 320
    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 321
    .line 322
    invoke-interface {v3, v4, p1, v0, v2}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 327
    .line 328
    iput v11, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 329
    .line 330
    goto/16 :goto_f

    .line 331
    .line 332
    :cond_15
    :goto_b
    move v0, v1

    .line 333
    goto/16 :goto_f

    .line 334
    .line 335
    :cond_16
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 336
    .line 337
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 342
    .line 343
    if-eqz v2, :cond_17

    .line 344
    .line 345
    iget-object v2, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 346
    .line 347
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    or-int/2addr v2, v1

    .line 352
    goto :goto_d

    .line 353
    :cond_17
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 354
    .line 355
    if-eqz v2, :cond_18

    .line 356
    .line 357
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 358
    .line 359
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    .line 361
    .line 362
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_18
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 366
    .line 367
    if-eqz v2, :cond_19

    .line 368
    .line 369
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 370
    .line 371
    if-nez v2, :cond_19

    .line 372
    .line 373
    iget-object v2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 374
    .line 375
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    iget-boolean v5, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 380
    .line 381
    if-eqz v5, :cond_1c

    .line 382
    .line 383
    iget-object v5, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 384
    .line 385
    if-eqz v5, :cond_1c

    .line 386
    .line 387
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_19
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 392
    .line 393
    if-nez v2, :cond_1b

    .line 394
    .line 395
    iget-object v2, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 396
    .line 397
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    iget v6, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 402
    .line 403
    int-to-float v6, v6

    .line 404
    invoke-virtual {v2, v9, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    iget v7, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 420
    .line 421
    int-to-float v7, v7

    .line 422
    cmpl-float v5, v5, v7

    .line 423
    .line 424
    if-gtz v5, :cond_1a

    .line 425
    .line 426
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    iget v7, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 431
    .line 432
    int-to-float v7, v7

    .line 433
    cmpl-float v5, v5, v7

    .line 434
    .line 435
    if-lez v5, :cond_1b

    .line 436
    .line 437
    :cond_1a
    iget-object v5, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 438
    .line 439
    iget-object v7, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 440
    .line 441
    invoke-interface {v5, v7, p1, v2, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    goto :goto_d

    .line 446
    :cond_1b
    :goto_c
    move v2, v1

    .line 447
    :cond_1c
    :goto_d
    iget-object v5, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 448
    .line 449
    if-eqz v5, :cond_1d

    .line 450
    .line 451
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 452
    .line 453
    .line 454
    :cond_1d
    iput-object v0, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 455
    .line 456
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 457
    .line 458
    if-eqz v0, :cond_1e

    .line 459
    .line 460
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 461
    .line 462
    .line 463
    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 465
    .line 466
    :cond_1e
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 467
    .line 468
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 469
    .line 470
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 471
    .line 472
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 473
    .line 474
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 478
    .line 479
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    .line 481
    .line 482
    move v0, v2

    .line 483
    goto/16 :goto_f

    .line 484
    .line 485
    :cond_1f
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 486
    .line 487
    if-eqz v0, :cond_22

    .line 488
    .line 489
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 490
    .line 491
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_20

    .line 496
    .line 497
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 498
    .line 499
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    .line 501
    .line 502
    :cond_20
    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 503
    .line 504
    if-eqz v2, :cond_21

    .line 505
    .line 506
    iget-object v6, p0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 507
    .line 508
    if-eqz v6, :cond_21

    .line 509
    .line 510
    if-eqz v0, :cond_21

    .line 511
    .line 512
    invoke-direct {p0, v2, v6, p1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_21

    .line 517
    .line 518
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 519
    .line 520
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 521
    .line 522
    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 523
    .line 524
    invoke-interface {v0, v2}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    or-int/2addr v0, v1

    .line 529
    iget-object v2, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 530
    .line 531
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    or-int/2addr v0, v2

    .line 536
    goto :goto_e

    .line 537
    :cond_21
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 538
    .line 539
    sget v2, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 540
    .line 541
    int-to-long v6, v2

    .line 542
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    .line 544
    .line 545
    :cond_22
    move v0, v1

    .line 546
    :goto_e
    iput v10, p0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 547
    .line 548
    iput v10, p0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 549
    .line 550
    iput v11, p0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 551
    .line 552
    iput v11, p0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 553
    .line 554
    iget-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 555
    .line 556
    if-eqz v2, :cond_23

    .line 557
    .line 558
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 559
    .line 560
    .line 561
    :cond_23
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    iput-object v2, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 566
    .line 567
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 568
    .line 569
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 570
    .line 571
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 572
    .line 573
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 574
    .line 575
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 576
    .line 577
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 578
    .line 579
    if-eqz v2, :cond_24

    .line 580
    .line 581
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 582
    .line 583
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    .line 585
    .line 586
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 587
    .line 588
    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 589
    .line 590
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    .line 591
    .line 592
    .line 593
    move-result-wide v5

    .line 594
    sget v7, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 595
    .line 596
    int-to-long v7, v7

    .line 597
    add-long/2addr v5, v7

    .line 598
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 599
    .line 600
    .line 601
    :cond_24
    iget-object v2, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 602
    .line 603
    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 604
    .line 605
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    .line 606
    .line 607
    .line 608
    move-result-wide v4

    .line 609
    sget v6, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 610
    .line 611
    int-to-long v6, v6

    .line 612
    add-long/2addr v4, v6

    .line 613
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 614
    .line 615
    .line 616
    iget-object v2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 617
    .line 618
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    or-int/2addr v0, v2

    .line 623
    :cond_25
    :goto_f
    if-nez v0, :cond_26

    .line 624
    .line 625
    iget-object v2, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 626
    .line 627
    if-eqz v2, :cond_26

    .line 628
    .line 629
    invoke-virtual {v2, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 630
    .line 631
    .line 632
    :cond_26
    return v0
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method
