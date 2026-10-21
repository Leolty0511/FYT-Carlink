.class Landroid/view/ViewPropertyAnimatorRT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimators:[Landroid/view/RenderNodeAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    new-array v0, v0, [Landroid/view/RenderNodeAnimator;

    .line 7
    .line 8
    iput-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 9
    .line 10
    iput-object p1, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method

.method private canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getListener()Landroid/animation/Animator$AnimatorListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->hasActions()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method private cancelAnimators(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 13
    .line 14
    iget v2, v2, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    .line 15
    .line 16
    invoke-static {v2}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 21
    .line 22
    aget-object v3, v3, v2

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v4, v3, v2

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private doStartAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    sget-object v5, Landroid/view/ViewPropertyAnimatorRT;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    :cond_0
    invoke-static {v5}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    new-instance v6, Lcom/android/internal/view/animation/FallbackLUTInterpolator;

    .line 30
    .line 31
    invoke-direct {v6, v5, v3, v4}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;-><init>(Landroid/animation/TimeInterpolator;J)V

    .line 32
    .line 33
    .line 34
    move-object v5, v6

    .line 35
    :cond_1
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-ge v6, v0, :cond_2

    .line 37
    .line 38
    iget-object v7, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 45
    .line 46
    iget v8, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    .line 47
    .line 48
    invoke-static {v8}, Landroid/view/RenderNodeAnimator;->mapViewPropertyToRenderProperty(I)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    iget v9, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    .line 53
    .line 54
    iget v7, v7, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    .line 55
    .line 56
    add-float/2addr v9, v7

    .line 57
    new-instance v7, Landroid/view/RenderNodeAnimator;

    .line 58
    .line 59
    invoke-direct {v7, v8, v9}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v1, v2}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v3, v4}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v5}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    .line 70
    .line 71
    iget-object v9, p0, Landroid/view/ViewPropertyAnimatorRT;->mView:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v7, v9}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Landroid/view/RenderNodeAnimator;->start()V

    .line 77
    .line 78
    .line 79
    iget-object v9, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 80
    .line 81
    aput-object v7, v9, v8

    .line 82
    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/view/ViewPropertyAnimatorRT;->mAnimators:[Landroid/view/RenderNodeAnimator;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v2, v1, v0

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public startAnimation(Landroid/view/ViewPropertyAnimator;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/view/ViewPropertyAnimator;->mPendingAnimations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/view/ViewPropertyAnimatorRT;->cancelAnimators(Ljava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->canHandleAnimator(Landroid/view/ViewPropertyAnimator;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimatorRT;->doStartAnimation(Landroid/view/ViewPropertyAnimator;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method
