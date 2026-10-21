.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 3
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 4
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 5
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 6
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    div-float/2addr p4, p5

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p4, p1

    if-lez p2, :cond_0

    div-float/2addr p1, p4

    .line 7
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_0

    .line 8
    :cond_0
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    :goto_0
    return-void
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 3
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    .line 4
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 6
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v7, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 10
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 11
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 14
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 15
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 16
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 18
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 19
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 20
    aget v2, v1, v4

    aget v1, v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
