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
    .line 3
    .line 4
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 5
    .line 6
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 7
    .line 8
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 9
    .line 10
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 11
    .line 12
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    .line 13
    .line 14
    div-float/2addr p4, p5

    .line 15
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpl-float p2, p4, p1

    .line 18
    .line 19
    if-lez p2, :cond_0

    .line 20
    .line 21
    div-float/2addr p1, p4

    .line 22
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    .line 9
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 10
    .line 11
    neg-float v2, v2

    .line 12
    const/high16 v3, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr v2, v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput v2, v1, v4

    .line 17
    .line 18
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 19
    .line 20
    div-float/2addr v2, v3

    .line 21
    const/4 v5, 0x1

    .line 22
    aput v2, v1, v5

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Matrix;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 27
    .line 28
    .line 29
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 30
    .line 31
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 32
    .line 33
    .line 34
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 35
    .line 36
    iget v7, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    .line 37
    .line 38
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 42
    .line 43
    .line 44
    aget v6, v1, v4

    .line 45
    .line 46
    aget v7, v1, v5

    .line 47
    .line 48
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    .line 50
    .line 51
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 52
    .line 53
    neg-float v6, v6

    .line 54
    div-float/2addr v6, v3

    .line 55
    aput v6, v1, v4

    .line 56
    .line 57
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 58
    .line 59
    neg-float v6, v6

    .line 60
    div-float/2addr v6, v3

    .line 61
    aput v6, v1, v5

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    .line 65
    .line 66
    aget v6, v1, v4

    .line 67
    .line 68
    aget v7, v1, v5

    .line 69
    .line 70
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    .line 72
    .line 73
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 74
    .line 75
    div-float/2addr v6, v3

    .line 76
    aput v6, v1, v4

    .line 77
    .line 78
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 79
    .line 80
    neg-float v6, v6

    .line 81
    div-float/2addr v6, v3

    .line 82
    aput v6, v1, v5

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 85
    .line 86
    .line 87
    aget v6, v1, v4

    .line 88
    .line 89
    aget v7, v1, v5

    .line 90
    .line 91
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    .line 93
    .line 94
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 95
    .line 96
    div-float/2addr v6, v3

    .line 97
    aput v6, v1, v4

    .line 98
    .line 99
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 100
    .line 101
    div-float/2addr v6, v3

    .line 102
    aput v6, v1, v5

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 105
    .line 106
    .line 107
    aget v2, v1, v4

    .line 108
    .line 109
    aget v1, v1, v5

    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 115
    .line 116
    .line 117
    return-object v0
.end method
