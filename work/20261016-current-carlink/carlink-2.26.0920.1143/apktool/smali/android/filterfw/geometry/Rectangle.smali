.class public Landroid/filterfw/geometry/Rectangle;
.super Landroid/filterfw/geometry/Quad;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/filterfw/geometry/Quad;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    .line 2
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v1, Landroid/filterfw/geometry/Point;

    add-float/2addr p3, p1

    invoke-direct {v1, p3, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    add-float/2addr p2, p4

    invoke-direct {v2, p1, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance p1, Landroid/filterfw/geometry/Point;

    invoke-direct {p1, p3, p2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 3

    .line 3
    iget v0, p2, Landroid/filterfw/geometry/Point;->x:F

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget v2, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget v2, p2, Landroid/filterfw/geometry/Point;->x:F

    iget p2, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 6
    invoke-virtual {p1, v2, p2}, Landroid/filterfw/geometry/Point;->plus(FF)Landroid/filterfw/geometry/Point;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method private constructor <init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-void
.end method

.method public static fromCenterVerticalAxis(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Rectangle;
    .locals 4

    .line 1
    iget v0, p2, Landroid/filterfw/geometry/Point;->y:F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    invoke-virtual {p1, v0}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p1, v2}, Landroid/filterfw/geometry/Point;->rotated90(I)Landroid/filterfw/geometry/Point;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget p2, p2, Landroid/filterfw/geometry/Point;->x:F

    .line 16
    .line 17
    div-float/2addr p2, v1

    .line 18
    invoke-virtual {p1, p2}, Landroid/filterfw/geometry/Point;->scaledTo(F)Landroid/filterfw/geometry/Point;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Landroid/filterfw/geometry/Rectangle;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {p2, v1, v2, v3, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 57
    .line 58
    .line 59
    return-object p2
.end method

.method public static fromRotatedRect(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Rectangle;
    .locals 7

    .line 1
    new-instance v0, Landroid/filterfw/geometry/Point;

    .line 2
    .line 3
    iget v1, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 4
    .line 5
    iget v2, p1, Landroid/filterfw/geometry/Point;->x:F

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr v2, v3

    .line 10
    sub-float/2addr v1, v2

    .line 11
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 12
    .line 13
    iget v4, p1, Landroid/filterfw/geometry/Point;->y:F

    .line 14
    .line 15
    div-float/2addr v4, v3

    .line 16
    sub-float/2addr v2, v4

    .line 17
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/filterfw/geometry/Point;

    .line 21
    .line 22
    iget v2, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 23
    .line 24
    iget v4, p1, Landroid/filterfw/geometry/Point;->x:F

    .line 25
    .line 26
    div-float/2addr v4, v3

    .line 27
    add-float/2addr v4, v2

    .line 28
    iget v2, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 29
    .line 30
    iget v5, p1, Landroid/filterfw/geometry/Point;->y:F

    .line 31
    .line 32
    div-float/2addr v5, v3

    .line 33
    sub-float/2addr v2, v5

    .line 34
    invoke-direct {v1, v4, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/filterfw/geometry/Point;

    .line 38
    .line 39
    iget v4, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 40
    .line 41
    iget v5, p1, Landroid/filterfw/geometry/Point;->x:F

    .line 42
    .line 43
    div-float/2addr v5, v3

    .line 44
    sub-float/2addr v4, v5

    .line 45
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 46
    .line 47
    iget v6, p1, Landroid/filterfw/geometry/Point;->y:F

    .line 48
    .line 49
    div-float/2addr v6, v3

    .line 50
    add-float/2addr v6, v5

    .line 51
    invoke-direct {v2, v4, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/filterfw/geometry/Point;

    .line 55
    .line 56
    iget v5, p0, Landroid/filterfw/geometry/Point;->x:F

    .line 57
    .line 58
    iget v6, p1, Landroid/filterfw/geometry/Point;->x:F

    .line 59
    .line 60
    div-float/2addr v6, v3

    .line 61
    add-float/2addr v6, v5

    .line 62
    iget v5, p0, Landroid/filterfw/geometry/Point;->y:F

    .line 63
    .line 64
    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    .line 65
    .line 66
    div-float/2addr p1, v3

    .line 67
    add-float/2addr p1, v5

    .line 68
    invoke-direct {v4, v6, p1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/filterfw/geometry/Rectangle;

    .line 72
    .line 73
    invoke-virtual {v0, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v4, p0, p2}, Landroid/filterfw/geometry/Point;->rotatedAround(Landroid/filterfw/geometry/Point;F)Landroid/filterfw/geometry/Point;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {p1, v0, v1, v2, p0}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method


# virtual methods
.method public center()Landroid/filterfw/geometry/Point;
    .locals 2

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget-object v0, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/geometry/Point;->length()F

    move-result v0

    return v0
.end method

.method public bridge synthetic scaled(F)Landroid/filterfw/geometry/Quad;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/filterfw/geometry/Rectangle;->scaled(F)Landroid/filterfw/geometry/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scaled(FF)Landroid/filterfw/geometry/Quad;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/geometry/Rectangle;->scaled(FF)Landroid/filterfw/geometry/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public scaled(F)Landroid/filterfw/geometry/Rectangle;
    .locals 5

    .line 3
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method

.method public scaled(FF)Landroid/filterfw/geometry/Rectangle;
    .locals 5

    .line 4
    new-instance v0, Landroid/filterfw/geometry/Rectangle;

    iget-object v1, p0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v1, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v3, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v4, p1, p2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/filterfw/geometry/Rectangle;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    return-object v0
.end method
