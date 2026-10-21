.class public Landroid/graphics/drawable/shapes/OvalShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/graphics/drawable/shapes/OvalShape;
    .locals 1

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/OvalShape;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->clone()Landroid/graphics/drawable/shapes/OvalShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->clone()Landroid/graphics/drawable/shapes/OvalShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/OvalShape;->clone()Landroid/graphics/drawable/shapes/OvalShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RectShape;->rect()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    float-to-double v1, v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    double-to-int v1, v1

    .line 13
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    float-to-double v2, v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    double-to-int v2, v2

    .line 21
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 22
    .line 23
    float-to-double v3, v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    double-to-int v3, v3

    .line 29
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 30
    .line 31
    float-to-double v4, v0

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    double-to-int v0, v4

    .line 37
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
