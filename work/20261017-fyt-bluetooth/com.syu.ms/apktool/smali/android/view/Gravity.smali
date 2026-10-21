.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 4

    and-int/lit8 v0, p0, 0x6

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 4
    iget p1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p4

    iput p1, p6, Landroid/graphics/Rect;->left:I

    .line 5
    iget p1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    .line 7
    iput v0, p6, Landroid/graphics/Rect;->left:I

    and-int/lit8 p1, p0, 0x8

    if-ne p1, v2, :cond_4

    .line 8
    iget p1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, p1, :cond_4

    .line 9
    iput p1, p6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    .line 11
    iput v0, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 p1, p0, 0x8

    if-ne p1, v2, :cond_4

    .line 12
    iget p1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, p1, :cond_4

    .line 13
    iput p1, p6, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 14
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, p1

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 15
    iput p1, p6, Landroid/graphics/Rect;->right:I

    and-int/lit8 p4, p0, 0x8

    if-ne p4, v2, :cond_4

    .line 16
    iget p4, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, p4, :cond_3

    .line 17
    iput p4, p6, Landroid/graphics/Rect;->left:I

    .line 18
    :cond_3
    iget p4, p3, Landroid/graphics/Rect;->right:I

    if-le p1, p4, :cond_4

    .line 19
    iput p4, p6, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_0
    and-int/lit8 p1, p0, 0x60

    const/16 p4, 0x80

    if-eqz p1, :cond_7

    const/16 v0, 0x20

    if-eq p1, v0, :cond_6

    const/16 v0, 0x40

    if-eq p1, v0, :cond_5

    .line 20
    iget p0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p5

    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 21
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p5

    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 22
    :cond_5
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 23
    iput p1, p6, Landroid/graphics/Rect;->top:I

    and-int/2addr p0, p4

    if-ne p0, p4, :cond_9

    .line 24
    iget p0, p3, Landroid/graphics/Rect;->top:I

    if-ge p1, p0, :cond_9

    .line 25
    iput p0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 26
    :cond_6
    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    .line 27
    iput p1, p6, Landroid/graphics/Rect;->bottom:I

    and-int/2addr p0, p4

    if-ne p0, p4, :cond_9

    .line 28
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    if-le p1, p0, :cond_9

    .line 29
    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 30
    :cond_7
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    div-int/2addr v0, v1

    add-int/2addr p1, v0

    add-int/2addr p1, p5

    iput p1, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    .line 31
    iput p2, p6, Landroid/graphics/Rect;->bottom:I

    and-int/2addr p0, p4

    if-ne p0, p4, :cond_9

    .line 32
    iget p0, p3, Landroid/graphics/Rect;->top:I

    if-ge p1, p0, :cond_8

    .line 33
    iput p0, p6, Landroid/graphics/Rect;->top:I

    .line 34
    :cond_8
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    if-le p2, p0, :cond_9

    .line 35
    iput p0, p6, Landroid/graphics/Rect;->bottom:I

    :cond_9
    :goto_1
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 7

    .line 36
    invoke-static {p0, p7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 37
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    .line 2
    invoke-static {p0, p5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_0

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 2
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_5

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 3
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_2

    :goto_0
    sub-int/2addr v2, v0

    goto :goto_1

    .line 4
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v5, v3, v4

    if-le v0, v5, :cond_4

    .line 6
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 7
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 8
    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 9
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_2
    const/high16 v0, 0x1000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    .line 10
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge p0, v0, :cond_6

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 11
    :cond_6
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-le p0, p1, :cond_b

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 12
    :cond_7
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge p0, v0, :cond_8

    :goto_3
    sub-int v1, v0, p0

    goto :goto_4

    .line 13
    :cond_8
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-le p0, v0, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, p1

    if-le p0, v2, :cond_a

    .line 15
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 16
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 17
    :cond_a
    iget p0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iput p0, p2, Landroid/graphics/Rect;->left:I

    .line 18
    iget p0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v1

    iput p0, p2, Landroid/graphics/Rect;->right:I

    :cond_b
    :goto_5
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .line 19
    invoke-static {p0, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    .line 20
    invoke-static {p0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 3

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-lez v0, :cond_4

    const v0, 0x800003

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2

    const v0, -0x800004

    and-int/2addr p0, v0

    if-ne p1, v2, :cond_1

    :cond_0
    or-int/lit8 p0, p0, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    or-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_2
    const v0, 0x800005

    and-int v1, p0, v0

    if-ne v1, v0, :cond_3

    const v0, -0x800006

    and-int/2addr p0, v0

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_3
    :goto_1
    const p1, -0x800001

    and-int/2addr p0, p1

    :cond_4
    return p0
.end method

.method public static isHorizontal(I)Z
    .locals 1

    if-lez p0, :cond_0

    const v0, 0x800007

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVertical(I)Z
    .locals 0

    if-lez p0, :cond_0

    and-int/lit8 p0, p0, 0x70

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
