.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lab"
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field private static final D:F = 0.20689656f


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    aget v2, v2, v0

    .line 9
    .line 10
    div-float/2addr v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    aget v4, v4, v2

    .line 19
    .line 20
    div-float/2addr v3, v4

    .line 21
    const/4 v4, 0x2

    .line 22
    aget v5, p1, v4

    .line 23
    .line 24
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    aget v6, v6, v4

    .line 29
    .line 30
    div-float/2addr v5, v6

    .line 31
    const v6, 0x3c111aa7

    .line 32
    .line 33
    .line 34
    cmpl-float v7, v1, v6

    .line 35
    .line 36
    const-wide v8, 0x3fd5555555555555L    # 0.3333333333333333

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const v10, 0x3e0d3dcb

    .line 42
    .line 43
    .line 44
    const v11, 0x40f92f68

    .line 45
    .line 46
    .line 47
    if-lez v7, :cond_0

    .line 48
    .line 49
    float-to-double v12, v1

    .line 50
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    double-to-float v1, v12

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    mul-float/2addr v1, v11

    .line 57
    add-float/2addr v1, v10

    .line 58
    :goto_0
    cmpl-float v7, v3, v6

    .line 59
    .line 60
    if-lez v7, :cond_1

    .line 61
    .line 62
    float-to-double v12, v3

    .line 63
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v12

    .line 67
    double-to-float v3, v12

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    mul-float/2addr v3, v11

    .line 70
    add-float/2addr v3, v10

    .line 71
    :goto_1
    cmpl-float v6, v5, v6

    .line 72
    .line 73
    if-lez v6, :cond_2

    .line 74
    .line 75
    float-to-double v5, v5

    .line 76
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    double-to-float v5, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    mul-float/2addr v5, v11

    .line 83
    add-float/2addr v5, v10

    .line 84
    :goto_2
    const/high16 v6, 0x42e80000    # 116.0f

    .line 85
    .line 86
    mul-float/2addr v6, v3

    .line 87
    const/high16 v7, 0x41800000    # 16.0f

    .line 88
    .line 89
    sub-float/2addr v6, v7

    .line 90
    const/high16 v7, 0x43fa0000    # 500.0f

    .line 91
    .line 92
    sub-float/2addr v1, v3

    .line 93
    mul-float/2addr v1, v7

    .line 94
    const/high16 v7, 0x43480000    # 200.0f

    .line 95
    .line 96
    sub-float/2addr v3, v5

    .line 97
    mul-float/2addr v3, v7

    .line 98
    const/4 v5, 0x0

    .line 99
    const/high16 v7, 0x42c80000    # 100.0f

    .line 100
    .line 101
    invoke-static {v6, v5, v7}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    aput v5, p1, v0

    .line 106
    .line 107
    const/high16 v0, -0x3d000000    # -128.0f

    .line 108
    .line 109
    const/high16 v5, 0x43000000    # 128.0f

    .line 110
    .line 111
    invoke-static {v1, v0, v5}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    aput v1, p1, v2

    .line 116
    .line 117
    invoke-static {v3, v0, v5}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    aput v0, p1, v4

    .line 122
    .line 123
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43000000    # 128.0f

    :goto_0
    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x3d000000    # -128.0f

    :goto_0
    return p1
.end method

.method public isWideGamut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/high16 v3, 0x42c80000    # 100.0f

    .line 6
    .line 7
    invoke-static {v1, v2, v3}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aput v1, p1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aget v2, p1, v1

    .line 15
    .line 16
    const/high16 v3, -0x3d000000    # -128.0f

    .line 17
    .line 18
    const/high16 v4, 0x43000000    # 128.0f

    .line 19
    .line 20
    invoke-static {v2, v3, v4}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aput v2, p1, v1

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    aget v5, p1, v2

    .line 28
    .line 29
    invoke-static {v5, v3, v4}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    aput v3, p1, v2

    .line 34
    .line 35
    aget v4, p1, v0

    .line 36
    .line 37
    const/high16 v5, 0x41800000    # 16.0f

    .line 38
    .line 39
    add-float/2addr v4, v5

    .line 40
    const/high16 v5, 0x42e80000    # 116.0f

    .line 41
    .line 42
    div-float/2addr v4, v5

    .line 43
    aget v5, p1, v1

    .line 44
    .line 45
    const v6, 0x3b03126f    # 0.002f

    .line 46
    .line 47
    .line 48
    mul-float/2addr v5, v6

    .line 49
    add-float/2addr v5, v4

    .line 50
    const v6, 0x3ba3d70a    # 0.005f

    .line 51
    .line 52
    .line 53
    mul-float/2addr v3, v6

    .line 54
    sub-float v3, v4, v3

    .line 55
    .line 56
    const v6, 0x3e53dcb1

    .line 57
    .line 58
    .line 59
    cmpl-float v7, v5, v6

    .line 60
    .line 61
    const v8, 0x3e0d3dcb

    .line 62
    .line 63
    .line 64
    const v9, 0x3e038027

    .line 65
    .line 66
    .line 67
    if-lez v7, :cond_0

    .line 68
    .line 69
    mul-float v7, v5, v5

    .line 70
    .line 71
    mul-float/2addr v7, v5

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sub-float/2addr v5, v8

    .line 74
    mul-float v7, v5, v9

    .line 75
    .line 76
    :goto_0
    cmpl-float v5, v4, v6

    .line 77
    .line 78
    if-lez v5, :cond_1

    .line 79
    .line 80
    mul-float v5, v4, v4

    .line 81
    .line 82
    mul-float/2addr v5, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    sub-float/2addr v4, v8

    .line 85
    mul-float v5, v4, v9

    .line 86
    .line 87
    :goto_1
    cmpl-float v4, v3, v6

    .line 88
    .line 89
    if-lez v4, :cond_2

    .line 90
    .line 91
    mul-float v4, v3, v3

    .line 92
    .line 93
    mul-float/2addr v4, v3

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    sub-float/2addr v3, v8

    .line 96
    mul-float v4, v3, v9

    .line 97
    .line 98
    :goto_2
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    aget v3, v3, v0

    .line 103
    .line 104
    mul-float/2addr v7, v3

    .line 105
    aput v7, p1, v0

    .line 106
    .line 107
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    aget v0, v0, v1

    .line 112
    .line 113
    mul-float/2addr v5, v0

    .line 114
    aput v5, p1, v1

    .line 115
    .line 116
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    aget v0, v0, v2

    .line 121
    .line 122
    mul-float/2addr v4, v0

    .line 123
    aput v4, p1, v2

    .line 124
    .line 125
    return-object p1
.end method
