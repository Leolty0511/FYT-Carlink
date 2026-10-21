.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$RepeatMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F = 1.0f


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field private mFirstFrameTime:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mSelfPulse:Z

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mSuppressSelfPulseRequested:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 7
    .line 8
    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    .line 10
    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iput v3, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 17
    .line 18
    iput v3, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 19
    .line 20
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 23
    .line 24
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 29
    .line 30
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 31
    .line 32
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 33
    .line 34
    const-wide/16 v0, 0x12c

    .line 35
    .line 36
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 41
    .line 42
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 46
    .line 47
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 48
    .line 49
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 50
    .line 51
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 52
    .line 53
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 57
    .line 58
    return-void
.end method

.method private addAnimationCallback(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private addOneShotCommitCallback()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static areAnimatorsEnabled()Z
    .locals 2

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clampFraction(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :cond_1
    :goto_0
    return p1
.end method

.method private endAnimation()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroid/animation/Animator;->mPaused:Z

    .line 14
    .line 15
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 36
    .line 37
    .line 38
    :cond_3
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 43
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 47
    .line 48
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 49
    .line 50
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    move v3, v1

    .line 69
    :goto_1
    if-ge v3, v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    .line 76
    .line 77
    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 78
    .line 79
    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 86
    .line 87
    const-wide/16 v0, 0x8

    .line 88
    .line 89
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    cmpl-double v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    cmpl-float p1, p1, v0

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    sub-double/2addr v2, v0

    .line 22
    :cond_0
    double-to-int p1, v2

    .line 23
    return p1
.end method

.method private getCurrentIterationFraction(FZ)F
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v1, v0

    .line 10
    sub-float/2addr p1, v1

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    const/high16 p2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sub-float p1, p2, p1

    .line 20
    .line 21
    :cond_0
    return p1
.end method

.method public static getDurationScale()F
    .locals 1

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyStartListeners()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 27
    .line 28
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 29
    .line 30
    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 38
    .line 39
    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private removeAnimationCallback()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static setDurationScale(F)V
    .locals 0

    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    return-void
.end method

.method private shouldPlayBackward(IZ)Z
    .locals 3

    .line 1
    if-lez p1, :cond_4

    .line 2
    .line 3
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    if-lt p1, v2, :cond_0

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v0, v2, :cond_4

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    rem-int/2addr p1, v1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    move v0, v2

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    rem-int/2addr p1, v1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_3
    return v0

    .line 31
    :cond_4
    return p2
.end method

.method private start(Z)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 3
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_1

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1

    .line 5
    iget v3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    float-to-double v3, p1

    float-to-double v5, p1

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    .line 7
    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v3, p1

    .line 8
    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 9
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroid/animation/Animator;->mPaused:Z

    .line 11
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 12
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v3, -0x1

    .line 13
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 14
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    .line 15
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v3, 0x0

    .line 16
    invoke-direct {p0, v3, v4}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 17
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long p1, v5, v3

    if-eqz p1, :cond_2

    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float p1, p1, v0

    if-gez p1, :cond_2

    iget-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz p1, :cond_4

    .line 18
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 19
    iget p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, p1, v2

    if-nez v0, :cond_3

    .line 20
    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_4
    :goto_1
    return-void

    .line 22
    :cond_5
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 28
    .line 29
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    cmpl-float v2, v0, v1

    .line 33
    .line 34
    if-ltz v2, :cond_1

    .line 35
    .line 36
    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public animateBasedOnPlayTime(JJZ)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 19
    .line 20
    div-long v3, p1, v1

    .line 21
    .line 22
    long-to-int v3, v3

    .line 23
    div-long/2addr p3, v1

    .line 24
    long-to-int p3, p3

    .line 25
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 30
    .line 31
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eq p4, p3, :cond_0

    .line 36
    .line 37
    iget-object p3, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    const/4 p4, 0x0

    .line 46
    :goto_0
    if-ge p4, p3, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 55
    .line 56
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 p4, p4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget p3, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 63
    .line 64
    const/4 p4, -0x1

    .line 65
    if-eq p3, p4, :cond_1

    .line 66
    .line 67
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    int-to-long p3, p3

    .line 70
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 71
    .line 72
    mul-long/2addr p3, v0

    .line 73
    cmp-long p3, p1, p3

    .line 74
    .line 75
    if-ltz p3, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0, p5}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    long-to-float p1, p1

    .line 82
    iget-wide p2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 83
    .line 84
    long-to-float p2, p2

    .line 85
    div-float/2addr p1, p2

    .line 86
    invoke-direct {p0, p1, p5}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 95
    .line 96
    const-string p2, "Error: Play time should never be negative."

    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public animateBasedOnTime(J)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 17
    .line 18
    sub-long/2addr p1, v4

    .line 19
    long-to-float p1, p1

    .line 20
    long-to-float p2, v2

    .line 21
    div-float/2addr p1, p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    :goto_0
    iget p2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 26
    .line 27
    float-to-int v2, p1

    .line 28
    float-to-int p2, p2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-le v2, p2, :cond_1

    .line 31
    .line 32
    move p2, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p2, v1

    .line 35
    :goto_1
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 36
    .line 37
    add-int/lit8 v4, v2, 0x1

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    cmpl-float v4, p1, v4

    .line 41
    .line 42
    if-ltz v4, :cond_2

    .line 43
    .line 44
    const/4 v4, -0x1

    .line 45
    if-eq v2, v4, :cond_2

    .line 46
    .line 47
    move v2, v3

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v2, v1

    .line 50
    :goto_2
    if-nez v0, :cond_3

    .line 51
    .line 52
    :goto_3
    move v1, v3

    .line 53
    goto :goto_5

    .line 54
    :cond_3
    if-eqz p2, :cond_4

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    iget-object p2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    move v0, v1

    .line 67
    :goto_4
    if-ge v0, p2, :cond_5

    .line 68
    .line 69
    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 76
    .line 77
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    if-eqz v2, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    :goto_5
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 91
    .line 92
    iget-boolean p2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 93
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 99
    .line 100
    .line 101
    :cond_6
    return v1
.end method

.method public animateValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 8
    .line 9
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_1
    if-ge v1, p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 43
    .line 44
    invoke-interface {v0, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 54
    .line 55
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 64
    .line 65
    const-string v1, "Animators may only be run on Looper threads"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 7

    .line 3
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 4
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 8
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 9
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 10
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 11
    iput-boolean v1, v0, Landroid/animation/Animator;->mPaused:Z

    .line 12
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 13
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    const-wide/16 v2, -0x1

    .line 14
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 15
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 16
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 17
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 18
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 19
    iput-wide v2, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    const/4 v2, 0x0

    .line 20
    iput v2, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 21
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 23
    iput-boolean v1, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 24
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_1

    .line 25
    array-length v3, v2

    .line 26
    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 27
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_0
    if-ge v1, v3, :cond_1

    .line 28
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 29
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v1

    .line 30
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 9
    .line 10
    sub-long/2addr p1, v0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 18
    .line 19
    add-long/2addr v0, p1

    .line 20
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-wide v0, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 16
    .line 17
    long-to-float v0, v0

    .line 18
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 19
    .line 20
    mul-float/2addr v0, v1

    .line 21
    float-to-long v0, v0

    .line 22
    add-long/2addr v0, p1

    .line 23
    :goto_0
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 31
    .line 32
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 41
    .line 42
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 43
    .line 44
    cmp-long v0, v4, v2

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 49
    .line 50
    sub-long v4, p1, v4

    .line 51
    .line 52
    add-long/2addr v4, v6

    .line 53
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 54
    .line 55
    :cond_3
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 56
    .line 57
    const/high16 v4, -0x40800000    # -1.0f

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 62
    .line 63
    cmp-long v0, v5, p1

    .line 64
    .line 65
    if-lez v0, :cond_4

    .line 66
    .line 67
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 68
    .line 69
    cmpl-float v0, v0, v4

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    return v1

    .line 74
    :cond_4
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 76
    .line 77
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 81
    .line 82
    cmp-long v0, v5, v2

    .line 83
    .line 84
    if-gez v0, :cond_7

    .line 85
    .line 86
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    cmpl-float v0, v0, v2

    .line 90
    .line 91
    if-ltz v0, :cond_6

    .line 92
    .line 93
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    long-to-float v0, v2

    .line 98
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 99
    .line 100
    mul-float/2addr v0, v2

    .line 101
    float-to-long v2, v0

    .line 102
    sub-long v2, p1, v2

    .line 103
    .line 104
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 105
    .line 106
    iput v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 107
    .line 108
    :cond_6
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 109
    .line 110
    :cond_7
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 111
    .line 112
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 113
    .line 114
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide p1

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 125
    .line 126
    .line 127
    :cond_8
    return p1
.end method

.method public end()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 47
    .line 48
    const-string v1, "Animators may only be run on Looper threads"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/PropertyValuesHolder;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 11
    .line 12
    cmpg-float v0, v0, v1

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 18
    .line 19
    cmpl-float v2, v0, v1

    .line 20
    .line 21
    if-ltz v2, :cond_1

    .line 22
    .line 23
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 24
    .line 25
    long-to-float v1, v1

    .line 26
    mul-float/2addr v1, v0

    .line 27
    :goto_0
    float-to-long v0, v1

    .line 28
    return-wide v0

    .line 29
    :cond_1
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 30
    .line 31
    cmpl-float v1, v0, v1

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 42
    .line 43
    sub-long/2addr v1, v3

    .line 44
    long-to-float v1, v1

    .line 45
    div-float/2addr v1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getNameForTrace()Ljava/lang/String;
    .locals 1

    const-string v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 7

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0

    .line 9
    :cond_0
    iget-wide v1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 10
    .line 11
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    int-to-long v5, v0

    .line 16
    mul-long/2addr v3, v5

    .line 17
    add-long/2addr v3, v1

    .line 18
    return-wide v3
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method public initAnimation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 2
    .line 3
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public pulseAnimationFrame(J)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 17
    .line 18
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 34
    .line 35
    const-string v1, "Animators may only be resumed from the same thread that the animator was started on"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public reverse()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 13
    .line 14
    sub-long v4, v2, v4

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    sub-long/2addr v6, v4

    .line 21
    sub-long/2addr v2, v6

    .line 22
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 23
    .line 24
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 25
    .line 26
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 27
    .line 28
    xor-int/2addr v0, v1

    .line 29
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 37
    .line 38
    xor-int/2addr v0, v1

    .line 39
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-float v0, v0

    .line 22
    mul-float/2addr v0, p1

    .line 23
    float-to-long v0, v0

    .line 24
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v2, v0

    .line 29
    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 33
    .line 34
    :goto_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 35
    .line 36
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 37
    .line 38
    invoke-direct {p0, p1, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    long-to-float p1, p1

    .line 10
    long-to-float p2, v0

    .line 11
    div-float/2addr p1, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animators cannot have negative duration: "

    .line 4
    invoke-static {v1, p1, p2}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    aget-object v0, v0, v1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v0, v1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 37
    .line 38
    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    aget-object v0, v0, v1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v0, v1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 37
    .line 38
    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    aget-object v0, v0, v1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v2, v3, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v0, v1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 38
    .line 39
    :cond_3
    :goto_2
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-string p1, "ValueAnimator"

    .line 8
    .line 9
    const-string p2, "Start delay should always be non-negative"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-wide p1, v0

    .line 15
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 16
    .line 17
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 30
    .line 31
    return-void
.end method

.method public skipToEndValue(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    rem-int/2addr v1, v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p1

    .line 24
    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public startWithoutPulsing(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ValueAnimator@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    const-string v2, "\n    "

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method
