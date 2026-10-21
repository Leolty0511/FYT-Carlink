.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 9
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 5
    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/graphics/ColorMatrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/graphics/ColorMatrix;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 10
    .line 11
    move v0, v1

    .line 12
    :goto_0
    const/16 v2, 0x14

    .line 13
    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    aget v2, p1, v0

    .line 17
    .line 18
    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 19
    .line 20
    aget v3, v3, v0

    .line 21
    .line 22
    cmpl-float v2, v2, v3

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public final getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    aput v2, v0, v1

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    aput v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput v2, v0, v1

    .line 22
    .line 23
    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public set([F)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 10

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    if-ne p2, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    new-array v1, v0, [F

    .line 12
    .line 13
    :goto_1
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 14
    .line 15
    iget-object p2, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    :goto_2
    if-ge v3, v0, :cond_3

    .line 21
    .line 22
    move v5, v2

    .line 23
    :goto_3
    const/4 v6, 0x4

    .line 24
    if-ge v5, v6, :cond_2

    .line 25
    .line 26
    add-int/lit8 v6, v4, 0x1

    .line 27
    .line 28
    add-int/lit8 v7, v3, 0x0

    .line 29
    .line 30
    aget v7, p1, v7

    .line 31
    .line 32
    add-int/lit8 v8, v5, 0x0

    .line 33
    .line 34
    aget v8, p2, v8

    .line 35
    .line 36
    mul-float/2addr v7, v8

    .line 37
    add-int/lit8 v8, v3, 0x1

    .line 38
    .line 39
    aget v8, p1, v8

    .line 40
    .line 41
    add-int/lit8 v9, v5, 0x5

    .line 42
    .line 43
    aget v9, p2, v9

    .line 44
    .line 45
    mul-float/2addr v8, v9

    .line 46
    add-float/2addr v8, v7

    .line 47
    add-int/lit8 v7, v3, 0x2

    .line 48
    .line 49
    aget v7, p1, v7

    .line 50
    .line 51
    add-int/lit8 v9, v5, 0xa

    .line 52
    .line 53
    aget v9, p2, v9

    .line 54
    .line 55
    mul-float/2addr v7, v9

    .line 56
    add-float/2addr v7, v8

    .line 57
    add-int/lit8 v8, v3, 0x3

    .line 58
    .line 59
    aget v8, p1, v8

    .line 60
    .line 61
    add-int/lit8 v9, v5, 0xf

    .line 62
    .line 63
    aget v9, p2, v9

    .line 64
    .line 65
    mul-float/2addr v8, v9

    .line 66
    add-float/2addr v8, v7

    .line 67
    aput v8, v1, v4

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    move v4, v6

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 74
    .line 75
    add-int/lit8 v7, v3, 0x0

    .line 76
    .line 77
    aget v7, p1, v7

    .line 78
    .line 79
    aget v6, p2, v6

    .line 80
    .line 81
    mul-float/2addr v7, v6

    .line 82
    add-int/lit8 v6, v3, 0x1

    .line 83
    .line 84
    aget v6, p1, v6

    .line 85
    .line 86
    const/16 v8, 0x9

    .line 87
    .line 88
    aget v8, p2, v8

    .line 89
    .line 90
    mul-float/2addr v6, v8

    .line 91
    add-float/2addr v6, v7

    .line 92
    add-int/lit8 v7, v3, 0x2

    .line 93
    .line 94
    aget v7, p1, v7

    .line 95
    .line 96
    const/16 v8, 0xe

    .line 97
    .line 98
    aget v8, p2, v8

    .line 99
    .line 100
    mul-float/2addr v7, v8

    .line 101
    add-float/2addr v7, v6

    .line 102
    add-int/lit8 v6, v3, 0x3

    .line 103
    .line 104
    aget v6, p1, v6

    .line 105
    .line 106
    const/16 v8, 0x13

    .line 107
    .line 108
    aget v8, p2, v8

    .line 109
    .line 110
    mul-float/2addr v6, v8

    .line 111
    add-float/2addr v6, v7

    .line 112
    add-int/lit8 v7, v3, 0x4

    .line 113
    .line 114
    aget v7, p1, v7

    .line 115
    .line 116
    add-float/2addr v6, v7

    .line 117
    aput v6, v1, v4

    .line 118
    .line 119
    add-int/lit8 v3, v3, 0x5

    .line 120
    .line 121
    move v4, v5

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 124
    .line 125
    if-eq v1, p1, :cond_4

    .line 126
    .line 127
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 128
    .line 129
    .line 130
    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const v2, 0x3e991687    # 0.299f

    .line 8
    .line 9
    .line 10
    aput v2, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const v2, 0x3f1645a2    # 0.587f

    .line 14
    .line 15
    .line 16
    aput v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const v2, 0x3de978d5    # 0.114f

    .line 20
    .line 21
    .line 22
    aput v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    const v2, -0x41d335d2    # -0.16874f

    .line 26
    .line 27
    .line 28
    aput v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    const v2, -0x41566517    # -0.33126f

    .line 32
    .line 33
    .line 34
    aput v2, v0, v1

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    const/high16 v2, 0x3f000000    # 0.5f

    .line 38
    .line 39
    aput v2, v0, v1

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    aput v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0xb

    .line 46
    .line 47
    const v2, -0x4129a177    # -0.41869f

    .line 48
    .line 49
    .line 50
    aput v2, v0, v1

    .line 51
    .line 52
    const/16 v1, 0xc

    .line 53
    .line 54
    const v2, -0x42597a25    # -0.08131f

    .line 55
    .line 56
    .line 57
    aput v2, v0, v1

    .line 58
    .line 59
    return-void
.end method

.method public setRotate(IF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p2

    .line 5
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    mul-double/2addr v0, v2

    .line 11
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    div-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-float p2, v2

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float v0, v0

    .line 27
    const/16 v1, 0xc

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eq p1, v5, :cond_1

    .line 36
    .line 37
    if-ne p1, v4, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 40
    .line 41
    aput p2, p1, v2

    .line 42
    .line 43
    aput p2, p1, v3

    .line 44
    .line 45
    aput v0, p1, v5

    .line 46
    .line 47
    const/4 p2, 0x5

    .line 48
    neg-float v0, v0

    .line 49
    aput v0, p1, p2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 59
    .line 60
    aput p2, p1, v1

    .line 61
    .line 62
    aput p2, p1, v3

    .line 63
    .line 64
    neg-float p2, v0

    .line 65
    aput p2, p1, v4

    .line 66
    .line 67
    const/16 p2, 0xa

    .line 68
    .line 69
    aput v0, p1, p2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 73
    .line 74
    aput p2, p1, v1

    .line 75
    .line 76
    aput p2, p1, v2

    .line 77
    .line 78
    const/4 p2, 0x7

    .line 79
    aput v0, p1, p2

    .line 80
    .line 81
    const/16 p2, 0xb

    .line 82
    .line 83
    neg-float v0, v0

    .line 84
    aput v0, p1, p2

    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public setSaturation(F)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float/2addr v1, p1

    .line 9
    const v2, 0x3e5a1cac    # 0.213f

    .line 10
    .line 11
    .line 12
    mul-float/2addr v2, v1

    .line 13
    const v3, 0x3f370a3d    # 0.715f

    .line 14
    .line 15
    .line 16
    mul-float/2addr v3, v1

    .line 17
    const v4, 0x3d9374bc    # 0.072f

    .line 18
    .line 19
    .line 20
    mul-float/2addr v1, v4

    .line 21
    const/4 v4, 0x0

    .line 22
    add-float v5, v2, p1

    .line 23
    .line 24
    aput v5, v0, v4

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aput v3, v0, v4

    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    aput v1, v0, v4

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    aput v2, v0, v4

    .line 34
    .line 35
    const/4 v4, 0x6

    .line 36
    add-float v5, v3, p1

    .line 37
    .line 38
    aput v5, v0, v4

    .line 39
    .line 40
    const/4 v4, 0x7

    .line 41
    aput v1, v0, v4

    .line 42
    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    aput v2, v0, v4

    .line 46
    .line 47
    const/16 v2, 0xb

    .line 48
    .line 49
    aput v3, v0, v2

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    add-float/2addr v1, p1

    .line 54
    aput v1, v0, v2

    .line 55
    .line 56
    return-void
.end method

.method public setScale(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    :goto_0
    if-lez v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    aput p1, v0, v1

    .line 15
    .line 16
    const/4 p1, 0x6

    .line 17
    aput p2, v0, p1

    .line 18
    .line 19
    const/16 p1, 0xc

    .line 20
    .line 21
    aput p3, v0, p1

    .line 22
    .line 23
    const/16 p1, 0x12

    .line 24
    .line 25
    aput p4, v0, p1

    .line 26
    .line 27
    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const v2, 0x3fb374bc    # 1.402f

    .line 8
    .line 9
    .line 10
    aput v2, v0, v1

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    const v3, -0x414fcce2    # -0.34414f

    .line 19
    .line 20
    .line 21
    aput v3, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    const v3, -0x40c92e1f    # -0.71414f

    .line 25
    .line 26
    .line 27
    aput v3, v0, v1

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    const/16 v1, 0xb

    .line 34
    .line 35
    const v2, 0x3fe2d0e5    # 1.772f

    .line 36
    .line 37
    .line 38
    aput v2, v0, v1

    .line 39
    .line 40
    const/16 v1, 0xc

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    aput v2, v0, v1

    .line 44
    .line 45
    return-void
.end method
