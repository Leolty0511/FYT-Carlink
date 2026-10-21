.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const v1, 0x1050139

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 33
    .line 34
    const v1, 0x105003e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    .line 42
    .line 43
    const v1, 0x105003c

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    .line 51
    .line 52
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    .line 54
    div-float/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const v0, 0x1050138

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private calculateSnapTargets()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/16 v1, 0x31

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v1, 0x51

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 49
    .line 50
    const/16 v1, 0x13

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 60
    .line 61
    const/16 v1, 0x15

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 71
    .line 72
    const/16 v1, 0x33

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 82
    .line 83
    const/16 v1, 0x35

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 93
    .line 94
    const/16 v1, 0x53

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 104
    .line 105
    const/16 v1, 0x55

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-static {p2, p1}, Landroid/graphics/PointF;->length(FF)F

    move-result p1

    return p1
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v0, :cond_1

    .line 8
    .line 9
    aget-object v4, p3, v3

    .line 10
    .line 11
    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    cmpg-float v6, v5, v2

    .line 16
    .line 17
    if-gez v6, :cond_0

    .line 18
    .line 19
    move-object v1, v4

    .line 20
    move v2, v5

    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v1
.end method

.method private findX(FFF)I
    .locals 0

    sub-float/2addr p3, p2

    div-float/2addr p3, p1

    float-to-int p1, p3

    return p1
.end method

.method private findY(FFF)I
    .locals 0

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    sub-int/2addr v3, v4

    .line 54
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    sub-int/2addr v4, v5

    .line 63
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    sub-int/2addr v5, p1

    .line 72
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget v5, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 77
    .line 78
    const/4 v6, 0x4

    .line 79
    if-ne v5, v6, :cond_2

    .line 80
    .line 81
    iget v5, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 82
    .line 83
    const/4 v6, 0x2

    .line 84
    if-ne v5, v6, :cond_1

    .line 85
    .line 86
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    :goto_0
    if-ne p1, v2, :cond_3

    .line 109
    .line 110
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 111
    .line 112
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    if-ne p1, v3, :cond_4

    .line 117
    .line 118
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    if-ne p1, v4, :cond_5

    .line 125
    .line 126
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 133
    .line 134
    invoke-virtual {p3, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-void
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-gt v0, p2, :cond_0

    .line 8
    .line 9
    iget p2, p4, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 12
    .line 13
    add-int/2addr p2, p3

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    sub-int/2addr p2, p3

    .line 19
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p2, p3, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iget p3, p4, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    sub-int/2addr p2, p3

    .line 30
    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 31
    .line 32
    sub-int/2addr p2, p3

    .line 33
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v1, p3, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr p3, v1

    .line 15
    float-to-int p3, p3

    .line 16
    add-int/2addr v0, p3

    .line 17
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    .line 25
    cmpg-float v2, p3, v1

    .line 26
    .line 27
    if-gez v2, :cond_1

    .line 28
    .line 29
    sub-float/2addr p3, v0

    .line 30
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    mul-float/2addr p3, v1

    .line 38
    float-to-int p3, p3

    .line 39
    add-int/2addr v0, p3

    .line 40
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    .line 47
    .line 48
    cmpg-float v3, p3, v2

    .line 49
    .line 50
    if-gez v3, :cond_2

    .line 51
    .line 52
    sub-float/2addr p3, v1

    .line 53
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    sub-float/2addr v0, p3

    .line 56
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    mul-float/2addr v0, p3

    .line 62
    float-to-int p3, v0

    .line 63
    add-int/2addr v1, p3

    .line 64
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sub-float/2addr p3, v2

    .line 71
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    sub-float/2addr v0, p3

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    int-to-float p3, p3

    .line 79
    mul-float/2addr v0, p3

    .line 80
    float-to-int p3, v0

    .line 81
    add-int/2addr v1, p3

    .line 82
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, "PipSnapAlgorithm"

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "mSnapMode="

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "mOrientation="

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, "mMinimizedVisibleSize="

    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "mIsMinimized="

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12

    .line 5
    new-instance v7, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v7, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    invoke-direct {p0, p2, p1, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 11
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [Landroid/graphics/Point;

    move v10, v2

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 15
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1, p2, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 17
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, p2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    .line 18
    :cond_3
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Landroid/graphics/Point;

    move v11, v2

    .line 20
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v7

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 22
    new-instance v0, Landroid/graphics/Point;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 23
    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 24
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v1

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 26
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    .line 27
    :cond_5
    invoke-direct {p0, p2, p1, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    return-object v8
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    .line 3
    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    iget v6, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    if-ne v6, v7, :cond_0

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v6, 0x0

    .line 21
    :goto_0
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    div-float v10, v4, v3

    .line 26
    .line 27
    int-to-float v11, v9

    .line 28
    int-to-float v12, v8

    .line 29
    mul-float/2addr v12, v10

    .line 30
    sub-float/2addr v11, v12

    .line 31
    new-instance v12, Landroid/graphics/Point;

    .line 32
    .line 33
    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v13, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v14, 0x0

    .line 42
    cmpl-float v15, v3, v14

    .line 43
    .line 44
    if-lez v15, :cond_1

    .line 45
    .line 46
    iget v7, v2, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    :goto_1
    iput v7, v12, Landroid/graphics/Point;->x:I

    .line 52
    .line 53
    int-to-float v7, v7

    .line 54
    invoke-direct {v0, v10, v11, v7}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iput v7, v12, Landroid/graphics/Point;->y:I

    .line 59
    .line 60
    cmpl-float v7, v4, v14

    .line 61
    .line 62
    if-lez v7, :cond_2

    .line 63
    .line 64
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    :goto_2
    iput v14, v13, Landroid/graphics/Point;->y:I

    .line 70
    .line 71
    int-to-float v14, v14

    .line 72
    invoke-direct {v0, v10, v11, v14}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    iput v10, v13, Landroid/graphics/Point;->x:I

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    if-lez v15, :cond_3

    .line 81
    .line 82
    iget v11, v2, Landroid/graphics/Rect;->right:I

    .line 83
    .line 84
    iget v14, v1, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    iget v14, v2, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    :goto_3
    sub-int/2addr v11, v14

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    if-lez v7, :cond_5

    .line 94
    .line 95
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 101
    .line 102
    iget v14, v2, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :goto_4
    const-wide/16 v16, 0x0

    .line 106
    .line 107
    if-lez v11, :cond_e

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    :goto_5
    if-eqz v6, :cond_7

    .line 117
    .line 118
    iget v10, v13, Landroid/graphics/Point;->y:I

    .line 119
    .line 120
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-ge v5, v2, :cond_8

    .line 125
    .line 126
    if-lt v10, v2, :cond_9

    .line 127
    .line 128
    :cond_8
    if-le v5, v2, :cond_e

    .line 129
    .line 130
    if-le v10, v2, :cond_e

    .line 131
    .line 132
    :cond_9
    if-eqz v6, :cond_a

    .line 133
    .line 134
    float-to-double v2, v3

    .line 135
    goto :goto_6

    .line 136
    :cond_a
    float-to-double v2, v4

    .line 137
    :goto_6
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 138
    .line 139
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    sub-double v2, v16, v2

    .line 144
    .line 145
    double-to-int v2, v2

    .line 146
    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    .line 147
    .line 148
    const/4 v4, 0x2

    .line 149
    mul-int/2addr v3, v4

    .line 150
    div-int/2addr v2, v3

    .line 151
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v6, :cond_c

    .line 156
    .line 157
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    if-lez v15, :cond_b

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_b
    neg-int v2, v2

    .line 163
    :goto_7
    add-int/2addr v1, v2

    .line 164
    iput v1, v13, Landroid/graphics/Point;->x:I

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_c
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    if-lez v7, :cond_d

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_d
    neg-int v2, v2

    .line 173
    :goto_8
    add-int/2addr v1, v2

    .line 174
    iput v1, v13, Landroid/graphics/Point;->y:I

    .line 175
    .line 176
    :goto_9
    return-object v13

    .line 177
    :cond_e
    iget v1, v12, Landroid/graphics/Point;->x:I

    .line 178
    .line 179
    sub-int/2addr v1, v8

    .line 180
    int-to-double v1, v1

    .line 181
    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 182
    .line 183
    sub-int/2addr v3, v9

    .line 184
    int-to-double v3, v3

    .line 185
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    .line 186
    .line 187
    .line 188
    move-result-wide v1

    .line 189
    iget v3, v13, Landroid/graphics/Point;->x:I

    .line 190
    .line 191
    sub-int/2addr v3, v8

    .line 192
    int-to-double v3, v3

    .line 193
    iget v5, v13, Landroid/graphics/Point;->y:I

    .line 194
    .line 195
    sub-int/2addr v5, v9

    .line 196
    int-to-double v5, v5

    .line 197
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    cmpl-double v5, v1, v16

    .line 202
    .line 203
    if-nez v5, :cond_f

    .line 204
    .line 205
    return-object v13

    .line 206
    :cond_f
    cmpl-double v5, v3, v16

    .line 207
    .line 208
    if-nez v5, :cond_10

    .line 209
    .line 210
    return-object v12

    .line 211
    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 216
    .line 217
    .line 218
    move-result-wide v3

    .line 219
    cmpl-double v1, v1, v3

    .line 220
    .line 221
    if-lez v1, :cond_11

    .line 222
    .line 223
    move-object v12, v13

    .line 224
    :cond_11
    return-object v12
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-int/2addr p2, p1

    .line 28
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int/2addr p1, p4

    .line 33
    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 2

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    int-to-float p3, p3

    .line 6
    iget p4, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    .line 7
    .line 8
    mul-float/2addr p3, p4

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    float-to-int p2, p2

    .line 14
    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    .line 15
    .line 16
    cmpg-float p3, p1, p3

    .line 17
    .line 18
    const/high16 p4, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-lez p3, :cond_1

    .line 21
    .line 22
    iget p3, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    .line 23
    .line 24
    cmpl-float v0, p1, p3

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    int-to-float p2, p2

    .line 30
    mul-float/2addr p3, p2

    .line 31
    invoke-static {p3, p2}, Landroid/graphics/PointF;->length(FF)F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    mul-float/2addr p2, p2

    .line 36
    mul-float p3, p1, p1

    .line 37
    .line 38
    add-float/2addr p3, p4

    .line 39
    div-float/2addr p2, p3

    .line 40
    float-to-double p2, p2

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide p2

    .line 45
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    long-to-int p2, p2

    .line 50
    int-to-float p3, p2

    .line 51
    mul-float/2addr p3, p1

    .line 52
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    cmpg-float p3, p1, p4

    .line 58
    .line 59
    if-gtz p3, :cond_2

    .line 60
    .line 61
    int-to-float p3, p2

    .line 62
    div-float/2addr p3, p1

    .line 63
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    int-to-float p3, p2

    .line 69
    mul-float/2addr p3, p1

    .line 70
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :goto_1
    move v1, p2

    .line 75
    move p2, p1

    .line 76
    move p1, v1

    .line 77
    :goto_2
    new-instance p3, Landroid/util/Size;

    .line 78
    .line 79
    invoke-direct {p3, p2, p1}, Landroid/util/Size;-><init>(II)V

    .line 80
    .line 81
    .line 82
    return-object p3
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    sub-int/2addr p1, v1

    .line 14
    int-to-float p1, p1

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr p1, v1

    .line 21
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    div-float/2addr v1, v2

    .line 33
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    return p1

    .line 40
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    const/high16 v4, 0x3f800000    # 1.0f

    .line 45
    .line 46
    if-ne v0, v3, :cond_1

    .line 47
    .line 48
    add-float/2addr v1, v4

    .line 49
    return v1

    .line 50
    :cond_1
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    if-ne v2, p2, :cond_2

    .line 53
    .line 54
    const/high16 p2, 0x40000000    # 2.0f

    .line 55
    .line 56
    sub-float/2addr v4, p1

    .line 57
    add-float/2addr v4, p2

    .line 58
    return v4

    .line 59
    :cond_2
    const/high16 p1, 0x40400000    # 3.0f

    .line 60
    .line 61
    sub-float/2addr v4, v1

    .line 62
    add-float/2addr v4, p1

    .line 63
    return v4
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 14
    .line 15
    const v1, 0x10e0079

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setMinimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    return-void
.end method
