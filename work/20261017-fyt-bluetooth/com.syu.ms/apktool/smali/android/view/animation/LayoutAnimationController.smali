.class public Landroid/view/animation/LayoutAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final ORDER_NORMAL:I = 0x0

.field public static final ORDER_RANDOM:I = 0x2

.field public static final ORDER_REVERSE:I = 0x1


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field public mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Li/a;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    .line 8
    :cond_0
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    move-result-wide v0

    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 3
    :try_start_0
    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDelay()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return v0
.end method

.method public getDelayForView(Landroid/view/View;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-long v1, v1

    .line 5
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 6
    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    long-to-float p1, v1

    div-float/2addr p1, v0

    .line 8
    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v0

    float-to-long v0, p1

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return v0
.end method

.method public getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 5
    :cond_1
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    int-to-float p1, p1

    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    .line 6
    :cond_2
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    sub-int/2addr v0, v1

    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public isDone()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnimation(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setDelay(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 3
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
