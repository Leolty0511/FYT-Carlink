.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NONUNIFORM_SCALE:F

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Gestures"

    .line 9
    .line 10
    const-string v1, "Could not close stream"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public static computeCentroid([F)[F
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v1

    .line 5
    move v4, v2

    .line 6
    :goto_0
    const/4 v5, 0x1

    .line 7
    if-ge v4, v0, :cond_0

    .line 8
    .line 9
    aget v6, p0, v4

    .line 10
    .line 11
    add-float/2addr v1, v6

    .line 12
    add-int/lit8 v4, v4, 0x1

    .line 13
    .line 14
    aget v6, p0, v4

    .line 15
    .line 16
    add-float/2addr v3, v6

    .line 17
    add-int/2addr v4, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x2

    .line 20
    new-array p0, p0, [F

    .line 21
    .line 22
    const/high16 v4, 0x40000000    # 2.0f

    .line 23
    .line 24
    mul-float/2addr v1, v4

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr v1, v0

    .line 27
    aput v1, p0, v2

    .line 28
    .line 29
    mul-float/2addr v3, v4

    .line 30
    div-float/2addr v3, v0

    .line 31
    aput v3, p0, v5

    .line 32
    .line 33
    return-object p0
.end method

.method private static computeCoVariance([F)[[F
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, [[F

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-object v3, v1, v2

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput v4, v3, v2

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    aput v4, v3, v5

    .line 23
    .line 24
    aget-object v3, v1, v5

    .line 25
    .line 26
    aput v4, v3, v2

    .line 27
    .line 28
    aput v4, v3, v5

    .line 29
    .line 30
    array-length v3, p0

    .line 31
    move v4, v2

    .line 32
    :goto_0
    if-ge v4, v3, :cond_0

    .line 33
    .line 34
    aget v6, p0, v4

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    aget v7, p0, v4

    .line 39
    .line 40
    aget-object v8, v1, v2

    .line 41
    .line 42
    aget v9, v8, v2

    .line 43
    .line 44
    mul-float v10, v6, v6

    .line 45
    .line 46
    add-float/2addr v10, v9

    .line 47
    aput v10, v8, v2

    .line 48
    .line 49
    aget v9, v8, v5

    .line 50
    .line 51
    mul-float/2addr v6, v7

    .line 52
    add-float/2addr v6, v9

    .line 53
    aput v6, v8, v5

    .line 54
    .line 55
    aget-object v8, v1, v5

    .line 56
    .line 57
    aput v6, v8, v2

    .line 58
    .line 59
    aget v6, v8, v5

    .line 60
    .line 61
    mul-float/2addr v7, v7

    .line 62
    add-float/2addr v7, v6

    .line 63
    aput v7, v8, v5

    .line 64
    .line 65
    add-int/2addr v4, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    aget-object p0, v1, v2

    .line 68
    .line 69
    aget v4, p0, v2

    .line 70
    .line 71
    div-int/2addr v3, v0

    .line 72
    int-to-float v0, v3

    .line 73
    div-float/2addr v4, v0

    .line 74
    aput v4, p0, v2

    .line 75
    .line 76
    aget v3, p0, v5

    .line 77
    .line 78
    div-float/2addr v3, v0

    .line 79
    aput v3, p0, v5

    .line 80
    .line 81
    aget-object p0, v1, v5

    .line 82
    .line 83
    aget v3, p0, v2

    .line 84
    .line 85
    div-float/2addr v3, v0

    .line 86
    aput v3, p0, v2

    .line 87
    .line 88
    aget v2, p0, v5

    .line 89
    .line 90
    div-float/2addr v2, v0

    .line 91
    aput v2, p0, v5

    .line 92
    .line 93
    return-object v1

    .line 94
    nop

    .line 95
    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method private static computeOrientation([[F)[F
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aget v4, v2, v3

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    cmpl-float v4, v4, v5

    .line 12
    .line 13
    const/high16 v6, 0x3f800000    # 1.0f

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    aget-object v4, p0, v3

    .line 18
    .line 19
    aget v4, v4, v1

    .line 20
    .line 21
    cmpl-float v4, v4, v5

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    :cond_0
    aput v6, v0, v1

    .line 26
    .line 27
    aput v5, v0, v3

    .line 28
    .line 29
    :cond_1
    aget v4, v2, v1

    .line 30
    .line 31
    neg-float v7, v4

    .line 32
    aget-object v8, p0, v3

    .line 33
    .line 34
    aget v9, v8, v3

    .line 35
    .line 36
    sub-float/2addr v7, v9

    .line 37
    mul-float/2addr v4, v9

    .line 38
    aget v2, v2, v3

    .line 39
    .line 40
    aget v8, v8, v1

    .line 41
    .line 42
    mul-float/2addr v2, v8

    .line 43
    sub-float/2addr v4, v2

    .line 44
    const/high16 v2, 0x40000000    # 2.0f

    .line 45
    .line 46
    div-float/2addr v7, v2

    .line 47
    float-to-double v8, v7

    .line 48
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 49
    .line 50
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v8

    .line 54
    float-to-double v10, v4

    .line 55
    sub-double/2addr v8, v10

    .line 56
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    double-to-float v2, v8

    .line 61
    neg-float v4, v7

    .line 62
    add-float v7, v4, v2

    .line 63
    .line 64
    sub-float/2addr v4, v2

    .line 65
    cmpl-float v2, v7, v4

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    aput v5, v0, v1

    .line 70
    .line 71
    aput v5, v0, v3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-lez v2, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v7, v4

    .line 78
    :goto_0
    aput v6, v0, v1

    .line 79
    .line 80
    aget-object p0, p0, v1

    .line 81
    .line 82
    aget v1, p0, v1

    .line 83
    .line 84
    sub-float/2addr v7, v1

    .line 85
    aget p0, p0, v3

    .line 86
    .line 87
    div-float/2addr v7, p0

    .line 88
    aput v7, v0, v3

    .line 89
    .line 90
    :goto_1
    return-object v0
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    mul-int/lit8 v4, v2, 0x2

    .line 4
    iget v5, v3, Landroid/gesture/GesturePoint;->x:F

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 5
    iget v3, v3, Landroid/gesture/GesturePoint;->y:F

    aput v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object p0

    .line 7
    invoke-static {v1, p0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 4

    .line 8
    array-length v0, p0

    .line 9
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    aget v3, p0, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object p0

    .line 12
    invoke-static {v1, p0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object p0

    return-object p0
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 13
    aget v2, p1, v1

    neg-float v2, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    neg-float v4, v4

    invoke-static {v0, v2, v4}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 14
    invoke-static/range {p0 .. p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v2

    .line 16
    aget v4, v2, v1

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-nez v6, :cond_0

    aget v6, v2, v3

    cmpl-float v5, v6, v5

    if-nez v5, :cond_0

    const v2, -0x4036f025

    goto :goto_0

    .line 17
    :cond_0
    aget v2, v2, v3

    float-to-double v5, v2

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    neg-float v4, v2

    .line 18
    invoke-static {v0, v4}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    .line 19
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v1

    move v7, v6

    move v8, v7

    move v6, v5

    :goto_1
    if-ge v9, v4, :cond_5

    .line 20
    aget v10, v0, v9

    cmpg-float v11, v10, v7

    if-gez v11, :cond_1

    move v7, v10

    :cond_1
    cmpl-float v11, v10, v5

    if-lez v11, :cond_2

    move v5, v10

    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 21
    aget v10, v0, v9

    cmpg-float v11, v10, v8

    if-gez v11, :cond_3

    move v8, v10

    :cond_3
    cmpl-float v11, v10, v6

    if-lez v11, :cond_4

    move v6, v10

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 22
    :cond_5
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v2, v4

    float-to-double v9, v2

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v9, v11

    double-to-float v11, v9

    aget v12, p1, v1

    aget v13, p1, v3

    sub-float v14, v5, v7

    sub-float v15, v6, v8

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    return-object v0
.end method

.method public static computeStraightness([F)F
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v0

    const/4 v1, 0x2

    .line 2
    aget v1, p0, v1

    const/4 v2, 0x0

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x3

    .line 3
    aget v2, p0, v2

    const/4 v3, 0x1

    aget p0, p0, v3

    sub-float/2addr v2, p0

    float-to-double v3, v1

    float-to-double v1, v2

    .line 4
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public static computeStraightness([FF)F
    .locals 4

    const/4 v0, 0x2

    .line 5
    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x3

    .line 6
    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    sub-float/2addr v1, p0

    float-to-double v2, v0

    float-to-double v0, v1

    .line 7
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static computeTotalLength([F)F
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    add-int/lit8 v3, v2, 0x2

    .line 9
    .line 10
    aget v4, p0, v3

    .line 11
    .line 12
    aget v5, p0, v2

    .line 13
    .line 14
    sub-float/2addr v4, v5

    .line 15
    add-int/lit8 v5, v2, 0x3

    .line 16
    .line 17
    aget v5, p0, v5

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    aget v2, p0, v2

    .line 22
    .line 23
    sub-float/2addr v5, v2

    .line 24
    float-to-double v1, v1

    .line 25
    float-to-double v6, v4

    .line 26
    float-to-double v4, v5

    .line 27
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    add-double/2addr v4, v1

    .line 32
    double-to-float v1, v4

    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v1
.end method

.method public static cosineDistance([F[F)F
    .locals 5

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
    mul-float/2addr v3, v4

    .line 11
    add-float/2addr v1, v3

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    float-to-double p0, v1

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    double-to-float p0, p0

    .line 21
    return p0
.end method

.method public static minimumCosineDistance([F[FI)F
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v3, v1

    .line 5
    move v4, v3

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    aget v6, p1, v2

    .line 11
    .line 12
    mul-float v7, v5, v6

    .line 13
    .line 14
    add-int/lit8 v8, v2, 0x1

    .line 15
    .line 16
    aget v9, p0, v8

    .line 17
    .line 18
    aget v8, p1, v8

    .line 19
    .line 20
    mul-float v10, v9, v8

    .line 21
    .line 22
    add-float/2addr v10, v7

    .line 23
    add-float/2addr v3, v10

    .line 24
    mul-float/2addr v5, v8

    .line 25
    mul-float/2addr v9, v6

    .line 26
    sub-float/2addr v5, v9

    .line 27
    add-float/2addr v4, v5

    .line 28
    add-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpl-float p0, v3, v1

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    div-float p0, v4, v3

    .line 36
    .line 37
    float-to-double p0, p0

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const/4 v2, 0x2

    .line 43
    if-le p2, v2, :cond_1

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-wide v7, 0x400921fb54442d18L    # Math.PI

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    int-to-double v9, p2

    .line 55
    div-double/2addr v7, v9

    .line 56
    cmpl-double p2, v5, v7

    .line 57
    .line 58
    if-ltz p2, :cond_1

    .line 59
    .line 60
    float-to-double p0, v3

    .line 61
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    :goto_1
    double-to-float p0, p0

    .line 66
    return p0

    .line 67
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    mul-double/2addr p0, v0

    .line 72
    float-to-double v2, v3

    .line 73
    mul-double/2addr v2, v0

    .line 74
    float-to-double v0, v4

    .line 75
    mul-double/2addr v0, p0

    .line 76
    add-double/2addr v0, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const p0, 0x3fc90fdb

    .line 83
    .line 84
    .line 85
    return p0
.end method

.method private static plot(FF[FI)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    move p0, v0

    .line 7
    :cond_0
    cmpg-float v1, p1, v0

    .line 8
    .line 9
    if-gez v1, :cond_1

    .line 10
    .line 11
    move p1, v0

    .line 12
    :cond_1
    float-to-double v0, p0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    double-to-int v2, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-int v0, v0

    .line 23
    float-to-double v3, p1

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    double-to-int v1, v5

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    double-to-int v3, v3

    .line 34
    int-to-float v4, v2

    .line 35
    cmpl-float v5, p0, v4

    .line 36
    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    int-to-float v5, v1

    .line 40
    cmpl-float v5, p1, v5

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    mul-int/2addr v3, p3

    .line 45
    add-int/2addr v3, v0

    .line 46
    aget p0, p2, v3

    .line 47
    .line 48
    const/high16 p1, 0x3f800000    # 1.0f

    .line 49
    .line 50
    cmpg-float p0, p0, p1

    .line 51
    .line 52
    if-gez p0, :cond_6

    .line 53
    .line 54
    aput p1, p2, v3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sub-float/2addr v4, p0

    .line 58
    float-to-double v4, v4

    .line 59
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 60
    .line 61
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    int-to-float v8, v1

    .line 66
    sub-float/2addr v8, p1

    .line 67
    float-to-double v8, v8

    .line 68
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    int-to-float v10, v0

    .line 73
    sub-float/2addr v10, p0

    .line 74
    float-to-double v10, v10

    .line 75
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    int-to-float p0, v3

    .line 80
    sub-float/2addr p0, p1

    .line 81
    float-to-double p0, p0

    .line 82
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide p0

    .line 86
    add-double v6, v4, v8

    .line 87
    .line 88
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    double-to-float v6, v6

    .line 93
    add-double/2addr v8, v10

    .line 94
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    double-to-float v7, v7

    .line 99
    add-double/2addr v4, p0

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    double-to-float v4, v4

    .line 105
    add-double/2addr v10, p0

    .line 106
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide p0

    .line 110
    double-to-float p0, p0

    .line 111
    add-float p1, v6, v7

    .line 112
    .line 113
    add-float/2addr p1, v4

    .line 114
    add-float/2addr p1, p0

    .line 115
    div-float/2addr v6, p1

    .line 116
    mul-int/2addr v1, p3

    .line 117
    add-int v5, v1, v2

    .line 118
    .line 119
    aget v8, p2, v5

    .line 120
    .line 121
    cmpl-float v8, v6, v8

    .line 122
    .line 123
    if-lez v8, :cond_3

    .line 124
    .line 125
    aput v6, p2, v5

    .line 126
    .line 127
    :cond_3
    div-float/2addr v7, p1

    .line 128
    add-int/2addr v1, v0

    .line 129
    aget v5, p2, v1

    .line 130
    .line 131
    cmpl-float v5, v7, v5

    .line 132
    .line 133
    if-lez v5, :cond_4

    .line 134
    .line 135
    aput v7, p2, v1

    .line 136
    .line 137
    :cond_4
    div-float/2addr v4, p1

    .line 138
    mul-int/2addr v3, p3

    .line 139
    add-int/2addr v2, v3

    .line 140
    aget p3, p2, v2

    .line 141
    .line 142
    cmpl-float p3, v4, p3

    .line 143
    .line 144
    if-lez p3, :cond_5

    .line 145
    .line 146
    aput v4, p2, v2

    .line 147
    .line 148
    :cond_5
    div-float/2addr p0, p1

    .line 149
    add-int/2addr v3, v0

    .line 150
    aget p1, p2, v3

    .line 151
    .line 152
    cmpl-float p1, p0, p1

    .line 153
    .line 154
    if-lez p1, :cond_6

    .line 155
    .line 156
    aput p0, p2, v3

    .line 157
    .line 158
    :cond_6
    :goto_0
    return-void
.end method

.method public static rotate([FF)[F
    .locals 8

    .line 1
    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v2

    .line 6
    double-to-float p1, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    double-to-float v0, v0

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    aget v3, p0, v2

    .line 17
    .line 18
    mul-float v4, v3, p1

    .line 19
    .line 20
    add-int/lit8 v5, v2, 0x1

    .line 21
    .line 22
    aget v6, p0, v5

    .line 23
    .line 24
    mul-float v7, v6, v0

    .line 25
    .line 26
    sub-float/2addr v4, v7

    .line 27
    mul-float/2addr v3, v0

    .line 28
    mul-float/2addr v6, p1

    .line 29
    add-float/2addr v6, v3

    .line 30
    aput v4, p0, v2

    .line 31
    .line 32
    aput v6, p0, v5

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p0
.end method

.method public static scale([FFF)[F
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    mul-float/2addr v2, p1

    .line 8
    aput v2, p0, v1

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    aget v3, p0, v2

    .line 13
    .line 14
    mul-float/2addr v3, p2

    .line 15
    aput v3, p0, v2

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 21

    move/from16 v0, p1

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-int v2, v0, v0

    .line 2
    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 6
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v7, v1, v5

    div-float v8, v1, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    cmpg-float v5, v7, v8

    if-gez v5, :cond_2

    goto :goto_0

    :cond_0
    div-float/2addr v5, v6

    cmpl-float v6, v5, v9

    if-lez v6, :cond_1

    div-float v5, v9, v5

    :cond_1
    const v6, 0x3e851eb8    # 0.26f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    cmpg-float v5, v7, v8

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    move v8, v7

    goto :goto_1

    :cond_3
    cmpl-float v5, v7, v8

    if-lez v5, :cond_4

    .line 7
    sget v5, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float/2addr v5, v8

    cmpg-float v6, v5, v7

    if-gez v6, :cond_5

    move v7, v5

    goto :goto_1

    .line 8
    :cond_4
    sget v5, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float/2addr v5, v7

    cmpg-float v6, v5, v8

    if-gez v6, :cond_5

    move v8, v5

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    neg-float v5, v5

    .line 10
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    neg-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v9

    .line 12
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_12

    .line 13
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gesture/GestureStroke;

    .line 14
    iget-object v12, v12, Landroid/gesture/GestureStroke;->points:[F

    .line 15
    array-length v13, v12

    .line 16
    new-array v14, v13, [F

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_6

    .line 17
    aget v16, v12, v15

    add-float v16, v16, v5

    mul-float v16, v16, v7

    add-float v16, v16, v6

    aput v16, v14, v15

    add-int/lit8 v16, v15, 0x1

    .line 18
    aget v17, v12, v16

    add-float v17, v17, v4

    mul-float v17, v17, v8

    add-float v17, v17, v6

    aput v17, v14, v16

    add-int/lit8 v15, v15, 0x2

    goto :goto_3

    :cond_6
    const/high16 v12, -0x40800000    # -1.0f

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    move v4, v12

    move v5, v15

    move v15, v4

    :goto_4
    if-ge v5, v13, :cond_11

    .line 19
    aget v18, v14, v5

    cmpg-float v19, v18, v3

    if-gez v19, :cond_7

    move/from16 v18, v3

    :cond_7
    add-int/lit8 v19, v5, 0x1

    .line 20
    aget v19, v14, v19

    cmpg-float v20, v19, v3

    if-gez v20, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v3, v19

    :goto_5
    cmpl-float v19, v18, v1

    move/from16 p2, v6

    if-lez v19, :cond_9

    move v6, v1

    goto :goto_6

    :cond_9
    move/from16 v6, v18

    :goto_6
    cmpl-float v18, v3, v1

    if-lez v18, :cond_a

    move v3, v1

    .line 21
    :cond_a
    invoke-static {v6, v3, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    cmpl-float v15, v12, v15

    if-eqz v15, :cond_f

    cmpl-float v15, v12, v6

    if-lez v15, :cond_c

    move v15, v7

    move/from16 v18, v8

    float-to-double v7, v6

    .line 22
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v8, v4, v3

    sub-float v19, v12, v6

    div-float v8, v8, v19

    :goto_7
    cmpg-float v19, v7, v12

    if-gez v19, :cond_b

    move/from16 v19, v1

    invoke-static {v7, v6, v8, v3}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result v1

    .line 23
    invoke-static {v7, v1, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v7, v1

    move/from16 v1, v19

    goto :goto_7

    :cond_b
    move/from16 v19, v1

    goto :goto_9

    :cond_c
    move/from16 v19, v1

    move v15, v7

    move/from16 v18, v8

    cmpg-float v1, v12, v6

    if-gez v1, :cond_d

    float-to-double v7, v12

    .line 24
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    sub-float v7, v4, v3

    sub-float v8, v12, v6

    div-float/2addr v7, v8

    :goto_8
    cmpg-float v8, v1, v6

    if-gez v8, :cond_d

    invoke-static {v1, v6, v7, v3}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result v8

    .line 25
    invoke-static {v1, v8, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v1, v8

    goto :goto_8

    :cond_d
    :goto_9
    cmpl-float v1, v4, v3

    if-lez v1, :cond_e

    float-to-double v7, v3

    .line 26
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    sub-float/2addr v12, v6

    sub-float v7, v4, v3

    div-float/2addr v12, v7

    :goto_a
    cmpg-float v7, v1, v4

    if-gez v7, :cond_10

    invoke-static {v1, v3, v12, v6}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result v7

    .line 27
    invoke-static {v7, v1, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v1, v7

    goto :goto_a

    :cond_e
    cmpg-float v1, v4, v3

    if-gez v1, :cond_10

    float-to-double v7, v4

    .line 28
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    sub-float/2addr v12, v6

    sub-float/2addr v4, v3

    div-float/2addr v12, v4

    :goto_b
    cmpg-float v4, v1, v3

    if-gez v4, :cond_10

    invoke-static {v1, v3, v12, v6}, Landroid/accessibilityservice/c;->a(FFFF)F

    move-result v4

    .line 29
    invoke-static {v4, v1, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    goto :goto_b

    :cond_f
    move/from16 v19, v1

    move v15, v7

    move/from16 v18, v8

    :cond_10
    add-int/lit8 v5, v5, 0x2

    const/4 v1, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    move v12, v6

    move v7, v15

    move/from16 v8, v18

    move/from16 v6, p2

    move v15, v4

    move v4, v3

    move v3, v1

    move/from16 v1, v19

    goto/16 :goto_4

    :cond_11
    move/from16 v19, v1

    move/from16 p2, v6

    move v15, v7

    move/from16 v18, v8

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_2

    :cond_12
    return-object v2
.end method

.method public static squaredEuclideanDistance([F[F)F
    .locals 5

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
    sub-float/2addr v3, v4

    .line 11
    mul-float/2addr v3, v3

    .line 12
    add-float/2addr v1, v3

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    int-to-float p0, v0

    .line 17
    div-float/2addr v1, p0

    .line 18
    return v1
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroid/gesture/GestureStroke;->length:F

    .line 4
    .line 5
    add-int/lit8 v2, p1, -0x1

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    div-float/2addr v1, v2

    .line 9
    const/4 v2, 0x2

    .line 10
    mul-int/lit8 v3, p1, 0x2

    .line 11
    .line 12
    new-array v4, v3, [F

    .line 13
    .line 14
    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aget v6, v0, v5

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    aget v8, v0, v7

    .line 21
    .line 22
    aput v6, v4, v5

    .line 23
    .line 24
    aput v8, v4, v7

    .line 25
    .line 26
    array-length v9, v0

    .line 27
    div-int/2addr v9, v2

    .line 28
    const/4 v11, 0x1

    .line 29
    move v12, v11

    .line 30
    move v14, v12

    .line 31
    const/4 v13, 0x0

    .line 32
    :goto_0
    if-ge v5, v9, :cond_3

    .line 33
    .line 34
    cmpl-float v15, v12, v11

    .line 35
    .line 36
    if-nez v15, :cond_1

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    if-lt v5, v9, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    mul-int/lit8 v12, v5, 0x2

    .line 44
    .line 45
    aget v14, v0, v12

    .line 46
    .line 47
    add-int/2addr v12, v7

    .line 48
    aget v12, v0, v12

    .line 49
    .line 50
    move/from16 v18, v14

    .line 51
    .line 52
    move v14, v12

    .line 53
    move/from16 v12, v18

    .line 54
    .line 55
    :cond_1
    sub-float v15, v12, v6

    .line 56
    .line 57
    sub-float v10, v14, v8

    .line 58
    .line 59
    move/from16 v16, v12

    .line 60
    .line 61
    float-to-double v11, v15

    .line 62
    move/from16 v17, v8

    .line 63
    .line 64
    float-to-double v7, v10

    .line 65
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    double-to-float v7, v7

    .line 70
    add-float v8, v13, v7

    .line 71
    .line 72
    cmpl-float v11, v8, v1

    .line 73
    .line 74
    if-ltz v11, :cond_2

    .line 75
    .line 76
    sub-float v8, v1, v13

    .line 77
    .line 78
    div-float/2addr v8, v7

    .line 79
    mul-float/2addr v15, v8

    .line 80
    add-float/2addr v15, v6

    .line 81
    mul-float/2addr v8, v10

    .line 82
    add-float v8, v8, v17

    .line 83
    .line 84
    aput v15, v4, v2

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    aput v8, v4, v2

    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    add-int/2addr v2, v7

    .line 92
    move v6, v15

    .line 93
    move/from16 v12, v16

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const/4 v7, 0x1

    .line 98
    move v13, v8

    .line 99
    move v8, v14

    .line 100
    move/from16 v6, v16

    .line 101
    .line 102
    const/4 v12, 0x1

    .line 103
    const/4 v14, 0x1

    .line 104
    :goto_1
    const/4 v11, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    :goto_2
    move/from16 v17, v8

    .line 107
    .line 108
    :goto_3
    if-ge v2, v3, :cond_4

    .line 109
    .line 110
    aput v6, v4, v2

    .line 111
    .line 112
    add-int/lit8 v0, v2, 0x1

    .line 113
    .line 114
    aput v17, v4, v0

    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x2

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    return-object v4
.end method

.method public static translate([FFF)[F
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    add-float/2addr v2, p1

    .line 8
    aput v2, p0, v1

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    aget v3, p0, v2

    .line 13
    .line 14
    add-float/2addr v3, p2

    .line 15
    aput v3, p0, v2

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object p0
.end method
