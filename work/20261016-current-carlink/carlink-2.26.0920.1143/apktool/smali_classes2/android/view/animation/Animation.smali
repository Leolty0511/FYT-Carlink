.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 3
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 4
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 5
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 7
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 8
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const-wide/16 v2, -0x1

    .line 9
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 10
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 11
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 12
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 14
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 15
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 16
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 19
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 20
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 21
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 22
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 25
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 26
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 27
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 29
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 30
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const-wide/16 v2, -0x1

    .line 31
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 32
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 33
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 34
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 35
    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 36
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    .line 37
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 38
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 39
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 40
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 41
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 42
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 43
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 44
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x2

    .line 45
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x5

    .line 46
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/16 v2, 0x9

    .line 47
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    const/4 v2, 0x3

    .line 48
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    const/4 v2, 0x4

    .line 49
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v2, 0x6

    .line 50
    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x7

    .line 51
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/16 v2, 0x8

    .line 52
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 53
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    const/16 v2, 0xa

    .line 54
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 55
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-lez v0, :cond_0

    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    return-void
.end method

.method private fireAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationRepeat()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private fireAnimationStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private isCanceled()Z
    .locals 4

    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 16
    .line 17
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 28
    .line 29
    return-void
.end method

.method public clone()Landroid/view/animation/Animation;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 6
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 4

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public detach()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 13
    .line 14
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public ensureInterpolator()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    int-to-float p2, p2

    .line 7
    int-to-float p3, p3

    .line 8
    int-to-float p4, p4

    .line 9
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 17
    .line 18
    .line 19
    const/high16 p1, -0x40800000    # -1.0f

    .line 20
    .line 21
    invoke-virtual {p5, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 34
    .line 35
    iget-object p2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 36
    .line 37
    invoke-virtual {p1, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p6, p2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 11

    .line 1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    .line 4
    iget-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    .line 5
    iget-wide v9, p0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v9, v0

    sub-long/2addr p1, v9

    long-to-float p1, p1

    long-to-float p2, v4

    div-float/2addr p1, p2

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    move p1, v7

    goto :goto_0

    :cond_2
    move p1, v8

    :goto_0
    cmpl-float p2, p1, v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_4

    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v1

    :goto_2
    xor-int/lit8 v4, p2, 0x1

    .line 8
    iput-boolean v4, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 9
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v4, :cond_5

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_5
    cmpl-float v4, p1, v7

    if-gez v4, :cond_6

    .line 10
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v4, :cond_b

    :cond_6
    cmpg-float v4, p1, v8

    if-lez v4, :cond_7

    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v4, :cond_b

    .line 11
    :cond_7
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v4, :cond_8

    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 13
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 14
    sget-boolean v4, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v4, :cond_8

    .line 15
    iget-object v4, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v5, "cancel or detach or getTransformation"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 16
    :cond_8
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v4, :cond_9

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 17
    :cond_9
    iget-boolean v4, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v4, :cond_a

    sub-float p1, v8, p1

    .line 18
    :cond_a
    iget-object v4, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 19
    invoke-virtual {p0, p1, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    :cond_b
    if-eqz p2, :cond_10

    .line 20
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget p2, p0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq p1, p2, :cond_f

    invoke-direct {p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 21
    :cond_c
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez p1, :cond_d

    .line 22
    iget p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 23
    :cond_d
    iget p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    .line 24
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 25
    :cond_e
    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 26
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 27
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_4

    .line 28
    :cond_f
    :goto_3
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez p1, :cond_10

    .line 29
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 30
    iget-object p1, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 31
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 32
    :cond_10
    :goto_4
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mMore:Z

    if-nez p1, :cond_11

    iget-boolean p2, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz p2, :cond_11

    .line 33
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    return v1

    :cond_11
    return p1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 0

    .line 34
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    return p1
.end method

.method public getZAdjustment()I
    .locals 1

    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 6
    .line 7
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    int-to-float p2, p2

    .line 5
    int-to-float p3, p3

    .line 6
    int-to-float p4, p4

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    .line 9
    .line 10
    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    .line 12
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 20
    .line 21
    iget-object p2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-interface {p2, p3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {p0, p2, p1}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public isFillEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 15
    .line 16
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method public resolveSize(IFII)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    return p2

    :cond_0
    int-to-float p1, p4

    :goto_0
    mul-float/2addr p1, p2

    return p1

    :cond_1
    int-to-float p1, p3

    goto :goto_0
.end method

.method public restrictDuration(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 11
    .line 12
    iput-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 13
    .line 14
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 18
    .line 19
    add-long/2addr v6, v0

    .line 20
    cmp-long v2, v6, p1

    .line 21
    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    sub-long v0, p1, v0

    .line 25
    .line 26
    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 27
    .line 28
    move-wide v6, p1

    .line 29
    :cond_1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 30
    .line 31
    cmp-long v0, v0, v4

    .line 32
    .line 33
    if-gtz v0, :cond_2

    .line 34
    .line 35
    iput-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 36
    .line 37
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 41
    .line 42
    if-ltz v0, :cond_3

    .line 43
    .line 44
    int-to-long v1, v0

    .line 45
    cmp-long v1, v1, p1

    .line 46
    .line 47
    if-gtz v1, :cond_3

    .line 48
    .line 49
    int-to-long v0, v0

    .line 50
    mul-long/2addr v0, v6

    .line 51
    cmp-long v0, v0, p1

    .line 52
    .line 53
    if-lez v0, :cond_4

    .line 54
    .line 55
    :cond_3
    div-long/2addr p1, v6

    .line 56
    long-to-int p1, p1

    .line 57
    add-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 60
    .line 61
    if-gez p1, :cond_4

    .line 62
    .line 63
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 64
    .line 65
    :cond_4
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 2
    .line 3
    long-to-float v0, v0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    float-to-long v0, v0

    .line 6
    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 7
    .line 8
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 9
    .line 10
    long-to-float v0, v0

    .line 11
    mul-float/2addr v0, p1

    .line 12
    float-to-long v0, v0

    .line 13
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 14
    .line 15
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/Animation;->mBackgroundColor:I

    return-void
.end method

.method public setDetachWallpaper(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mDetachWallpaper:Z

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p2, "Animation duration cannot be negative"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setFillAfter(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return-void
.end method

.method public setFillEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/Animation$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/Animation$2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance v0, Landroid/view/animation/Animation$3;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 25
    .line 26
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return-void
.end method

.method public setStartOffset(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 5
    .line 6
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 9
    .line 10
    iput p1, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 14
    .line 15
    return-void
.end method

.method public setZAdjustment(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public startNow()V
    .locals 2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
