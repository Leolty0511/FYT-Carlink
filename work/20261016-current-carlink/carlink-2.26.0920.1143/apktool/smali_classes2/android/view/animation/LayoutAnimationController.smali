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
.field protected mAnimation:Landroid/view/animation/Animation;

.field private mDelay:F

.field private mDuration:J

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxDelay:J

.field private mOrder:I

.field protected mRandomizer:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/content/Context;I)V

    .line 9
    :cond_0
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/content/Context;I)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    invoke-direct {p0, p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p2, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getDelayForView(Landroid/view/View;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v2, v0

    .line 12
    iget-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :catch_0
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public getDelay()F
    .locals 1

    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    return v0
.end method

.method public getDelayForView(Landroid/view/View;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mDelay:F

    .line 13
    .line 14
    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    long-to-float v1, v1

    .line 21
    mul-float/2addr v0, v1

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/animation/LayoutAnimationController;->getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    mul-float/2addr v1, v0

    .line 28
    float-to-long v1, v1

    .line 29
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    mul-float/2addr v0, p1

    .line 33
    iget-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    .line 44
    :cond_1
    long-to-float p1, v1

    .line 45
    div-float/2addr p1, v0

    .line 46
    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    mul-float/2addr p1, v0

    .line 53
    float-to-long v0, p1

    .line 54
    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return v0
.end method

.method public getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/Random;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 24
    .line 25
    :cond_1
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    mul-float/2addr v0, p1

    .line 35
    float-to-int p1, v0

    .line 36
    return p1

    .line 37
    :cond_2
    iget v0, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 38
    .line 39
    sub-int/2addr v0, v1

    .line 40
    iget p1, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 41
    .line 42
    sub-int/2addr v0, p1

    .line 43
    return v0
.end method

.method public isDone()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 12
    .line 13
    add-long/2addr v2, v4

    .line 14
    iget-wide v4, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    .line 15
    .line 16
    add-long/2addr v2, v4

    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
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

    iput p1, p0, Landroid/view/animation/LayoutAnimationController;->mOrder:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mDuration:J

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/view/animation/LayoutAnimationController;->mMaxDelay:J

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public willOverlap()Z
    .locals 2

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
