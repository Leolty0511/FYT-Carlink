.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final mMaxIterations:I

.field private final mRandomState:Ljava/util/Random;

.field private mSqConvergenceEpsilon:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2

    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    .line 5
    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    mul-float/2addr p3, p3

    .line 6
    iput p3, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    return-void
.end method

.method public static nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 17
    .line 18
    iget-object v5, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 19
    .line 20
    invoke-static {p0, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    cmpg-float v6, v5, v2

    .line 25
    .line 26
    if-gez v6, :cond_0

    .line 27
    .line 28
    move-object v1, v4

    .line 29
    move v2, v5

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method

.method public static score(Ljava/util/List;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 16
    .line 17
    move v6, v3

    .line 18
    :goto_1
    if-ge v6, v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    check-cast v7, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 25
    .line 26
    if-ne v5, v7, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-object v8, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 30
    .line 31
    iget-object v7, v7, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 32
    .line 33
    invoke-static {v8, v7}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    float-to-double v7, v7

    .line 38
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    add-double/2addr v1, v7

    .line 43
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-wide v1
.end method

.method public static sqDistance([F[F)F
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget v4, p1, v2

    .line 9
    .line 10
    sub-float v5, v3, v4

    .line 11
    .line 12
    invoke-static {v3, v4, v5, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1
.end method

.method private step(Ljava/util/ArrayList;[[F)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length v0, p2

    .line 24
    sub-int/2addr v0, v1

    .line 25
    :goto_1
    if-ltz v0, :cond_1

    .line 26
    .line 27
    aget-object v2, p2, v0

    .line 28
    .line 29
    invoke-static {v2, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sub-int/2addr p2, v1

    .line 46
    :goto_2
    if-ltz p2, :cond_7

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_2
    iget-object v2, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 64
    .line 65
    array-length v3, v2

    .line 66
    new-array v3, v3, [F

    .line 67
    .line 68
    iput-object v3, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    move v4, v3

    .line 72
    :goto_3
    iget-object v5, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ge v4, v5, :cond_4

    .line 79
    .line 80
    move v5, v3

    .line 81
    :goto_4
    iget-object v6, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 82
    .line 83
    array-length v7, v6

    .line 84
    if-ge v5, v7, :cond_3

    .line 85
    .line 86
    aget v7, v6, v5

    .line 87
    .line 88
    iget-object v8, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, [F

    .line 95
    .line 96
    aget v8, v8, v5

    .line 97
    .line 98
    add-float/2addr v7, v8

    .line 99
    aput v7, v6, v5

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v4, v3

    .line 108
    :goto_5
    iget-object v5, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 109
    .line 110
    array-length v6, v5

    .line 111
    if-ge v4, v6, :cond_5

    .line 112
    .line 113
    aget v6, v5, v4

    .line 114
    .line 115
    iget-object v7, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    int-to-float v7, v7

    .line 122
    div-float/2addr v6, v7

    .line 123
    aput v6, v5, v4

    .line 124
    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_5
    invoke-static {v2, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget v2, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    .line 133
    .line 134
    cmpl-float v0, v0, v2

    .line 135
    .line 136
    if-lez v0, :cond_6

    .line 137
    .line 138
    move v1, v3

    .line 139
    :cond_6
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    return v1
.end method


# virtual methods
.method public checkDataSetSanity([[F)V
    .locals 5

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v0, p1, v0

    .line 8
    .line 9
    const-string v1, "Bad data set format."

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    array-length v2, p1

    .line 15
    const/4 v3, 0x1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_1

    .line 17
    .line 18
    aget-object v4, p1, v3

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    array-length v4, v4

    .line 23
    if-ne v4, v0, :cond_0

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Data set is empty."

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v0, "Data set is null."

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public predict(I[[F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget-object v1, p2, v0

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    move v3, v0

    .line 14
    :goto_0
    if-ge v3, p1, :cond_1

    .line 15
    .line 16
    new-instance v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 17
    .line 18
    invoke-direct {v4, v1}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    .line 19
    .line 20
    .line 21
    move v5, v0

    .line 22
    :goto_1
    if-ge v5, v1, :cond_0

    .line 23
    .line 24
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 25
    .line 26
    iget-object v7, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    aput v7, v6, v5

    .line 33
    .line 34
    add-int/lit8 v5, v5, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_2
    iget p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    .line 44
    .line 45
    if-ge v0, p1, :cond_3

    .line 46
    .line 47
    invoke-direct {p0, v2, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_3
    return-object v2
.end method
