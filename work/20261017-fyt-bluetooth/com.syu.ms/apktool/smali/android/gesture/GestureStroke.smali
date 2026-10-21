.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TOUCH_TOLERANCE:F = 3.0f


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

    move-object v7, v6

    const/4 v8, 0x0

    move v6, v4

    :goto_0
    if-ge v4, v1, :cond_1

    move-object/from16 v9, p1

    .line 5
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GesturePoint;

    mul-int/lit8 v11, v4, 0x2

    .line 6
    iget v12, v10, Landroid/gesture/GesturePoint;->x:F

    aput v12, v2, v11

    add-int/lit8 v11, v11, 0x1

    .line 7
    iget v13, v10, Landroid/gesture/GesturePoint;->y:F

    aput v13, v2, v11

    .line 8
    iget-wide v13, v10, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v13, v3, v6

    if-nez v7, :cond_0

    .line 9
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 10
    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 11
    iget v10, v10, Landroid/gesture/GesturePoint;->x:F

    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 12
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 13
    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v6

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    float-to-double v13, v8

    add-int/lit8 v8, v4, -0x1

    mul-int/lit8 v8, v8, 0x2

    .line 14
    aget v11, v2, v8

    sub-float/2addr v12, v11

    float-to-double v11, v12

    move/from16 v16, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v15, v10, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v8, v8, 0x1

    aget v8, v2, v8

    sub-float/2addr v15, v8

    float-to-double v8, v15

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v13, v5

    double-to-float v5, v13

    .line 15
    iget v6, v10, Landroid/gesture/GesturePoint;->x:F

    iget v8, v10, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v7, v6, v8}, Landroid/graphics/RectF;->union(FF)V

    move v8, v5

    :goto_1
    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iput-object v3, v0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 17
    iput-object v2, v0, Landroid/gesture/GestureStroke;->points:[F

    .line 18
    iput-object v7, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 19
    iput v8, v0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Landroid/gesture/GestureStroke;

    invoke-direct {p0, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private makePath()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v5, v1, :cond_3

    .line 3
    aget v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    .line 4
    aget v7, v0, v7

    if-nez v4, :cond_0

    .line 5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 6
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v4, v2

    :goto_1
    move v2, v6

    move v3, v7

    goto :goto_2

    :cond_0
    sub-float v8, v6, v2

    .line 7
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v7, v3

    .line 8
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v8, v8, v10

    if-gez v8, :cond_1

    cmpl-float v8, v9, v10

    if-ltz v8, :cond_2

    :cond_1
    add-float v8, v6, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v10, v7, v3

    div-float/2addr v10, v9

    .line 9
    invoke-virtual {v4, v2, v3, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 10
    :cond_3
    iput-object v4, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 2
    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    .line 3
    array-length v2, v0

    .line 4
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    aget v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 7
    div-int/lit8 v4, v3, 0x2

    aget-wide v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 8

    .line 1
    invoke-static {p0, p3}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object p3

    .line 2
    iget-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {p3, v1, v2}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr p1, v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p2, v0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p1, p2

    .line 6
    :cond_0
    invoke-static {p3, p1, p1}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    const/4 p1, 0x0

    .line 7
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v0, p2, :cond_4

    .line 8
    aget v3, p3, v0

    add-int/lit8 v4, v0, 0x1

    .line 9
    aget v4, p3, v4

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 11
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    move v1, v3

    move v2, v4

    goto :goto_2

    :cond_1
    sub-float v5, v3, v1

    .line 12
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v6, v4, v2

    .line 13
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v5, v5, v7

    if-gez v5, :cond_2

    cmpl-float v5, v6, v7

    if-ltz v5, :cond_3

    :cond_2
    add-float v5, v3, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v7, v4, v2

    div-float/2addr v7, v6

    .line 14
    invoke-virtual {p1, v1, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return-object p1
.end method
