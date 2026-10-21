.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;,
        Landroid/animation/ValueAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final RUNNING:I = 0x1

.field public static final SEEKED:I = 0x2

.field public static final STOPPED:I = 0x0

.field public static sAnimationHandler:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F = 1.0f


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field public mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mPauseTime:J

.field private mPlayingBackwards:Z

.field public mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mRunning:Z

.field public mSeekTime:J

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field public mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mValues:[Landroid/animation/PropertyValuesHolder;

.field public mValuesMap:Ljava/util/HashMap;
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

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 4
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 5
    iput v0, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 7
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 8
    iput v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 9
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 10
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 11
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 12
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 13
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v1, 0x12c

    .line 14
    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 16
    iput-wide v1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    .line 17
    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 19
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Landroid/animation/ValueAnimator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public static synthetic access$100(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/animation/ValueAnimator;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$302(Landroid/animation/ValueAnimator;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return p1
.end method

.method public static synthetic access$400(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 2

    .line 1
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 3
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    .line 6
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    :cond_1
    return v1

    .line 7
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_3

    .line 8
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 9
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    .line 10
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v5, p1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    .line 11
    :cond_3
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v3, p1, v3

    .line 12
    iget-wide v5, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 13
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 14
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 5
    iput-boolean p1, p0, Landroid/animation/Animator;->mPaused:Z

    .line 6
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 13
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 14
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 15
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    const-wide/16 v0, 0x8

    .line 16
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .line 1
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDurationScale()F
    .locals 1

    .line 1
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;
    .locals 2

    .line 1
    sget-object v0, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>(Landroid/animation/ValueAnimator$1;)V

    .line 3
    sget-object v1, Landroid/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private notifyStartListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0

    .line 1
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/view/Choreographer;->setFrameDelay(J)V

    return-void
.end method

.method private start(Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 4
    iput p1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 6
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 7
    iput-boolean p1, p0, Landroid/animation/Animator;->mPaused:Z

    .line 8
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v1

    .line 9
    iget-object v2, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 11
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 12
    iput p1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 13
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 14
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator$AnimationHandler;->start()V

    return-void

    .line 16
    :cond_1
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V
    .locals 4

    const-wide/16 v0, 0x8

    .line 1
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 4
    iget-object p1, p1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 3
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 7
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public animationFrame(J)Z
    .locals 9

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    iget-wide v7, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v7

    long-to-float p1, p1

    long-to-float p2, v4

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    move p1, v6

    :goto_0
    cmpl-float p2, p1, v6

    if-ltz p2, :cond_6

    .line 3
    iget p2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lt p2, v0, :cond_3

    const/4 p2, -0x1

    if-ne v0, p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {p1, v6}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v2, v3

    goto :goto_3

    .line 5
    :cond_3
    :goto_1
    iget-object p2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_4

    .line 7
    iget-object v4, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8
    :cond_4
    iget p2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    if-ne p2, v1, :cond_5

    .line 9
    iget-boolean p2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 10
    :cond_5
    iget p2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    rem-float/2addr p1, v6

    .line 11
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 12
    :cond_6
    :goto_3
    iget-boolean p2, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz p2, :cond_7

    sub-float p1, v6, p1

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    :goto_4
    return v2
.end method

.method public cancel()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 2
    iget v1, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 4
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 6
    :cond_2
    iget-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 8
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    :cond_4
    return-void
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

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, v0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 9
    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 10
    iput v2, v0, Landroid/animation/ValueAnimator;->mCurrentIteration:I

    .line 11
    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 12
    iput v2, v0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 13
    iput-boolean v2, v0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 14
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1

    .line 15
    array-length v3, v1

    .line 16
    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 18
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 19
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    .line 20
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

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

.method public final doAnimationFrame(J)Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    .line 3
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 4
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    :cond_0
    sub-long v3, p1, v3

    .line 5
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    .line 6
    iput-wide v3, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_2

    .line 9
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    :cond_2
    return v3

    .line 10
    :cond_3
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v0, :cond_4

    .line 11
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 12
    iget-wide v3, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 13
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v2, p1, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 14
    :cond_4
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result p1

    return p1
.end method

.method public end()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/animation/ValueAnimator;->getOrCreateAnimationHandler()Landroid/animation/ValueAnimator$AnimationHandler;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartedDelay:Z

    .line 4
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->startAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 8
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 9
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->endAnimation(Landroid/animation/ValueAnimator$AnimationHandler;)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .line 1
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

.method public getCurrentPlayTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
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

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method public initAnimation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    .line 2
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.method public reverse()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 2
    iget v0, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v2, v0, v2

    .line 5
    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mDuration:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->start(Z)V

    :goto_0
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Landroid/animation/ValueAnimator;->mPlayingState:I

    :cond_0
    sub-long p1, v0, p1

    .line 6
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

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
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledDuration:J

    long-to-float p1, p1

    .line 3
    sget p2, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object v0, v0, v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 5
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 6
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object v0, v0, v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 5
    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 6
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object v0, v0, v1

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string v3, ""

    .line 5
    invoke-static {v3, v2, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 6
    :goto_1
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    long-to-float v0, p1

    .line 1
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 2
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mUnscaledStartDelay:J

    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    aget-object v3, p1, v2

    .line 5
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
