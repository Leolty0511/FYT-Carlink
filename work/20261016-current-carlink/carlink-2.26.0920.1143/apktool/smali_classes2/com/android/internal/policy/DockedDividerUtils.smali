.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    .line 4
    .line 5
    const/4 p3, 0x2

    .line 6
    const/4 p4, 0x1

    .line 7
    if-eq p1, p4, :cond_3

    .line 8
    .line 9
    if-eq p1, p3, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/2addr p0, p5

    .line 19
    iput p0, p2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/2addr p0, p5

    .line 23
    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    :goto_0
    if-eq p1, p4, :cond_4

    .line 32
    .line 33
    if-ne p1, p3, :cond_5

    .line 34
    .line 35
    :cond_4
    move v0, p4

    .line 36
    :cond_5
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    :goto_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    sub-int/2addr p3, p0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    sub-int p3, p2, p0

    .line 17
    .line 18
    :goto_1
    const/4 p0, 0x2

    .line 19
    invoke-static {p3, v0, p0, v0}, Landroid/app/m;->b(IIII)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    div-int/lit8 p4, p4, 0x2

    .line 24
    .line 25
    sub-int/2addr p0, p4

    .line 26
    return p0
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    :goto_0
    sub-int/2addr p0, p2

    .line 18
    return p0

    .line 19
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    return p0

    .line 25
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    return p0
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static invertDockSide(I)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v3

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    if-lt p1, v0, :cond_3

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    if-gt p1, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    if-gt p1, v0, :cond_3

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    :cond_3
    :goto_0
    return-void
.end method
