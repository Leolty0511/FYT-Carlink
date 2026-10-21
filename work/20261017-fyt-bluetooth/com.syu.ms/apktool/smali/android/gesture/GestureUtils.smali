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

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Gestures"

    const-string v1, "Could not close stream"

    .line 2
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static computeCentroid([F)[F
    .locals 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_0

    .line 2
    aget v6, p0, v4

    add-float/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    .line 3
    aget v6, p0, v4

    add-float/2addr v3, v6

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    int-to-float v0, v0

    div-float/2addr v2, v0

    aput v2, p0, v1

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    aput v3, p0, v5

    return-object p0
.end method

.method private static computeCoVariance([F)[[F
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    .line 2
    aget-object v3, v1, v2

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 3
    aget-object v3, v1, v2

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 4
    aget-object v3, v1, v5

    aput v4, v3, v2

    .line 5
    aget-object v3, v1, v5

    aput v4, v3, v5

    .line 6
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    aget v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    .line 8
    aget v7, p0, v4

    .line 9
    aget-object v8, v1, v2

    aget v9, v8, v2

    mul-float v10, v6, v6

    add-float/2addr v9, v10

    aput v9, v8, v2

    .line 10
    aget-object v8, v1, v2

    aget v9, v8, v5

    mul-float/2addr v6, v7

    add-float/2addr v9, v6

    aput v9, v8, v5

    .line 11
    aget-object v6, v1, v5

    aget-object v8, v1, v2

    aget v8, v8, v5

    aput v8, v6, v2

    .line 12
    aget-object v6, v1, v5

    aget v8, v6, v5

    mul-float/2addr v7, v7

    add-float/2addr v8, v7

    aput v8, v6, v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 13
    :cond_0
    aget-object p0, v1, v2

    aget v4, p0, v2

    div-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v4, v0

    aput v4, p0, v2

    .line 14
    aget-object p0, v1, v2

    aget v3, p0, v5

    div-float/2addr v3, v0

    aput v3, p0, v5

    .line 15
    aget-object p0, v1, v5

    aget v3, p0, v2

    div-float/2addr v3, v0

    aput v3, p0, v2

    .line 16
    aget-object p0, v1, v5

    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, p0, v5

    return-object v1

    nop

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method private static computeOrientation([[F)[F
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1
    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    aget-object v2, p0, v3

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    aput v5, v0, v1

    aput v4, v0, v3

    .line 2
    :cond_1
    aget-object v2, p0, v1

    aget v2, v2, v1

    neg-float v2, v2

    aget-object v6, p0, v3

    aget v6, v6, v3

    sub-float/2addr v2, v6

    .line 3
    aget-object v6, p0, v1

    aget v6, v6, v1

    aget-object v7, p0, v3

    aget v7, v7, v3

    mul-float/2addr v6, v7

    aget-object v7, p0, v1

    aget v7, v7, v3

    aget-object v8, p0, v3

    aget v8, v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    float-to-double v7, v2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v6

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    neg-float v2, v2

    add-float v7, v2, v6

    sub-float/2addr v2, v6

    cmpl-float v6, v7, v2

    if-nez v6, :cond_2

    aput v4, v0, v1

    aput v4, v0, v3

    goto :goto_1

    :cond_2
    if-lez v6, :cond_3

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    aput v5, v0, v1

    .line 5
    aget-object v2, p0, v1

    aget v2, v2, v1

    sub-float/2addr v7, v2

    aget-object p0, p0, v1

    aget p0, p0, v3

    div-float/2addr v7, p0

    aput v7, v0, v3

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

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    aget v4, v2, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const v2, -0x4036f025

    goto :goto_0

    .line 17
    :cond_0
    aget v4, v2, v3

    float-to-double v4, v4

    aget v2, v2, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

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

    cmpg-float v10, v10, v7

    if-gez v10, :cond_1

    .line 21
    aget v7, v0, v9

    .line 22
    :cond_1
    aget v10, v0, v9

    cmpl-float v10, v10, v5

    if-lez v10, :cond_2

    .line 23
    aget v5, v0, v9

    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 24
    aget v10, v0, v9

    cmpg-float v10, v10, v8

    if-gez v10, :cond_3

    .line 25
    aget v8, v0, v9

    .line 26
    :cond_3
    aget v10, v0, v9

    cmpl-float v10, v10, v6

    if-lez v10, :cond_4

    .line 27
    aget v6, v0, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 28
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
    .locals 4

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

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    div-float/2addr p0, v0

    return p0
.end method

.method public static computeStraightness([FF)F
    .locals 3

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

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static computeTotalLength([F)F
    .locals 6

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x2

    .line 2
    aget v4, p0, v3

    aget v5, p0, v2

    sub-float/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    .line 3
    aget v5, p0, v5

    add-int/lit8 v2, v2, 0x1

    aget v2, p0, v2

    sub-float/2addr v5, v2

    float-to-double v1, v1

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    double-to-float v1, v1

    move v2, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static cosineDistance([F[F)F
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double p0, v1

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static minimumCosineDistance([F[FI)F
    .locals 11

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget v5, p0, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v7, p0, v6

    aget v8, p1, v6

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    add-float/2addr v3, v5

    .line 3
    aget v5, p0, v2

    aget v7, p1, v6

    mul-float/2addr v5, v7

    aget v6, p0, v6

    aget v7, p1, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    cmpl-float p0, v3, v1

    if-eqz p0, :cond_2

    div-float p0, v4, v3

    float-to-double p0, p0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    int-to-double v9, p2

    div-double/2addr v7, v9

    cmpl-double p2, v5, v7

    if-ltz p2, :cond_1

    float-to-double p0, v3

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    :goto_1
    double-to-float p0, p0

    return p0

    .line 7
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    float-to-double v2, v3

    mul-double/2addr v2, v0

    float-to-double v0, v4

    mul-double/2addr v0, p0

    add-double/2addr v2, v0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    goto :goto_1

    :cond_2
    const p0, 0x3fc90fdb

    return p0
.end method

.method private static plot(FF[FI)V
    .locals 12

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_1
    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v3, p1

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v2

    cmpl-float v5, p0, v4

    if-nez v5, :cond_2

    int-to-float v5, v1

    cmpl-float v5, p1, v5

    if-nez v5, :cond_2

    mul-int/2addr v3, p3

    add-int/2addr v3, v0

    .line 5
    aget p0, p2, v3

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_6

    .line 6
    aput p1, p2, v3

    goto :goto_0

    :cond_2
    sub-float/2addr v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 7
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-float v8, v1

    sub-float/2addr v8, p1

    float-to-double v8, v8

    .line 8
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-float v10, v0

    sub-float/2addr v10, p0

    float-to-double v10, v10

    .line 9
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-float p0, v3

    sub-float/2addr p0, p1

    float-to-double p0, p0

    .line 10
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double v6, v4, v8

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-double/2addr v8, v10

    .line 12
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-double/2addr v4, p0

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-double/2addr v10, p0

    .line 14
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    add-float p1, v6, v7

    add-float/2addr p1, v4

    add-float/2addr p1, p0

    div-float/2addr v6, p1

    mul-int/2addr v1, p3

    add-int v5, v1, v2

    .line 15
    aget v8, p2, v5

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    .line 16
    aput v6, p2, v5

    :cond_3
    div-float/2addr v7, p1

    add-int/2addr v1, v0

    .line 17
    aget v5, p2, v1

    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    .line 18
    aput v7, p2, v1

    :cond_4
    div-float/2addr v4, p1

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    .line 19
    aget p3, p2, v2

    cmpl-float p3, v4, p3

    if-lez p3, :cond_5

    .line 20
    aput v4, p2, v2

    :cond_5
    div-float/2addr p0, p1

    add-int/2addr v3, v0

    .line 21
    aget p1, p2, v3

    cmpl-float p1, p0, p1

    if-lez p1, :cond_6

    .line 22
    aput p0, p2, v3

    :cond_6
    :goto_0
    return-void
.end method

.method public static rotate([FF)[F
    .locals 7

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    aget v3, p0, v2

    mul-float/2addr v3, p1

    add-int/lit8 v4, v2, 0x1

    aget v5, p0, v4

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    .line 5
    aget v5, p0, v2

    mul-float/2addr v5, v0

    aget v6, p0, v4

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    .line 6
    aput v3, p0, v2

    .line 7
    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static scale([FFF)[F
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x1

    .line 3
    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

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
    .locals 23

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

    if-eqz p2, :cond_1

    cmpg-float v5, v7, v8

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    move v8, v7

    goto :goto_1

    :cond_1
    div-float/2addr v5, v6

    cmpl-float v6, v5, v9

    if-lez v6, :cond_2

    div-float v5, v9, v5

    :cond_2
    const v6, 0x3e851eb8    # 0.26f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    cmpg-float v5, v7, v8

    if-gez v5, :cond_0

    goto :goto_0

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

    move-result-object v10

    .line 12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_13

    .line 13
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/gesture/GestureStroke;

    .line 14
    iget-object v14, v14, Landroid/gesture/GestureStroke;->points:[F

    .line 15
    array-length v15, v14

    .line 16
    new-array v12, v15, [F

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_6

    .line 17
    aget v16, v14, v9

    add-float v16, v16, v5

    mul-float v16, v16, v7

    add-float v16, v16, v6

    aput v16, v12, v9

    add-int/lit8 v16, v9, 0x1

    .line 18
    aget v17, v14, v16

    add-float v17, v17, v4

    mul-float v17, v17, v8

    add-float v17, v17, v6

    aput v17, v12, v16

    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_6
    const/high16 v9, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    :goto_4
    if-ge v14, v15, :cond_12

    .line 19
    aget v16, v12, v14

    cmpg-float v16, v16, v3

    if-gez v16, :cond_7

    move/from16 v16, v3

    goto :goto_5

    :cond_7
    aget v16, v12, v14

    :goto_5
    add-int/lit8 v17, v14, 0x1

    .line 20
    aget v19, v12, v17

    cmpg-float v19, v19, v3

    if-gez v19, :cond_8

    move/from16 v17, v3

    goto :goto_6

    :cond_8
    aget v17, v12, v17

    :goto_6
    cmpl-float v19, v16, v1

    if-lez v19, :cond_9

    move v3, v1

    goto :goto_7

    :cond_9
    move/from16 v3, v16

    :goto_7
    cmpl-float v16, v17, v1

    if-lez v16, :cond_a

    move/from16 v16, v1

    goto :goto_8

    :cond_a
    move/from16 v16, v1

    move/from16 v1, v17

    .line 21
    :goto_8
    invoke-static {v3, v1, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v17, -0x40800000    # -1.0f

    cmpl-float v20, v9, v17

    if-eqz v20, :cond_10

    cmpl-float v20, v9, v3

    if-lez v20, :cond_c

    move/from16 p2, v4

    move/from16 v20, v5

    float-to-double v4, v3

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v5, v18

    sub-float v18, v5, v1

    sub-float v21, v9, v3

    div-float v18, v18, v21

    :goto_9
    cmpg-float v21, v4, v9

    if-gez v21, :cond_b

    sub-float v21, v4, v3

    mul-float v21, v21, v18

    move/from16 v22, v6

    add-float v6, v21, v1

    .line 23
    invoke-static {v4, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    move/from16 v6, v22

    goto :goto_9

    :cond_b
    move/from16 v22, v6

    goto :goto_b

    :cond_c
    move/from16 p2, v4

    move/from16 v20, v5

    move/from16 v22, v6

    move/from16 v5, v18

    cmpg-float v4, v9, v3

    if-gez v4, :cond_d

    move v4, v7

    float-to-double v6, v9

    .line 24
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v18, v5, v1

    sub-float v7, v9, v3

    div-float v18, v18, v7

    :goto_a
    cmpg-float v7, v6, v3

    if-gez v7, :cond_e

    sub-float v7, v6, v3

    mul-float v7, v7, v18

    add-float/2addr v7, v1

    .line 25
    invoke-static {v6, v7, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    goto :goto_a

    :cond_d
    :goto_b
    move v4, v7

    :cond_e
    cmpl-float v6, v5, v1

    if-lez v6, :cond_f

    float-to-double v6, v1

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v9, v3

    sub-float v18, v5, v1

    div-float v9, v9, v18

    :goto_c
    cmpg-float v7, v6, v5

    if-gez v7, :cond_11

    sub-float v7, v6, v1

    mul-float/2addr v7, v9

    add-float/2addr v7, v3

    .line 27
    invoke-static {v7, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    goto :goto_c

    :cond_f
    cmpg-float v6, v5, v1

    if-gez v6, :cond_11

    float-to-double v6, v5

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v9, v3

    sub-float v18, v5, v1

    div-float v9, v9, v18

    :goto_d
    cmpg-float v5, v6, v1

    if-gez v5, :cond_11

    sub-float v5, v6, v1

    mul-float/2addr v5, v9

    add-float/2addr v5, v3

    .line 29
    invoke-static {v5, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v6, v5

    goto :goto_d

    :cond_10
    move/from16 p2, v4

    move/from16 v20, v5

    move/from16 v22, v6

    move v4, v7

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    add-int/lit8 v14, v14, 0x2

    move/from16 v18, v1

    move v9, v3

    move v7, v4

    move/from16 v1, v16

    move/from16 v5, v20

    move/from16 v6, v22

    const/4 v3, 0x0

    move/from16 v4, p2

    goto/16 :goto_4

    :cond_12
    move/from16 v16, v1

    move/from16 p2, v4

    move/from16 v20, v5

    move/from16 v22, v6

    move v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    add-int/lit8 v13, v13, 0x1

    move v9, v5

    move/from16 v5, v20

    const/4 v3, 0x0

    move/from16 v4, p2

    goto/16 :goto_2

    :cond_13
    return-object v2
.end method

.method public static squaredEuclideanDistance([F[F)F
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p0, v0

    div-float/2addr v1, p0

    return v1
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Landroid/gesture/GestureStroke;->length:F

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x2

    mul-int/lit8 v3, p1, 0x2

    .line 2
    new-array v4, v3, [F

    .line 3
    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    const/4 v5, 0x0

    .line 4
    aget v6, v0, v5

    const/4 v7, 0x1

    .line 5
    aget v8, v0, v7

    .line 6
    aput v6, v4, v5

    .line 7
    aput v8, v4, v7

    .line 8
    array-length v9, v0

    div-int/2addr v9, v2

    const/4 v11, 0x1

    move v12, v11

    move v14, v12

    const/4 v13, 0x0

    :goto_0
    if-ge v5, v9, :cond_3

    cmpl-float v15, v12, v11

    if-nez v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v9, :cond_0

    goto :goto_2

    :cond_0
    mul-int/lit8 v12, v5, 0x2

    .line 9
    aget v14, v0, v12

    add-int/2addr v12, v7

    .line 10
    aget v12, v0, v12

    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    :cond_1
    sub-float v15, v12, v6

    sub-float v16, v14, v8

    mul-float v17, v15, v15

    mul-float v18, v16, v16

    add-float v10, v17, v18

    move/from16 v17, v12

    float-to-double v11, v10

    .line 11
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    add-float v11, v13, v10

    cmpl-float v12, v11, v1

    if-ltz v12, :cond_2

    sub-float v11, v1, v13

    div-float/2addr v11, v10

    mul-float/2addr v15, v11

    add-float/2addr v6, v15

    mul-float v11, v11, v16

    add-float/2addr v8, v11

    .line 12
    aput v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 13
    aput v8, v4, v2

    add-int/2addr v2, v7

    move/from16 v12, v17

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move v13, v11

    move v8, v14

    move/from16 v6, v17

    const/4 v12, 0x1

    const/4 v14, 0x1

    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v2, v3, :cond_4

    .line 14
    aput v6, v4, v2

    add-int/lit8 v0, v2, 0x1

    .line 15
    aput v8, v4, v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method public static translate([FFF)[F
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    aget v2, p0, v1

    add-float/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x1

    .line 3
    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method
