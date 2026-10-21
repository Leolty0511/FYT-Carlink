.class public Landroid/filterfw/geometry/Point;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 4
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    return-void
.end method


# virtual methods
.method public IsInUnitRange()Z
    .locals 3

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/filterfw/geometry/Point;->y:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public distanceTo(Landroid/filterfw/geometry/Point;)F
    .locals 0

    invoke-virtual {p1, p0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p1

    invoke-virtual {p1}, Landroid/filterfw/geometry/Point;->length()F

    move-result p1

    return p1
.end method

.method public length()F
    .locals 4

    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    float-to-double v0, v0

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public minus(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 1
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    sub-float/2addr v1, p1

    iget p1, p0, Landroid/filterfw/geometry/Point;->y:F

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 1

    .line 2
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/geometry/Point;->minus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public mult(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget p1, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public normalize()Landroid/filterfw/geometry/Point;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public plus(FF)Landroid/filterfw/geometry/Point;
    .locals 2

    .line 1
    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    add-float/2addr v1, p1

    iget p1, p0, Landroid/filterfw/geometry/Point;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;
    .locals 1

    .line 2
    iget v0, p1, Landroid/filterfw/geometry/Point;->x:F

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public rotated(F)Landroid/filterfw/geometry/Point;
    .locals 9

    .line 1
    new-instance v0, Landroid/filterfw/geometry/Point;

    .line 2
    .line 3
    float-to-double v1, p1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 5
    .line 6
    .line 7
    move-result-wide v3

    .line 8
    iget p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 9
    .line 10
    float-to-double v5, p1

    .line 11
    mul-double/2addr v3, v5

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget p1, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 17
    .line 18
    float-to-double v7, p1

    .line 19
    mul-double/2addr v5, v7

    .line 20
    sub-double/2addr v3, v5

    .line 21
    double-to-float p1, v3

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget v5, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 27
    .line 28
    float-to-double v5, v5

    .line 29
    mul-double/2addr v3, v5

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 35
    .line 36
    float-to-double v5, v5

    .line 37
    mul-double/2addr v1, v5

    .line 38
    add-double/2addr v1, v3

    .line 39
    double-to-float v1, v1

    .line 40
    invoke-direct {v0, p1, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public rotated90(I)Landroid/filterfw/geometry/Point;
    .locals 4

    .line 1
    iget v0, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 2
    .line 3
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, p1, :cond_0

    .line 7
    .line 8
    neg-float v0, v0

    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    move v3, v1

    .line 12
    move v1, v0

    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/filterfw/geometry/Point;

    .line 16
    .line 17
    invoke-direct {p1, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public scaledTo(F)Landroid/filterfw/geometry/Point;
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object p1

    return-object p1
.end method

.method public set(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 2
    .line 3
    iput p2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 4
    .line 5
    return-void
.end method

.method public times(F)Landroid/filterfw/geometry/Point;
    .locals 3

    new-instance v0, Landroid/filterfw/geometry/Point;

    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
