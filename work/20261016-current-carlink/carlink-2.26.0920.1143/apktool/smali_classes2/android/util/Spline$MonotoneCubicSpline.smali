.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    if-eqz p2, :cond_7

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    array-length v1, p2

    .line 10
    if-ne v0, v1, :cond_7

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x2

    .line 14
    if-lt v0, v1, :cond_7

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    add-int/lit8 v2, v0, -0x1

    .line 18
    .line 19
    new-array v3, v2, [F

    .line 20
    .line 21
    new-array v4, v0, [F

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    const/4 v7, 0x0

    .line 26
    if-ge v6, v2, :cond_1

    .line 27
    .line 28
    add-int/lit8 v8, v6, 0x1

    .line 29
    .line 30
    aget v9, p1, v8

    .line 31
    .line 32
    aget v10, p1, v6

    .line 33
    .line 34
    sub-float/2addr v9, v10

    .line 35
    cmpg-float v7, v9, v7

    .line 36
    .line 37
    if-lez v7, :cond_0

    .line 38
    .line 39
    aget v7, p2, v8

    .line 40
    .line 41
    aget v10, p2, v6

    .line 42
    .line 43
    sub-float/2addr v7, v10

    .line 44
    div-float/2addr v7, v9

    .line 45
    aput v7, v3, v6

    .line 46
    .line 47
    move v6, v8

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "The control points must all have strictly increasing X values."

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    aget v6, v3, v5

    .line 58
    .line 59
    aput v6, v4, v5

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    :goto_1
    if-ge v6, v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 v8, v6, -0x1

    .line 65
    .line 66
    aget v8, v3, v8

    .line 67
    .line 68
    aget v9, v3, v6

    .line 69
    .line 70
    add-float/2addr v8, v9

    .line 71
    const/high16 v9, 0x3f000000    # 0.5f

    .line 72
    .line 73
    mul-float/2addr v8, v9

    .line 74
    aput v8, v4, v6

    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sub-int/2addr v0, v1

    .line 80
    aget v0, v3, v0

    .line 81
    .line 82
    aput v0, v4, v2

    .line 83
    .line 84
    :goto_2
    if-ge v5, v2, :cond_6

    .line 85
    .line 86
    aget v0, v3, v5

    .line 87
    .line 88
    cmpl-float v1, v0, v7

    .line 89
    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    aput v7, v4, v5

    .line 93
    .line 94
    add-int/lit8 v0, v5, 0x1

    .line 95
    .line 96
    aput v7, v4, v0

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    aget v1, v4, v5

    .line 100
    .line 101
    div-float/2addr v1, v0

    .line 102
    add-int/lit8 v6, v5, 0x1

    .line 103
    .line 104
    aget v8, v4, v6

    .line 105
    .line 106
    div-float/2addr v8, v0

    .line 107
    cmpg-float v0, v1, v7

    .line 108
    .line 109
    if-ltz v0, :cond_5

    .line 110
    .line 111
    cmpg-float v0, v8, v7

    .line 112
    .line 113
    if-ltz v0, :cond_5

    .line 114
    .line 115
    float-to-double v0, v1

    .line 116
    float-to-double v8, v8

    .line 117
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    double-to-float v0, v0

    .line 122
    const/high16 v1, 0x40400000    # 3.0f

    .line 123
    .line 124
    cmpl-float v8, v0, v1

    .line 125
    .line 126
    if-lez v8, :cond_4

    .line 127
    .line 128
    div-float/2addr v1, v0

    .line 129
    aget v0, v4, v5

    .line 130
    .line 131
    mul-float/2addr v0, v1

    .line 132
    aput v0, v4, v5

    .line 133
    .line 134
    aget v0, v4, v6

    .line 135
    .line 136
    mul-float/2addr v0, v1

    .line 137
    aput v0, v4, v6

    .line 138
    .line 139
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string p2, "The control points must have monotonic Y values."

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :cond_6
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 151
    .line 152
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 153
    .line 154
    iput-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 155
    .line 156
    return-void

    .line 157
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string p2, "There must be at least two control points and the arrays must be of equal length."

    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1
.end method


# virtual methods
.method public interpolate(F)F
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget v3, v1, v2

    .line 15
    .line 16
    cmpg-float v3, p1, v3

    .line 17
    .line 18
    if-gtz v3, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 21
    .line 22
    aget p1, p1, v2

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    aget v1, v1, v0

    .line 28
    .line 29
    cmpl-float v1, p1, v1

    .line 30
    .line 31
    if-ltz v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 34
    .line 35
    aget p1, p1, v0

    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 39
    .line 40
    add-int/lit8 v1, v2, 0x1

    .line 41
    .line 42
    aget v3, v0, v1

    .line 43
    .line 44
    cmpl-float v4, p1, v3

    .line 45
    .line 46
    if-ltz v4, :cond_4

    .line 47
    .line 48
    cmpl-float v0, p1, v3

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 53
    .line 54
    aget p1, p1, v1

    .line 55
    .line 56
    return p1

    .line 57
    :cond_3
    move v2, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    aget v0, v0, v2

    .line 60
    .line 61
    sub-float/2addr v3, v0

    .line 62
    sub-float/2addr p1, v0

    .line 63
    div-float/2addr p1, v3

    .line 64
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 65
    .line 66
    aget v4, v0, v2

    .line 67
    .line 68
    const/high16 v5, 0x40000000    # 2.0f

    .line 69
    .line 70
    mul-float/2addr v5, p1

    .line 71
    const/high16 v6, 0x3f800000    # 1.0f

    .line 72
    .line 73
    add-float v7, v5, v6

    .line 74
    .line 75
    mul-float/2addr v7, v4

    .line 76
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 77
    .line 78
    aget v2, v4, v2

    .line 79
    .line 80
    mul-float/2addr v2, v3

    .line 81
    mul-float/2addr v2, p1

    .line 82
    add-float/2addr v2, v7

    .line 83
    sub-float v7, v6, p1

    .line 84
    .line 85
    mul-float/2addr v2, v7

    .line 86
    mul-float/2addr v2, v7

    .line 87
    aget v0, v0, v1

    .line 88
    .line 89
    const/high16 v7, 0x40400000    # 3.0f

    .line 90
    .line 91
    sub-float/2addr v7, v5

    .line 92
    mul-float/2addr v7, v0

    .line 93
    aget v0, v4, v1

    .line 94
    .line 95
    mul-float/2addr v3, v0

    .line 96
    sub-float v0, p1, v6

    .line 97
    .line 98
    mul-float/2addr v0, v3

    .line 99
    add-float/2addr v0, v7

    .line 100
    mul-float/2addr v0, p1

    .line 101
    mul-float/2addr v0, p1

    .line 102
    add-float/2addr v0, v2

    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MonotoneCubicSpline{["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    const-string v3, ", "

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string v4, "("

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 27
    .line 28
    aget v4, v4, v2

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 37
    .line 38
    aget v3, v3, v2

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, ": "

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 49
    .line 50
    aget v3, v3, v2

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ")"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "]}"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
