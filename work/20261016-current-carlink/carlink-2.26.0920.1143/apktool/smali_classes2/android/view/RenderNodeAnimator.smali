.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const-wide/16 v0, 0x12c

    .line 3
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 5
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 6
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 7
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 9
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->init(J)V

    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const-wide/16 v0, 0x12c

    .line 31
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 33
    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 34
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->init(J)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const-wide/16 v1, 0x12c

    .line 13
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 15
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 16
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 17
    invoke-static {v1, v2, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 18
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const-wide/16 v1, 0x12c

    .line 22
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    const-wide/16 v1, 0x0

    .line 23
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 24
    iput-wide v1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 25
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v1

    .line 26
    invoke-static {v1, v2, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 27
    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/view/RenderNodeAnimator;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    move-result p0

    return p0
.end method

.method private applyInterpolator()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 13
    .line 14
    check-cast v0, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iget-object v2, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :goto_0
    iget-object v2, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    return-void
.end method

.method private checkMutable()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Animator has already started, cannot change it now!"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method private doStart()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 13
    .line 14
    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 15
    .line 16
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    .line 17
    .line 18
    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .locals 2

    .line 1
    sget-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method private init(J)V
    .locals 1

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method

.method public static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .locals 1

    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method private moveToRunningState()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nStart(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 21
    .line 22
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private processDelayed(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sub-long/2addr p1, v0

    .line 13
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 14
    .line 15
    cmp-long p1, p1, v0

    .line 16
    .line 17
    if-ltz p1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method private releaseNativePtr()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 8
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nSetListener(JLandroid/view/RenderNodeAnimator;)V

    .line 10
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v2, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_0
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 41
    .line 42
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->end()V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getNativeAnimator()J
    .locals 2

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 4

    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinished()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x3

    .line 23
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 45
    .line 46
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public pause()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 3
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 4
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float p1, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result p2

    mul-float/2addr p2, p1

    float-to-long p1, p2

    invoke-static {v0, v1, p1, p2}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be positive; "

    .line 6
    invoke-static {v1, p1, p2}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 5
    .line 6
    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 11
    .line 12
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    long-to-float p1, p1

    .line 17
    mul-float/2addr v0, p1

    .line 18
    float-to-long p1, v0

    .line 19
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string/jumbo v1, "startDelay must be positive; "

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1, p2}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public setStartValue(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/view/DisplayListCanvas;

    .line 5
    iget-object p1, p1, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a GLES20RecordingCanvas"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 2
    iget-object p1, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-wide v1, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    iget-boolean v1, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "Already started!"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "Missing target!"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method
