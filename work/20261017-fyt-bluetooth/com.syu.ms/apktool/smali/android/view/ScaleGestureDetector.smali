.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    .line 4
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 5
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x105000a

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    const v0, 0x1050009

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 11
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic access$002(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method public static synthetic access$102(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 3
    iget-wide v3, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x80

    cmp-long v0, v0, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_b

    .line 4
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    xor-int/2addr v7, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_a

    if-ge v10, v8, :cond_1

    .line 6
    invoke-virtual {p1, v5, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v11

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v11

    .line 8
    :goto_3
    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    int-to-float v13, v12

    cmpg-float v13, v11, v13

    if-gez v13, :cond_2

    int-to-float v11, v12

    :cond_2
    add-float/2addr v4, v11

    .line 9
    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_3

    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    .line 10
    :cond_3
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    .line 11
    :cond_4
    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    cmpg-float v12, v11, v12

    if-gez v12, :cond_6

    .line 12
    :cond_5
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    :cond_6
    if-eqz v7, :cond_9

    .line 13
    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    float-to-int v11, v11

    .line 14
    iget v12, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ne v11, v12, :cond_7

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    .line 15
    :cond_7
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ge v10, v8, :cond_8

    .line 16
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v11

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    .line 17
    :goto_4
    iput-wide v11, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move v0, v3

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    int-to-float v1, v6

    div-float/2addr v4, v1

    if-eqz v0, :cond_c

    .line 18
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    add-float v2, v0, v1

    add-float/2addr v2, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 19
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 20
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    .line 21
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    .line 22
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    :cond_c
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    .line 2
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    .line 3
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private inDoubleTapMode()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 4
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v2, v3

    goto :goto_1

    :cond_4
    sub-float/2addr v2, v3

    :goto_1
    return v2

    .line 5
    :cond_5
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    div-float v2, v1, v0

    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 5
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_1

    .line 6
    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eqz v5, :cond_7

    .line 7
    :cond_4
    iget-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v7, :cond_5

    .line 8
    iget-object v7, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 9
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 10
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 11
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    goto :goto_2

    .line 12
    :cond_5
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v7, v4, :cond_6

    if-eqz v5, :cond_6

    .line 13
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 14
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 15
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 16
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    return v4

    :cond_7
    const/4 v5, 0x6

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_9

    const/4 v7, 0x5

    if-ne v2, v7, :cond_8

    goto :goto_3

    :cond_8
    move v7, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v7, v4

    :goto_4
    if-ne v2, v5, :cond_a

    move v5, v4

    goto :goto_5

    :cond_a
    move v5, v3

    :goto_5
    if-eqz v5, :cond_b

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    goto :goto_6

    :cond_b
    const/4 v8, -0x1

    .line 18
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-eqz v5, :cond_c

    add-int/lit8 v5, v9, -0x1

    goto :goto_7

    :cond_c
    move v5, v9

    .line 19
    :goto_7
    iget v10, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v10, v4, :cond_e

    .line 20
    iget-object v10, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 21
    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    cmpg-float v12, v12, v11

    if-gez v12, :cond_d

    .line 23
    iput-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_a

    .line 24
    :cond_d
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_a

    :cond_e
    move v10, v3

    move v11, v6

    move v12, v11

    :goto_8
    if-ge v10, v9, :cond_10

    if-ne v8, v10, :cond_f

    goto :goto_9

    .line 25
    :cond_f
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v11, v13

    .line 26
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_10
    int-to-float v10, v5

    div-float/2addr v11, v10

    div-float v10, v12, v10

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    .line 27
    :goto_a
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    move v13, v3

    move v12, v6

    :goto_b
    const/high16 v14, 0x40000000    # 2.0f

    if-ge v13, v9, :cond_12

    if-ne v8, v13, :cond_11

    goto :goto_c

    .line 28
    :cond_11
    iget v15, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    div-float/2addr v15, v14

    .line 29
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v15

    add-float/2addr v6, v14

    .line 30
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float/2addr v14, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v14, v15

    add-float/2addr v12, v14

    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    int-to-float v1, v5

    div-float/2addr v6, v1

    div-float/2addr v12, v1

    mul-float/2addr v6, v14

    mul-float/2addr v12, v14

    .line 31
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v12

    goto :goto_d

    :cond_13
    mul-float v1, v6, v6

    mul-float v5, v12, v12

    add-float/2addr v1, v5

    .line 32
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 33
    :goto_d
    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 34
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 35
    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 36
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v8

    if-nez v8, :cond_15

    iget-boolean v8, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_15

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_14

    if-eqz v7, :cond_15

    .line 37
    :cond_14
    iget-object v8, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 38
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 39
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 40
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_15
    if-eqz v7, :cond_16

    .line 41
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 42
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 43
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 44
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_e

    :cond_17
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 45
    :goto_e
    iget-boolean v7, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v7, :cond_19

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_19

    if-nez v5, :cond_18

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_19

    .line 46
    :cond_18
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 47
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 48
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 49
    iget-wide v7, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v7, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 50
    iget-object v3, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_19
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 51
    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 52
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 53
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 54
    iget-boolean v1, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v1, :cond_1a

    .line 55
    iget-object v1, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_f

    :cond_1a
    move v1, v4

    :goto_f
    if-eqz v1, :cond_1b

    .line 56
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 57
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 58
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 59
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    :cond_1b
    return v4
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {p1, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 4
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method
