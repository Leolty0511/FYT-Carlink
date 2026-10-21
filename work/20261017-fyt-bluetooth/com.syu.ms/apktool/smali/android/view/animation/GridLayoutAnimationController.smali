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
    sget-object v0, Li/a;->GridLayoutAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 6
    iget v0, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    const/4 v0, 0x3

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    invoke-direct {p0, p1, v0, v0}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/view/animation/Animation;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;FF)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 12
    iput p2, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    .line 13
    iput p3, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method private getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    goto :goto_0

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
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    sub-int/2addr v0, v2

    .line 7
    :goto_0
    iget v2, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    .line 8
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    sub-int/2addr p1, v1

    sub-int v0, p1, v0

    :cond_3
    return v0
.end method

.method private getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/LayoutAnimationController;->getOrder()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

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
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    int-to-float v0, v0

    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mRandomizer:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v0, v2

    iget v3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    sub-int/2addr v0, v3

    .line 7
    :goto_0
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    .line 8
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr p1, v2

    sub-int v0, p1, v0

    :cond_3
    return v0
.end method


# virtual methods
.method public getColumnDelay()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return v0
.end method

.method public getDelayForView(Landroid/view/View;)J
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedColumnIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v0

    .line 4
    invoke-direct {p0, p1}, Landroid/view/animation/GridLayoutAnimationController;->getTransformedRowIndex(Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;)I

    move-result v1

    .line 5
    iget v2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 6
    iget p1, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 7
    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    .line 8
    iget v5, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    long-to-float v3, v3

    mul-float/2addr v5, v3

    .line 9
    iget v4, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    mul-float/2addr v4, v3

    .line 10
    iget-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_1

    .line 11
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    :cond_1
    iget v3, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    int-to-float v0, v0

    mul-float/2addr v0, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-long v0, v0

    int-to-float p1, p1

    mul-float/2addr p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr p1, v2

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-long v0, v0

    int-to-float v3, p1

    mul-float/2addr v3, v5

    mul-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v5

    goto :goto_0

    :cond_3
    int-to-float v1, v1

    mul-float/2addr v1, v4

    mul-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    int-to-float v3, v2

    mul-float/2addr v3, v4

    mul-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v4

    :goto_0
    add-float/2addr p1, v3

    :goto_1
    long-to-float v0, v0

    div-float/2addr v0, p1

    .line 13
    iget-object v1, p0, Landroid/view/animation/LayoutAnimationController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return v0
.end method

.method public getDirectionPriority()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return v0
.end method

.method public getRowDelay()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return v0
.end method

.method public setColumnDelay(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mColumnDelay:F

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirection:I

    return-void
.end method

.method public setDirectionPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mDirectionPriority:I

    return-void
.end method

.method public setRowDelay(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/animation/GridLayoutAnimationController;->mRowDelay:F

    return-void
.end method

.method public willOverlap()Z
    .locals 2

    .line 1
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
