.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;
    }
.end annotation


# static fields
.field private static final MAX_DIST_THRESHOLD:F = 0.33f

.field private static final MIN_DIST_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mActivityTranslucencyConverted:Z

.field private mBlockGesture:Z

.field private mDiscardIntercept:Z

.field private final mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

.field private mDismissable:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mIsWindowNativelyTranslucent:Z

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 4
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 10
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 11
    new-instance p2, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 12
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 17
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 18
    new-instance p2, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    invoke-direct {p2, p0}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 19
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/internal/widget/SwipeDismissLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    return-void
.end method

.method private checkGesture(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->isAnimating()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private findActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    instance-of v1, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/app/Activity;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x5

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private progressToAlpha(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    return p1
.end method

.method private resetMembers()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 13
    .line 14
    const/high16 v1, -0x31000000

    .line 15
    .line 16
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 17
    .line 18
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 26
    .line 27
    return-void
.end method

.method private setProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v1, p1, v1

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    div-float v1, p1, v1

    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->progressToAlpha(F)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 6
    .line 7
    sub-float/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9
    .line 10
    const/16 v2, 0x3e8

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 22
    .line 23
    const/high16 v3, -0x31000000

    .line 24
    .line 25
    cmpl-float v2, v2, v3

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    sub-long/2addr v1, v3

    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    div-long/2addr v1, v3

    .line 41
    long-to-float v1, v1

    .line 42
    div-float v1, v0, v1

    .line 43
    .line 44
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-float v2, v2

    .line 53
    const v3, -0x41947ae0    # -0.23000002f

    .line 54
    .line 55
    .line 56
    mul-float/2addr v3, v1

    .line 57
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 58
    .line 59
    int-to-float v4, v4

    .line 60
    div-float/2addr v3, v4

    .line 61
    const v4, 0x3ea8f5c3    # 0.33f

    .line 62
    .line 63
    .line 64
    add-float/2addr v3, v4

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const v4, 0x3dcccccd    # 0.1f

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    mul-float/2addr v3, v2

    .line 77
    cmpl-float v0, v0, v3

    .line 78
    .line 79
    if-lez v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 86
    .line 87
    cmpl-float p1, p1, v0

    .line 88
    .line 89
    if-gez p1, :cond_2

    .line 90
    .line 91
    :cond_1
    iget p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 92
    .line 93
    int-to-float p1, p1

    .line 94
    cmpl-float p1, v1, p1

    .line 95
    .line 96
    if-ltz p1, :cond_3

    .line 97
    .line 98
    :cond_2
    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 100
    .line 101
    :cond_3
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    iget p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 110
    .line 111
    neg-int p1, p1

    .line 112
    int-to-float p1, p1

    .line 113
    cmpg-float p1, v1, p1

    .line 114
    .line 115
    if-gez p1, :cond_4

    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 10
    .line 11
    sub-float/2addr v1, v2

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 17
    .line 18
    sub-float/2addr p1, v2

    .line 19
    mul-float v2, v1, v1

    .line 20
    .line 21
    mul-float v3, p1, p1

    .line 22
    .line 23
    add-float/2addr v3, v2

    .line 24
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    .line 25
    .line 26
    mul-int v4, v2, v2

    .line 27
    .line 28
    int-to-float v4, v4

    .line 29
    cmpl-float v3, v3, v4

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-lez v3, :cond_1

    .line 33
    .line 34
    mul-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    cmpl-float v2, v1, v2

    .line 38
    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    cmpg-float p1, p1, v1

    .line 50
    .line 51
    if-gez p1, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 81
    .line 82
    :cond_3
    return-void
.end method


# virtual methods
.method public canScroll(Landroid/view/View;ZFFF)Z
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    sub-int/2addr v5, v2

    .line 23
    :goto_0
    if-ltz v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    int-to-float v6, v3

    .line 30
    add-float v6, p4, v6

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    int-to-float v8, v8

    .line 37
    cmpl-float v8, v6, v8

    .line 38
    .line 39
    if-ltz v8, :cond_0

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    int-to-float v8, v8

    .line 46
    cmpg-float v8, v6, v8

    .line 47
    .line 48
    if-gez v8, :cond_0

    .line 49
    .line 50
    int-to-float v8, v4

    .line 51
    add-float v8, p5, v8

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    int-to-float v9, v9

    .line 58
    cmpl-float v9, v8, v9

    .line 59
    .line 60
    if-ltz v9, :cond_0

    .line 61
    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    int-to-float v9, v9

    .line 67
    cmpg-float v9, v8, v9

    .line 68
    .line 69
    if-gez v9, :cond_0

    .line 70
    .line 71
    const/4 v9, 0x1

    .line 72
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    int-to-float v10, v10

    .line 77
    sub-float v10, v6, v10

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    int-to-float v6, v6

    .line 84
    sub-float v11, v8, v6

    .line 85
    .line 86
    move-object v6, p0

    .line 87
    move v8, v9

    .line 88
    move v9, p3

    .line 89
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    return v2

    .line 96
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    if-eqz p2, :cond_2

    .line 100
    .line 101
    move v1, p3

    .line 102
    neg-float v1, v1

    .line 103
    float-to-int v1, v1

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/4 v2, 0x0

    .line 112
    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mIsWindowNativelyTranslucent:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->findActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActivityTranslucencyConverted:Z

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-float/2addr v0, v2

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_a

    .line 38
    .line 39
    if-eq v0, v1, :cond_9

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    if-eq v0, v4, :cond_5

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    if-eq v0, v2, :cond_9

    .line 46
    .line 47
    const/4 v2, 0x5

    .line 48
    if-eq v0, v2, :cond_4

    .line 49
    .line 50
    const/4 v2, 0x6

    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 64
    .line 65
    if-ne v2, v4, :cond_b

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    move v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v0, v3

    .line 72
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 92
    .line 93
    if-eqz v0, :cond_b

    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/4 v4, -0x1

    .line 107
    if-ne v0, v4, :cond_7

    .line 108
    .line 109
    const-string p1, "SwipeDismissLayout"

    .line 110
    .line 111
    const-string v0, "Invalid pointer index: ignoring."

    .line 112
    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 124
    .line 125
    sub-float v9, v4, v5

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    cmpl-float v0, v9, v2

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    const/4 v8, 0x0

    .line 140
    move-object v6, p0

    .line 141
    move-object v7, p0

    .line 142
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 173
    .line 174
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 179
    .line 180
    const-string v0, "int1"

    .line 181
    .line 182
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 187
    .line 188
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 189
    .line 190
    .line 191
    :cond_b
    :goto_1
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 192
    .line 193
    if-nez p1, :cond_c

    .line 194
    .line 195
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 196
    .line 197
    if-eqz p1, :cond_c

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_c
    move v1, v3

    .line 201
    :goto_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->checkGesture(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mBlockGesture:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-float/2addr v0, v2

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    if-eq v0, v2, :cond_3

    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    if-eq v0, p1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 76
    .line 77
    sub-float/2addr p1, v0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateDismiss(Landroid/view/MotionEvent;)V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 96
    .line 97
    sub-float/2addr p1, v2

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateDismissal(F)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 107
    .line 108
    const/high16 v2, -0x31000000

    .line 109
    .line 110
    cmpl-float v0, v0, v2

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissAnimator:Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 121
    .line 122
    sub-float/2addr p1, v2

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animateRecovery(F)V

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_1
    return v1

    .line 130
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    return p1
.end method

.method public setDismissable(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissable:Z

    .line 14
    .line 15
    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    return-void
.end method
