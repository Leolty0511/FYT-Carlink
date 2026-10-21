.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 3
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    const/4 v1, 0x0

    .line 6
    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .locals 3

    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    aput v3, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    aput v3, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    aput v2, v0, v1

    .line 17
    .line 18
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v5, v0

    .line 8
    move v4, v3

    .line 9
    :goto_1
    const/4 v6, 0x1

    .line 10
    if-ge v5, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, v1, v5}, Landroid/renderscript/Matrix2f;->get(II)F

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    invoke-virtual {p1, v5, v0}, Landroid/renderscript/Matrix2f;->get(II)F

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    mul-float/2addr v8, v7

    .line 21
    add-float/2addr v3, v8

    .line 22
    invoke-virtual {p1, v5, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    mul-float/2addr v6, v7

    .line 27
    add-float/2addr v4, v6

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v6, v4}, Landroid/renderscript/Matrix2f;->set(IIF)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    .line 1
    const v0, 0x3c8efa35

    .line 2
    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    double-to-float p1, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput p1, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    neg-float v3, v0

    .line 23
    aput v3, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    aput v0, v1, v2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    aput p1, v1, v0

    .line 30
    .line 31
    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    aput p2, v0, p1

    .line 11
    .line 12
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix2f;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix2f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix2f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix2f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public set(IIF)V
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public transpose()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    aget v4, v0, v3

    .line 8
    .line 9
    aput v4, v0, v1

    .line 10
    .line 11
    aput v2, v0, v3

    .line 12
    .line 13
    return-void
.end method
