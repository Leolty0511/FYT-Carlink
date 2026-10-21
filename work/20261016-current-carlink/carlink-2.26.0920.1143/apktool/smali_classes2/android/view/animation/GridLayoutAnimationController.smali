.class public Landroid/view/animation/GridLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM_TO_TOP:I = 0x2

.field public static final DIRECTION_HORIZONTAL_MASK:I = 0x1

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DIRECTION_TOP_TO_BOTTOM:I = 0x0

.field public static final DIRECTION_VERTICAL_MASK:I = 0x2

.field public static final PRIORITY_COLUMN:I = 0x1

.field public static final PRIORITY_NONE:I = 0x0

.field public static final PRIORITY_ROW:I = 0x2


# instance fields
.field private mColumnDelay:F

.field private mDirection:I

.field private mDirectionPriority:I

.field private mRowDelay:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Lcom/android/internal/R$styleable;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 8
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;FF)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 14
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 15
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method private getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 3

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
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 12
    .line 13
    goto :goto_0

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
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-float/2addr v2, v0

    .line 35
    float-to-int v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 38
    .line 39
    sub-int/2addr v0, v1

    .line 40
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 41
    .line 42
    sub-int/2addr v0, v2

    .line 43
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 44
    .line 45
    and-int/2addr v2, v1

    .line 46
    if-ne v2, v1, :cond_3

    .line 47
    .line 48
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 49
    .line 50
    sub-int/2addr p1, v1

    .line 51
    sub-int v0, p1, v0

    .line 52
    .line 53
    :cond_3
    return v0
.end method

.method private getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 12
    .line 13
    goto :goto_0

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
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    mul-float/2addr v3, v0

    .line 35
    float-to-int v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 38
    .line 39
    sub-int/2addr v0, v2

    .line 40
    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 41
    .line 42
    sub-int/2addr v0, v3

    .line 43
    :goto_0
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    .line 44
    .line 45
    and-int/2addr v3, v1

    .line 46
    if-ne v3, v1, :cond_3

    .line 47
    .line 48
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 49
    .line 50
    sub-int/2addr p1, v2

    .line 51
    sub-int v0, p1, v0

    .line 52
    .line 53
    :cond_3
    return v0
.end method


# virtual methods
.method public getColumnDelay()F
    .locals 1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method public getDelayForView(Landroid/view/View;)J
    .locals 7

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
    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 23
    .line 24
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 25
    .line 26
    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget v5, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 33
    .line 34
    long-to-float v3, v3

    .line 35
    mul-float/2addr v5, v3

    .line 36
    iget v4, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    .line 37
    .line 38
    mul-float/2addr v4, v3

    .line 39
    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    .line 50
    :cond_1
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    if-eq v3, v6, :cond_3

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    if-eq v3, v6, :cond_2

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr v0, v5

    .line 60
    int-to-float v1, v1

    .line 61
    mul-float/2addr v1, v4

    .line 62
    add-float/2addr v1, v0

    .line 63
    float-to-long v0, v1

    .line 64
    int-to-float p1, p1

    .line 65
    mul-float/2addr p1, v5

    .line 66
    int-to-float v2, v2

    .line 67
    mul-float/2addr v2, v4

    .line 68
    add-float/2addr v2, p1

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    int-to-float v0, v0

    .line 71
    mul-float/2addr v0, v5

    .line 72
    mul-int/2addr v1, p1

    .line 73
    int-to-float v1, v1

    .line 74
    mul-float/2addr v1, v5

    .line 75
    add-float/2addr v1, v0

    .line 76
    float-to-long v0, v1

    .line 77
    int-to-float v3, p1

    .line 78
    mul-float/2addr v3, v5

    .line 79
    mul-int/2addr v2, p1

    .line 80
    int-to-float p1, v2

    .line 81
    mul-float/2addr p1, v5

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    int-to-float v1, v1

    .line 84
    mul-float/2addr v1, v4

    .line 85
    mul-int/2addr v0, v2

    .line 86
    int-to-float v0, v0

    .line 87
    mul-float/2addr v0, v4

    .line 88
    add-float/2addr v0, v1

    .line 89
    float-to-long v0, v0

    .line 90
    int-to-float v3, v2

    .line 91
    mul-float/2addr v3, v4

    .line 92
    mul-int/2addr p1, v2

    .line 93
    int-to-float p1, p1

    .line 94
    mul-float/2addr p1, v4

    .line 95
    :goto_0
    add-float v2, p1, v3

    .line 96
    .line 97
    :goto_1
    long-to-float p1, v0

    .line 98
    div-float/2addr p1, v2

    .line 99
    iget-object v0, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    .line 101
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    mul-float/2addr p1, v2

    .line 106
    float-to-long v0, p1

    .line 107
    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public getDirectionPriority()I
    .locals 1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public getRowDelay()F
    .locals 1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public setColumnDelay(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return-void
.end method

.method public setDirectionPriority(I)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return-void
.end method

.method public setRowDelay(F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method public willOverlap()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
