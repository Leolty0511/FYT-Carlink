.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SNAP_FIXED_RATIO:I = 0x1

.field private static final SNAP_MODE_16_9:I = 0x0

.field private static final SNAP_MODE_MINIMIZED:I = 0x3

.field private static final SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskHeightInMinimizedMode:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    .line 7
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 8
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 9
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 10
    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 11
    invoke-virtual {v1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p7, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const p2, 0x10e0036

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    const p2, 0x1130004

    const/4 p3, 0x1

    .line 13
    invoke-virtual {p1, p2, p3, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    const p2, 0x105006b

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    const p2, 0x1050170

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    .line 16
    invoke-direct {p0, p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(Z)V

    .line 17
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method

.method private addFixedDivisionTargets(ZI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    :goto_1
    sub-int/2addr v1, v2

    .line 26
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    .line 27
    .line 28
    sub-int v3, v1, v0

    .line 29
    .line 30
    int-to-float v3, v3

    .line 31
    mul-float/2addr v2, v3

    .line 32
    float-to-int v2, v2

    .line 33
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 34
    .line 35
    div-int/lit8 v4, v3, 0x2

    .line 36
    .line 37
    sub-int/2addr v2, v4

    .line 38
    add-int/2addr v0, v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    sub-int/2addr v1, v3

    .line 41
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private addMiddleTarget(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private addMinimizedTarget(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    add-int/2addr v0, v2

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget p1, v1, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    add-int/2addr v0, p1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    sub-int v0, p2, v0

    .line 6
    .line 7
    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    sub-int/2addr p4, p1

    .line 18
    iget p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 19
    .line 20
    add-int/2addr p1, p3

    .line 21
    sub-int/2addr p4, p1

    .line 22
    invoke-direct {p0, p3, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private addRatio16_9Targets(ZI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    :goto_1
    sub-int/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    :goto_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 38
    .line 39
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    :goto_3
    sub-int/2addr v3, v4

    .line 51
    sub-int/2addr v3, v2

    .line 52
    int-to-float v2, v3

    .line 53
    const/high16 v3, 0x3f100000    # 0.5625f

    .line 54
    .line 55
    mul-float/2addr v2, v3

    .line 56
    float-to-double v2, v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    double-to-int v2, v2

    .line 62
    add-int/2addr v0, v2

    .line 63
    sub-int/2addr v1, v2

    .line 64
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 65
    .line 66
    sub-int/2addr v1, v2

    .line 67
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private calculateTargets(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 25
    .line 26
    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 27
    .line 28
    neg-int v5, v4

    .line 29
    neg-int v4, v4

    .line 30
    const/4 v6, 0x1

    .line 31
    const v7, 0x3eb33333    # 0.35f

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v5, v4, v6, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    if-eq v2, v6, :cond_4

    .line 46
    .line 47
    if-eq v2, v3, :cond_3

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    if-eq v2, v4, :cond_2

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMinimizedTarget(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    .line 66
    .line 67
    .line 68
    :goto_2
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 71
    .line 72
    sub-int v1, v0, v1

    .line 73
    .line 74
    invoke-direct {v2, v1, v0, v3, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12

    .line 1
    new-instance v0, Landroid/view/DisplayInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v3, 0x105007b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const v4, 0x105007a

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    new-instance v11, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 51
    .line 52
    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 53
    .line 54
    mul-int/lit8 v3, v3, 0x2

    .line 55
    .line 56
    sub-int v8, v1, v3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    if-ne p0, v0, :cond_0

    .line 74
    .line 75
    move v9, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v9, v2

    .line 78
    :goto_0
    move-object v4, v11

    .line 79
    move-object v10, p1

    .line 80
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    return-object v11
.end method

.method private getEndInset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    return v0
.end method

.method private getStartInset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    return v0
.end method

.method private maybeAddTarget(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 6
    .line 7
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 21
    .line 22
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 23
    .line 24
    sub-int v5, p1, v5

    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    int-to-float v5, v5

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-static {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->access$000(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    div-float/2addr v5, v4

    .line 38
    :cond_0
    cmpg-float v4, v5, v2

    .line 39
    .line 40
    if-gez v4, :cond_1

    .line 41
    .line 42
    move v1, v3

    .line 43
    move v2, v5

    .line 44
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 54
    .line 55
    return-object p1
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p1, v0

    .line 12
    int-to-float p1, p1

    .line 13
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr p1, v0

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sub-float/2addr v0, p1

    .line 27
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 29
    .line 30
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 31
    .line 32
    if-le p1, v0, :cond_1

    .line 33
    .line 34
    sub-int/2addr p1, v0

    .line 35
    int-to-float p1, p1

    .line 36
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 37
    .line 38
    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 42
    .line 43
    sub-int/2addr v1, v0

    .line 44
    int-to-float v0, v1

    .line 45
    div-float/2addr p1, v0

    .line 46
    return p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 18
    .line 19
    :cond_1
    return-object p1
.end method

.method public calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    return-object p1
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object p1

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object p1
.end method

.method public cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    add-int/2addr v1, p2

    .line 18
    iget-object p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    rem-int/2addr v1, p2

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 39
    .line 40
    if-ne p1, p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 43
    .line 44
    :cond_1
    return-object p1
.end method

.method public getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 13
    .line 14
    if-le p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 20
    .line 21
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 22
    .line 23
    sub-int v1, p1, v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 26
    .line 27
    iget v3, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 28
    .line 29
    sub-int/2addr v3, p1

    .line 30
    if-ge v1, v3, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    return-object v2
.end method

.method public getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 29
    .line 30
    :cond_0
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 21
    .line 22
    :cond_0
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastSplitTargetAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitScreenFeasible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 13
    .line 14
    :goto_0
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 20
    .line 21
    :goto_1
    sub-int/2addr v2, v0

    .line 22
    sub-int/2addr v2, v1

    .line 23
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 24
    .line 25
    sub-int/2addr v2, v0

    .line 26
    div-int/lit8 v2, v2, 0x2

    .line 27
    .line 28
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 29
    .line 30
    if-lt v2, v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_2
    return v0
.end method
