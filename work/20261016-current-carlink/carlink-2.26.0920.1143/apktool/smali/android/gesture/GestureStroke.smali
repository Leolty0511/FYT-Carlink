.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 22
    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    .line 23
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 24
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput-object p1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    .line 3
    new-array v2, v2, [F

    .line 4
    new-array v3, v1, [J

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    move-object/from16 v9, p1

    .line 5
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GesturePoint;

    mul-int/lit8 v11, v6, 0x2

    .line 6
    iget v12, v10, Landroid/gesture/GesturePoint;->x:F

    aput v12, v2, v11

    add-int/lit8 v11, v11, 0x1

    .line 7
    iget v13, v10, Landroid/gesture/GesturePoint;->y:F

    aput v13, v2, v11

    .line 8
    iget-wide v14, v10, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v14, v3, v7

    if-nez v4, :cond_0

    .line 9
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 10
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v4, Landroid/graphics/RectF;->top:F

    .line 11
    iget v10, v10, Landroid/gesture/GesturePoint;->x:F

    iput v10, v4, Landroid/graphics/RectF;->left:F

    .line 12
    iput v10, v4, Landroid/graphics/RectF;->right:F

    .line 13
    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v6

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    float-to-double v14, v8

    add-int/lit8 v8, v6, -0x1

    mul-int/lit8 v8, v8, 0x2

    .line 14
    aget v11, v2, v8

    sub-float/2addr v12, v11

    float-to-double v11, v12

    add-int/lit8 v8, v8, 0x1

    aget v8, v2, v8

    sub-float/2addr v13, v8

    move/from16 v16, v6

    float-to-double v5, v13

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v5, v14

    double-to-float v5, v5

    .line 15
    iget v6, v10, Landroid/gesture/GesturePoint;->x:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->union(FF)V

    move v8, v5

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v16, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iput-object v3, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 17
    iput-object v2, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 18
    iput-object v4, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 19
    iput v8, v0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Landroid/gesture/GestureStroke;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method private makePath()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move v5, v4

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v5, v1, :cond_3

    .line 10
    .line 11
    aget v6, v0, v5

    .line 12
    .line 13
    add-int/lit8 v7, v5, 0x1

    .line 14
    .line 15
    aget v7, v0, v7

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    .line 26
    .line 27
    :goto_1
    move v3, v6

    .line 28
    move v4, v7

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    sub-float v8, v6, v3

    .line 31
    .line 32
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    sub-float v9, v7, v4

    .line 37
    .line 38
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    const/high16 v10, 0x40400000    # 3.0f

    .line 43
    .line 44
    cmpl-float v8, v8, v10

    .line 45
    .line 46
    if-gez v8, :cond_1

    .line 47
    .line 48
    cmpl-float v8, v9, v10

    .line 49
    .line 50
    if-ltz v8, :cond_2

    .line 51
    .line 52
    :cond_1
    add-float v8, v6, v3

    .line 53
    .line 54
    const/high16 v9, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float/2addr v8, v9

    .line 57
    add-float v10, v7, v4

    .line 58
    .line 59
    div-float/2addr v10, v9

    .line 60
    invoke-virtual {v2, v3, v4, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iput-object v2, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    .line 9
    .line 10
    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 2
    .line 3
    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    div-int/lit8 v3, v2, 0x2

    .line 7
    .line 8
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v4, v3, 0x1

    .line 20
    .line 21
    aget v4, v0, v4

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 24
    .line 25
    .line 26
    div-int/lit8 v4, v3, 0x2

    .line 27
    .line 28
    aget-wide v4, v1, v4

    .line 29
    .line 30
    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 8

    .line 1
    invoke-static {p0, p3}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    neg-float v1, v1

    .line 10
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 11
    .line 12
    neg-float v2, v2

    .line 13
    invoke-static {p3, v1, v2}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-float/2addr p1, v1

    .line 21
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    div-float/2addr p2, v0

    .line 26
    cmpl-float v0, p1, p2

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    move p1, p2

    .line 31
    :cond_0
    invoke-static {p3, p1, p1}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    .line 32
    .line 33
    .line 34
    array-length p1, p3

    .line 35
    const/4 p2, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    move-object v1, v0

    .line 40
    move v0, p2

    .line 41
    :goto_0
    if-ge v2, p1, :cond_4

    .line 42
    .line 43
    aget v3, p3, v2

    .line 44
    .line 45
    add-int/lit8 v4, v2, 0x1

    .line 46
    .line 47
    aget v4, p3, v4

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance p2, Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    .line 58
    .line 59
    move-object v1, p2

    .line 60
    :goto_1
    move p2, v3

    .line 61
    move v0, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    sub-float v5, v3, p2

    .line 64
    .line 65
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    sub-float v6, v4, v0

    .line 70
    .line 71
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const/high16 v7, 0x40400000    # 3.0f

    .line 76
    .line 77
    cmpl-float v5, v5, v7

    .line 78
    .line 79
    if-gez v5, :cond_2

    .line 80
    .line 81
    cmpl-float v5, v6, v7

    .line 82
    .line 83
    if-ltz v5, :cond_3

    .line 84
    .line 85
    :cond_2
    add-float v5, v3, p2

    .line 86
    .line 87
    const/high16 v6, 0x40000000    # 2.0f

    .line 88
    .line 89
    div-float/2addr v5, v6

    .line 90
    add-float v7, v4, v0

    .line 91
    .line 92
    div-float/2addr v7, v6

    .line 93
    invoke-virtual {v1, p2, v0, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-object v1
.end method
