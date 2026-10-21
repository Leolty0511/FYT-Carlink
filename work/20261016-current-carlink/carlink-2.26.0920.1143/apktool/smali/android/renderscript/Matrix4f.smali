.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 3
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    .line 6
    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method private computeCofactor(II)F
    .locals 15

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    rem-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    rem-int/lit8 v1, v1, 0x4

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x3

    .line 10
    .line 11
    rem-int/lit8 v2, v2, 0x4

    .line 12
    .line 13
    add-int/lit8 v3, p2, 0x1

    .line 14
    .line 15
    rem-int/lit8 v3, v3, 0x4

    .line 16
    .line 17
    add-int/lit8 v4, p2, 0x2

    .line 18
    .line 19
    rem-int/lit8 v4, v4, 0x4

    .line 20
    .line 21
    add-int/lit8 v5, p2, 0x3

    .line 22
    .line 23
    rem-int/lit8 v5, v5, 0x4

    .line 24
    .line 25
    move-object v6, p0

    .line 26
    iget-object v7, v6, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 27
    .line 28
    mul-int/lit8 v3, v3, 0x4

    .line 29
    .line 30
    add-int v8, v0, v3

    .line 31
    .line 32
    aget v8, v7, v8

    .line 33
    .line 34
    mul-int/lit8 v4, v4, 0x4

    .line 35
    .line 36
    add-int v9, v1, v4

    .line 37
    .line 38
    aget v9, v7, v9

    .line 39
    .line 40
    mul-int/lit8 v5, v5, 0x4

    .line 41
    .line 42
    add-int v10, v2, v5

    .line 43
    .line 44
    aget v10, v7, v10

    .line 45
    .line 46
    mul-float v11, v9, v10

    .line 47
    .line 48
    add-int v12, v1, v5

    .line 49
    .line 50
    aget v12, v7, v12

    .line 51
    .line 52
    add-int v13, v2, v4

    .line 53
    .line 54
    aget v13, v7, v13

    .line 55
    .line 56
    mul-float v14, v12, v13

    .line 57
    .line 58
    sub-float/2addr v11, v14

    .line 59
    mul-float/2addr v11, v8

    .line 60
    add-int/2addr v4, v0

    .line 61
    aget v4, v7, v4

    .line 62
    .line 63
    add-int/2addr v1, v3

    .line 64
    aget v1, v7, v1

    .line 65
    .line 66
    mul-float/2addr v10, v1

    .line 67
    add-int/2addr v2, v3

    .line 68
    aget v2, v7, v2

    .line 69
    .line 70
    mul-float/2addr v12, v2

    .line 71
    sub-float/2addr v10, v12

    .line 72
    mul-float/2addr v10, v4

    .line 73
    sub-float/2addr v11, v10

    .line 74
    add-int/2addr v0, v5

    .line 75
    aget v0, v7, v0

    .line 76
    .line 77
    mul-float/2addr v1, v13

    .line 78
    mul-float/2addr v9, v2

    .line 79
    sub-float/2addr v1, v9

    .line 80
    mul-float/2addr v1, v0

    .line 81
    add-float/2addr v1, v11

    .line 82
    add-int v0, p1, p2

    .line 83
    .line 84
    and-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    neg-float v1, v1

    .line 89
    :cond_0
    return v1
.end method


# virtual methods
.method public get(II)F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 9

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x4

    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    move v4, v1

    .line 12
    :goto_1
    if-ge v4, v3, :cond_0

    .line 13
    .line 14
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 15
    .line 16
    mul-int/lit8 v6, v2, 0x4

    .line 17
    .line 18
    add-int/2addr v6, v4

    .line 19
    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    aput v7, v5, v6

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 32
    .line 33
    aget v4, v2, v1

    .line 34
    .line 35
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 36
    .line 37
    aget v6, v5, v1

    .line 38
    .line 39
    mul-float/2addr v4, v6

    .line 40
    aget v3, v2, v3

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    aget v7, v5, v6

    .line 44
    .line 45
    mul-float/2addr v3, v7

    .line 46
    add-float/2addr v3, v4

    .line 47
    const/16 v4, 0x8

    .line 48
    .line 49
    aget v4, v2, v4

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    aget v7, v5, v7

    .line 53
    .line 54
    mul-float/2addr v4, v7

    .line 55
    add-float/2addr v4, v3

    .line 56
    const/16 v3, 0xc

    .line 57
    .line 58
    aget v2, v2, v3

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    aget v3, v5, v3

    .line 62
    .line 63
    mul-float/2addr v2, v3

    .line 64
    add-float/2addr v2, v4

    .line 65
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-double v3, v3

    .line 70
    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    cmpg-double v3, v3, v7

    .line 76
    .line 77
    if-gez v3, :cond_2

    .line 78
    .line 79
    return v1

    .line 80
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    .line 82
    div-float/2addr v3, v2

    .line 83
    :goto_2
    const/16 v2, 0x10

    .line 84
    .line 85
    if-ge v1, v2, :cond_3

    .line 86
    .line 87
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 88
    .line 89
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 90
    .line 91
    aget v4, v4, v1

    .line 92
    .line 93
    mul-float/2addr v4, v3

    .line 94
    aput v4, v2, v1

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    return v6
.end method

.method public inverseTranspose()Z
    .locals 8

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x4

    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    move v4, v1

    .line 12
    :goto_1
    if-ge v4, v3, :cond_0

    .line 13
    .line 14
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 15
    .line 16
    mul-int/lit8 v6, v4, 0x4

    .line 17
    .line 18
    add-int/2addr v6, v2

    .line 19
    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    aput v7, v5, v6

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 32
    .line 33
    aget v4, v2, v1

    .line 34
    .line 35
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 36
    .line 37
    aget v6, v5, v1

    .line 38
    .line 39
    mul-float/2addr v4, v6

    .line 40
    aget v6, v2, v3

    .line 41
    .line 42
    aget v3, v5, v3

    .line 43
    .line 44
    mul-float/2addr v6, v3

    .line 45
    add-float/2addr v6, v4

    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    aget v4, v2, v3

    .line 49
    .line 50
    aget v3, v5, v3

    .line 51
    .line 52
    mul-float/2addr v4, v3

    .line 53
    add-float/2addr v4, v6

    .line 54
    const/16 v3, 0xc

    .line 55
    .line 56
    aget v2, v2, v3

    .line 57
    .line 58
    aget v3, v5, v3

    .line 59
    .line 60
    mul-float/2addr v2, v3

    .line 61
    add-float/2addr v2, v4

    .line 62
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    float-to-double v3, v3

    .line 67
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmpg-double v3, v3, v5

    .line 73
    .line 74
    if-gez v3, :cond_2

    .line 75
    .line 76
    return v1

    .line 77
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    .line 79
    div-float/2addr v3, v2

    .line 80
    :goto_2
    const/16 v2, 0x10

    .line 81
    .line 82
    if-ge v1, v2, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 85
    .line 86
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 87
    .line 88
    aget v4, v4, v1

    .line 89
    .line 90
    mul-float/2addr v4, v3

    .line 91
    aput v4, v2, v1

    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v0, 0x1

    .line 97
    return v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 5

    .line 2
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object p1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 3
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    aget v1, p1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 7
    aget v1, p1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 8
    aget v1, p1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v1, 0x7

    .line 9
    aput v2, v0, v1

    .line 10
    aget v3, p1, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v3, 0x9

    .line 11
    aget v1, p1, v1

    aput v1, v0, v3

    const/16 v1, 0xa

    .line 12
    aget p1, p1, v4

    aput p1, v0, v1

    const/16 p1, 0xb

    .line 13
    aput v2, v0, p1

    const/16 p1, 0xc

    .line 14
    aput v2, v0, p1

    const/16 p1, 0xd

    .line 15
    aput v2, v0, p1

    const/16 p1, 0xe

    .line 16
    aput v2, v0, p1

    const/16 p1, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    aput v1, v0, p1

    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 5
    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    mul-float/2addr v1, p5

    .line 9
    sub-float v2, p2, p1

    .line 10
    .line 11
    div-float v3, v1, v2

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput v3, v0, v4

    .line 15
    .line 16
    sub-float v3, p4, p3

    .line 17
    .line 18
    div-float/2addr v1, v3

    .line 19
    const/4 v4, 0x5

    .line 20
    aput v1, v0, v4

    .line 21
    .line 22
    add-float/2addr p2, p1

    .line 23
    div-float/2addr p2, v2

    .line 24
    const/16 p1, 0x8

    .line 25
    .line 26
    aput p2, v0, p1

    .line 27
    .line 28
    add-float/2addr p4, p3

    .line 29
    div-float/2addr p4, v3

    .line 30
    const/16 p1, 0x9

    .line 31
    .line 32
    aput p4, v0, p1

    .line 33
    .line 34
    add-float p1, p6, p5

    .line 35
    .line 36
    neg-float p1, p1

    .line 37
    sub-float p2, p6, p5

    .line 38
    .line 39
    div-float/2addr p1, p2

    .line 40
    const/16 p3, 0xa

    .line 41
    .line 42
    aput p1, v0, p3

    .line 43
    .line 44
    const/16 p1, 0xb

    .line 45
    .line 46
    const/high16 p3, -0x40800000    # -1.0f

    .line 47
    .line 48
    aput p3, v0, p1

    .line 49
    .line 50
    const/high16 p1, -0x40000000    # -2.0f

    .line 51
    .line 52
    mul-float/2addr p6, p1

    .line 53
    mul-float/2addr p6, p5

    .line 54
    div-float/2addr p6, p2

    .line 55
    const/16 p1, 0xe

    .line 56
    .line 57
    aput p6, v0, p1

    .line 58
    .line 59
    const/16 p1, 0xf

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    aput p2, v0, p1

    .line 63
    .line 64
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

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
    aput v3, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    aput v3, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    aput v3, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    aput v3, v0, v1

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    aput v3, v0, v1

    .line 33
    .line 34
    const/16 v1, 0x9

    .line 35
    .line 36
    aput v3, v0, v1

    .line 37
    .line 38
    const/16 v1, 0xa

    .line 39
    .line 40
    aput v2, v0, v1

    .line 41
    .line 42
    const/16 v1, 0xb

    .line 43
    .line 44
    aput v3, v0, v1

    .line 45
    .line 46
    const/16 v1, 0xc

    .line 47
    .line 48
    aput v3, v0, v1

    .line 49
    .line 50
    const/16 v1, 0xd

    .line 51
    .line 52
    aput v3, v0, v1

    .line 53
    .line 54
    const/16 v1, 0xe

    .line 55
    .line 56
    aput v3, v0, v1

    .line 57
    .line 58
    const/16 v1, 0xf

    .line 59
    .line 60
    aput v2, v0, v1

    .line 61
    .line 62
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v7, v0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    :goto_1
    const/4 v8, 0x3

    .line 12
    const/4 v9, 0x2

    .line 13
    const/4 v10, 0x1

    .line 14
    if-ge v7, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v1, v7}, Landroid/renderscript/Matrix4f;->get(II)F

    .line 17
    .line 18
    .line 19
    move-result v11

    .line 20
    invoke-virtual {p1, v7, v0}, Landroid/renderscript/Matrix4f;->get(II)F

    .line 21
    .line 22
    .line 23
    move-result v12

    .line 24
    mul-float/2addr v12, v11

    .line 25
    add-float/2addr v3, v12

    .line 26
    invoke-virtual {p1, v7, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    .line 27
    .line 28
    .line 29
    move-result v10

    .line 30
    mul-float/2addr v10, v11

    .line 31
    add-float/2addr v4, v10

    .line 32
    invoke-virtual {p1, v7, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    mul-float/2addr v9, v11

    .line 37
    add-float/2addr v5, v9

    .line 38
    invoke-virtual {p1, v7, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    mul-float/2addr v8, v11

    .line 43
    add-float/2addr v6, v8

    .line 44
    add-int/lit8 v7, v7, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v10, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v9, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v8, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 5
    .line 6
    sub-float v1, p2, p1

    .line 7
    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float v3, v2, v1

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput v3, v0, v4

    .line 14
    .line 15
    sub-float v3, p4, p3

    .line 16
    .line 17
    div-float/2addr v2, v3

    .line 18
    const/4 v4, 0x5

    .line 19
    aput v2, v0, v4

    .line 20
    .line 21
    sub-float v2, p6, p5

    .line 22
    .line 23
    const/high16 v4, -0x40000000    # -2.0f

    .line 24
    .line 25
    div-float/2addr v4, v2

    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    aput v4, v0, v5

    .line 29
    .line 30
    add-float/2addr p2, p1

    .line 31
    neg-float p1, p2

    .line 32
    div-float/2addr p1, v1

    .line 33
    const/16 p2, 0xc

    .line 34
    .line 35
    aput p1, v0, p2

    .line 36
    .line 37
    add-float/2addr p4, p3

    .line 38
    neg-float p1, p4

    .line 39
    div-float/2addr p1, v3

    .line 40
    const/16 p2, 0xd

    .line 41
    .line 42
    aput p1, v0, p2

    .line 43
    .line 44
    add-float/2addr p6, p5

    .line 45
    neg-float p1, p6

    .line 46
    div-float/2addr p1, v2

    .line 47
    const/16 p2, 0xe

    .line 48
    .line 49
    aput p1, v0, p2

    .line 50
    .line 51
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 7

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double/2addr v0, v2

    .line 14
    double-to-float p1, v0

    .line 15
    float-to-double v0, p1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    double-to-float p1, v0

    .line 21
    mul-float v4, p3, p1

    .line 22
    .line 23
    neg-float v3, v4

    .line 24
    mul-float v1, v3, p2

    .line 25
    .line 26
    mul-float v2, v4, p2

    .line 27
    .line 28
    move-object v0, p0

    .line 29
    move v5, p3

    .line 30
    move v6, p4

    .line 31
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 9

    .line 1
    new-instance v7, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v8, Landroid/renderscript/Matrix4f;

    .line 7
    .line 8
    invoke-direct {v8}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 9
    .line 10
    .line 11
    if-le p1, p2, :cond_0

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    int-to-float p2, p2

    .line 15
    div-float v2, p1, p2

    .line 16
    .line 17
    neg-float v1, v2

    .line 18
    const/high16 v3, -0x40800000    # -1.0f

    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    .line 24
    const/high16 v6, 0x42c80000    # 100.0f

    .line 25
    .line 26
    move-object v0, v7

    .line 27
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-float p2, p2

    .line 32
    int-to-float p1, p1

    .line 33
    div-float v4, p2, p1

    .line 34
    .line 35
    const/high16 v1, -0x40800000    # -1.0f

    .line 36
    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    neg-float v3, v4

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    const/high16 v6, 0x42c80000    # 100.0f

    .line 43
    .line 44
    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 46
    .line 47
    .line 48
    :goto_0
    const/high16 p1, 0x43340000    # 180.0f

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-virtual {v8, p1, p2, v0, p2}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 57
    .line 58
    .line 59
    const/high16 p1, -0x40000000    # -2.0f

    .line 60
    .line 61
    const/high16 v1, 0x40000000    # 2.0f

    .line 62
    .line 63
    invoke-virtual {v8, p1, v1, v0}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, p2, p2, v1}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v7}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    aput v2, v0, v1

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    aput v2, v0, v1

    .line 17
    .line 18
    const/16 v1, 0xd

    .line 19
    .line 20
    aput v2, v0, v1

    .line 21
    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    aput v2, v0, v1

    .line 25
    .line 26
    const/16 v1, 0xf

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    aput v2, v0, v1

    .line 31
    .line 32
    const v0, 0x3c8efa35

    .line 33
    .line 34
    .line 35
    mul-float/2addr p1, v0

    .line 36
    float-to-double v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    double-to-float p1, v3

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    mul-float v1, p2, p2

    .line 48
    .line 49
    mul-float v3, p3, p3

    .line 50
    .line 51
    add-float/2addr v3, v1

    .line 52
    mul-float v1, p4, p4

    .line 53
    .line 54
    add-float/2addr v1, v3

    .line 55
    float-to-double v3, v1

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    double-to-float v1, v3

    .line 61
    cmpl-float v3, v1, v2

    .line 62
    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    div-float v1, v2, v1

    .line 66
    .line 67
    mul-float/2addr p2, v1

    .line 68
    mul-float/2addr p3, v1

    .line 69
    mul-float/2addr p4, v1

    .line 70
    :cond_0
    sub-float/2addr v2, p1

    .line 71
    mul-float v1, p2, p3

    .line 72
    .line 73
    mul-float v3, p3, p4

    .line 74
    .line 75
    mul-float v4, p4, p2

    .line 76
    .line 77
    mul-float v5, p2, v0

    .line 78
    .line 79
    mul-float v6, p3, v0

    .line 80
    .line 81
    mul-float/2addr v0, p4

    .line 82
    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 83
    .line 84
    mul-float/2addr p2, p2

    .line 85
    mul-float/2addr p2, v2

    .line 86
    add-float/2addr p2, p1

    .line 87
    const/4 v8, 0x0

    .line 88
    aput p2, v7, v8

    .line 89
    .line 90
    mul-float/2addr v1, v2

    .line 91
    sub-float p2, v1, v0

    .line 92
    .line 93
    const/4 v8, 0x4

    .line 94
    aput p2, v7, v8

    .line 95
    .line 96
    mul-float/2addr v4, v2

    .line 97
    add-float p2, v4, v6

    .line 98
    .line 99
    const/16 v8, 0x8

    .line 100
    .line 101
    aput p2, v7, v8

    .line 102
    .line 103
    const/4 p2, 0x1

    .line 104
    add-float/2addr v1, v0

    .line 105
    aput v1, v7, p2

    .line 106
    .line 107
    mul-float/2addr p3, p3

    .line 108
    mul-float/2addr p3, v2

    .line 109
    add-float/2addr p3, p1

    .line 110
    const/4 p2, 0x5

    .line 111
    aput p3, v7, p2

    .line 112
    .line 113
    mul-float/2addr v3, v2

    .line 114
    sub-float p2, v3, v5

    .line 115
    .line 116
    const/16 p3, 0x9

    .line 117
    .line 118
    aput p2, v7, p3

    .line 119
    .line 120
    const/4 p2, 0x2

    .line 121
    sub-float/2addr v4, v6

    .line 122
    aput v4, v7, p2

    .line 123
    .line 124
    const/4 p2, 0x6

    .line 125
    add-float/2addr v3, v5

    .line 126
    aput v3, v7, p2

    .line 127
    .line 128
    mul-float/2addr p4, p4

    .line 129
    mul-float/2addr p4, v2

    .line 130
    add-float/2addr p4, p1

    .line 131
    const/16 p1, 0xa

    .line 132
    .line 133
    aput p4, v7, p1

    .line 134
    .line 135
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput p1, v0, v1

    .line 8
    .line 9
    const/4 p1, 0x5

    .line 10
    aput p2, v0, p1

    .line 11
    .line 12
    const/16 p1, 0xa

    .line 13
    .line 14
    aput p3, v0, p1

    .line 15
    .line 16
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    const/16 p1, 0xd

    .line 11
    .line 12
    aput p2, v0, p1

    .line 13
    .line 14
    const/16 p1, 0xe

    .line 15
    .line 16
    aput p3, v0, p1

    .line 17
    .line 18
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public set(IIF)V
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public transpose()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_1
    const/4 v3, 0x4

    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 12
    .line 13
    mul-int/lit8 v4, v0, 0x4

    .line 14
    .line 15
    add-int/2addr v4, v2

    .line 16
    aget v5, v3, v4

    .line 17
    .line 18
    mul-int/lit8 v6, v2, 0x4

    .line 19
    .line 20
    add-int/2addr v6, v0

    .line 21
    aget v7, v3, v6

    .line 22
    .line 23
    aput v7, v3, v4

    .line 24
    .line 25
    aput v5, v3, v6

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method
