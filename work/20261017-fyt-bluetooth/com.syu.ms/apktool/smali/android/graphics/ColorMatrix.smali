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

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final getArray()[F
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 2
    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0xc

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    .line 3
    aput v5, v0, v4

    aput v5, v0, v3

    aput v5, v0, v2

    aput v5, v0, v1

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set([F)V
    .locals 3

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 10

    const/16 v0, 0x14

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v0, [F

    .line 2
    :goto_1
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 3
    iget-object p2, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_3

    move v5, v2

    :goto_3
    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x0

    .line 4
    aget v7, p1, v7

    add-int/lit8 v8, v5, 0x0

    aget v8, p2, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    aget v8, p1, v8

    add-int/lit8 v9, v5, 0x5

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x2

    aget v8, p1, v8

    add-int/lit8 v9, v5, 0xa

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x3

    aget v8, p1, v8

    add-int/lit8 v9, v5, 0xf

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v3, 0x0

    .line 5
    aget v7, p1, v7

    aget v6, p2, v6

    mul-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    const/16 v8, 0x9

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, p1, v6

    const/16 v8, 0xe

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x3

    aget v6, p1, v6

    const/16 v8, 0x13

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x4

    aget v6, p1, v6

    add-float/2addr v7, v6

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x5

    move v4, v5

    goto :goto_2

    .line 6
    :cond_3
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v1, p1, :cond_4

    .line 7
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2    # 0.587f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5    # 0.114f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0x41d335d2    # -0.16874f

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517    # -0.33126f

    aput v2, v0, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 5
    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0x4129a177    # -0.41869f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25    # -0.08131f

    aput v2, v0, v1

    return-void
.end method

.method public setRotate(IF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p2, v0

    .line 2
    invoke-static {p2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 3
    invoke-static {p2}, Landroid/util/FloatMath;->sin(F)F

    move-result p2

    const/16 v1, 0xc

    const/4 v2, 0x6

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    if-ne p1, v4, :cond_0

    .line 4
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, p1, v2

    aput v0, p1, v3

    .line 5
    aput p2, p1, v5

    const/4 v0, 0x5

    neg-float p2, p2

    .line 6
    aput p2, p1, v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, p1, v1

    aput v0, p1, v3

    neg-float v0, p2

    .line 9
    aput v0, p1, v4

    const/16 v0, 0xa

    .line 10
    aput p2, p1, v0

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v0, p1, v1

    aput v0, p1, v2

    const/4 v0, 0x7

    .line 12
    aput p2, p1, v0

    const/16 v0, 0xb

    neg-float p2, p2

    .line 13
    aput p2, p1, v0

    :goto_0
    return-void
.end method

.method public setSaturation(F)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const v2, 0x3e5a1cac    # 0.213f

    mul-float/2addr v2, v1

    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v1

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v1, v4

    add-float v4, v2, p1

    const/4 v5, 0x0

    .line 3
    aput v4, v0, v5

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v4, 0x5

    .line 4
    aput v2, v0, v4

    add-float v4, v3, p1

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v4, 0x7

    aput v1, v0, v4

    const/16 v4, 0xa

    .line 5
    aput v2, v0, v4

    const/16 v2, 0xb

    aput v3, v0, v2

    add-float/2addr v1, p1

    const/16 p1, 0xc

    aput v1, v0, p1

    return-void
.end method

.method public setScale(FFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 2
    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    aput p1, v0, v1

    const/4 p1, 0x6

    .line 4
    aput p2, v0, p1

    const/16 p1, 0xc

    .line 5
    aput p3, v0, p1

    const/16 p1, 0x12

    .line 6
    aput p4, v0, p1

    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x2

    const v2, 0x3fb374bc    # 1.402f

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    aput v2, v0, v1

    const/4 v1, 0x6

    const v3, -0x414fcce2    # -0.34414f

    aput v3, v0, v1

    const/4 v1, 0x7

    const v3, -0x40c92e1f    # -0.71414f

    aput v3, v0, v1

    const/16 v1, 0xa

    .line 5
    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5    # 1.772f

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method
