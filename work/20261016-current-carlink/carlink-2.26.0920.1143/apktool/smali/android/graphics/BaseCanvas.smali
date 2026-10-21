.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAllowHwBitmapsInSwMode:Z

.field protected mDensity:I

.field protected mNativeCanvasWrapper:J

.field protected mScreenDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    .line 6
    .line 7
    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    .line 10
    .line 11
    return-void
.end method

.method public static final checkRange(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int/2addr p1, p2

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
.end method

.method private static native nDrawCircle(JFFFJ)V
.end method

.method private static native nDrawColor(JII)V
.end method

.method private static native nDrawLine(JFFFFJ)V
.end method

.method private static native nDrawLines(J[FIIJ)V
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native nDrawOval(JFFFFJ)V
.end method

.method private static native nDrawPaint(JJ)V
.end method

.method private static native nDrawPath(JJJ)V
.end method

.method private static native nDrawPoint(JFFJ)V
.end method

.method private static native nDrawPoints(J[FIIJ)V
.end method

.method private static native nDrawRect(JFFFFJ)V
.end method

.method private static native nDrawRegion(JJJ)V
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJJ)V
.end method

.method private static native nDrawText(J[CIIFFIJJ)V
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJJ)V
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_1
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroid/graphics/ComposeShader;

    iget-object v0, p1, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    .line 7
    iget-object p1, p1, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Shader;)V

    :cond_2
    return-void
.end method

.method private throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Software rendering doesn\'t support hardware bitmaps"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public drawARGB(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p8

    .line 1
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 3
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move-wide v1, v2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 4
    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    .line 5
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 6
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 3
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v5, v2

    iget v7, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v8, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v9, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 5
    invoke-static/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 7

    .line 6
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 7
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    move-wide v5, p2

    move-object v2, p1

    .line 9
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v16, v3

    if-nez v1, :cond_1

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    .line 16
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 17
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 18
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 19
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    .line 20
    :goto_1
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    int-to-float v8, v4

    int-to-float v9, v5

    int-to-float v10, v1

    int-to-float v11, v3

    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v1

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v1

    iget v1, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-wide v5, v6

    move-object/from16 v7, p1

    move/from16 v18, v1

    move/from16 v19, v3

    invoke-static/range {v5 .. v19}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 21
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 23
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v16, v3

    if-nez v1, :cond_1

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move v10, v1

    move v11, v3

    move v8, v4

    move v9, v8

    goto :goto_1

    .line 27
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 28
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 29
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 30
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move v11, v1

    move v8, v3

    move v10, v4

    move v9, v5

    .line 31
    :goto_1
    iget-wide v5, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v13, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v2, p1

    iget v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    move-object/from16 v7, p1

    move/from16 v18, v1

    move/from16 v19, v3

    invoke-static/range {v5 .. v19}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move/from16 v8, p6

    move-object/from16 v1, p9

    if-ltz v8, :cond_6

    if-ltz p7, :cond_5

    .line 32
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v8, :cond_4

    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int/2addr v2, p2

    move-object v3, p1

    .line 33
    array-length v4, v3

    if-ltz p2, :cond_3

    add-int v5, p2, v8

    if-gt v5, v4, :cond_3

    if-ltz v2, :cond_3

    add-int/2addr v2, v8

    if-gt v2, v4, :cond_3

    .line 34
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-eqz v8, :cond_2

    if-nez p7, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v11, v1

    move-wide v1, v4

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 37
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    :cond_2
    :goto_1
    return-void

    .line 38
    :cond_3
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 39
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "height must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v0, p4

    int-to-float v4, v0

    move v0, p5

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 42
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v7, p5

    .line 3
    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    move/from16 v9, p7

    .line 7
    .line 8
    move-object/from16 v1, p8

    .line 9
    .line 10
    or-int v2, p2, p3

    .line 11
    .line 12
    or-int/2addr v2, v7

    .line 13
    or-int/2addr v2, v9

    .line 14
    if-ltz v2, :cond_4

    .line 15
    .line 16
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_3

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 25
    .line 26
    add-int/lit8 v3, p3, 0x1

    .line 27
    .line 28
    mul-int/2addr v3, v2

    .line 29
    move-object/from16 v6, p4

    .line 30
    .line 31
    array-length v2, v6

    .line 32
    mul-int/lit8 v4, v3, 0x2

    .line 33
    .line 34
    invoke-static {v2, v7, v4}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 35
    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    array-length v2, v8

    .line 40
    invoke-static {v2, v9, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/16 v4, 0x0

    .line 53
    .line 54
    :goto_0
    move-wide v10, v4

    .line 55
    move-wide v1, v2

    .line 56
    move-object v3, p1

    .line 57
    move v4, p2

    .line 58
    move v5, p3

    .line 59
    move-object/from16 v6, p4

    .line 60
    .line 61
    move/from16 v7, p5

    .line 62
    .line 63
    move-object/from16 v8, p6

    .line 64
    .line 65
    move/from16 v9, p7

    .line 66
    .line 67
    invoke-static/range {v1 .. v11}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void

    .line 71
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    .line 1
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 5
    .line 6
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 7
    .line 8
    .line 9
    move-result-wide v5

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public drawColor(I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 7
    .line 8
    .line 9
    move-result-wide v6

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 5
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v16, v4

    .line 5
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v2, p1

    iget-wide v10, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v1

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    move/from16 v18, v1

    .line 7
    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 10
    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v16, v4

    .line 12
    iget-wide v6, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v8

    move-object/from16 v2, p1

    iget-wide v10, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/RectF;->right:F

    iget v15, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v19

    move/from16 v18, v1

    .line 14
    invoke-static/range {v6 .. v19}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 13
    .line 14
    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-wide v7, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    invoke-static/range {v7 .. v12}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 7
    .line 8
    .line 9
    move-result-wide v4

    .line 10
    move v2, p1

    .line 11
    move v3, p2

    .line 12
    invoke-static/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_1

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 2
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    .line 3
    aget v5, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public drawRGB(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    .line 5
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 6
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 8
    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p7

    .line 1
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 2
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 3
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move-wide v1, v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 4
    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 5
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 6
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p6

    or-int v1, v2, v3

    sub-int v12, v3, v2

    or-int/2addr v1, v12

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    or-int/2addr v1, v4

    if-ltz v1, :cond_3

    .line 8
    invoke-direct {v7, v6}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 11
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v12}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v2, v3, v1, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 14
    iget-wide v8, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v11, 0x0

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 15
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    iget-wide v2, v6, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v10, v1

    move/from16 v13, p4

    move/from16 v14, p5

    move-wide/from16 v18, v2

    .line 16
    invoke-static/range {v8 .. v19}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJJ)V

    .line 17
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    iget-wide v8, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 19
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    iget-wide v0, v6, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-wide/from16 v18, v0

    .line 20
    invoke-static/range {v8 .. v19}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    :goto_1
    return-void

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    .line 22
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 23
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v8, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 24
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v2

    move-object v3, p1

    move v6, p2

    move/from16 v7, p3

    .line 25
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p6

    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-ltz v2, :cond_0

    .line 27
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 28
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 29
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v2

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 30
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p6

    or-int v2, p2, p3

    add-int v3, p2, p3

    or-int/2addr v2, v3

    move-object v3, p1

    .line 1
    array-length v4, v3

    sub-int/2addr v4, p2

    sub-int v4, v4, p3

    or-int/2addr v2, v4

    if-ltz v2, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 3
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 4
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v4

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 5
    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJJ)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 10
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    iget-wide v13, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v5, p1

    move/from16 v8, p3

    move/from16 v9, p4

    .line 12
    invoke-static/range {v3 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V

    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p7

    if-ltz p2, :cond_0

    add-int v2, p2, p3

    move-object/from16 v3, p1

    .line 1
    array-length v4, v3

    if-gt v2, v4, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 3
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 5
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    iget-wide v13, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 6
    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJJ)V

    return-void

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v9, p9

    if-eqz v0, :cond_5

    if-eqz v9, :cond_4

    or-int v1, p2, p3

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    sub-int v14, p2, v4

    or-int/2addr v1, v14

    sub-int v15, p3, p2

    or-int/2addr v1, v15

    sub-int v2, v5, p3

    or-int/2addr v1, v2

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    or-int/2addr v1, v2

    if-ltz v1, :cond_3

    .line 10
    invoke-direct {v10, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 11
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 13
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v17, v5, v4

    .line 14
    invoke-static/range {v17 .. v17}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v4, v5, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 16
    iget-wide v11, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/16 v16, 0x0

    .line 17
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    iget-wide v2, v9, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v13, v1

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move-wide/from16 v23, v2

    .line 18
    invoke-static/range {v11 .. v24}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 19
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    iget-wide v11, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    iget-wide v0, v9, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move-wide/from16 v23, v0

    .line 22
    invoke-static/range {v11 .. v24}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    :goto_1
    return-void

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 24
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p9

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    sub-int v4, p2, p4

    or-int/2addr v2, v4

    add-int v4, p4, p5

    add-int v5, p2, p3

    sub-int v5, v4, v5

    or-int/2addr v2, v5

    .line 1
    array-length v5, v3

    sub-int/2addr v5, v4

    or-int/2addr v2, v5

    if-ltz v2, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 3
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 4
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    iget-wide v13, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v4

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 5
    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v7, p5

    .line 6
    .line 7
    move-object/from16 v9, p7

    .line 8
    .line 9
    move-object/from16 v11, p9

    .line 10
    .line 11
    move-object/from16 v5, p3

    .line 12
    .line 13
    array-length v1, v5

    .line 14
    move/from16 v6, p4

    .line 15
    .line 16
    invoke-static {v1, v6, v4}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    if-eqz v7, :cond_1

    .line 27
    .line 28
    array-length v1, v7

    .line 29
    move/from16 v8, p6

    .line 30
    .line 31
    invoke-static {v1, v8, v4}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move/from16 v8, p6

    .line 36
    .line 37
    :goto_0
    if-eqz v9, :cond_2

    .line 38
    .line 39
    array-length v1, v9

    .line 40
    div-int/lit8 v2, v4, 0x2

    .line 41
    .line 42
    move/from16 v10, p8

    .line 43
    .line 44
    invoke-static {v1, v10, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move/from16 v10, p8

    .line 49
    .line 50
    :goto_1
    if-eqz v11, :cond_3

    .line 51
    .line 52
    array-length v1, v11

    .line 53
    move/from16 v12, p10

    .line 54
    .line 55
    move/from16 v13, p11

    .line 56
    .line 57
    invoke-static {v1, v12, v13}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move/from16 v12, p10

    .line 62
    .line 63
    move/from16 v13, p11

    .line 64
    .line 65
    :goto_2
    move-object/from16 v1, p12

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwBitmapInSwMode(Landroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 71
    .line 72
    move-object/from16 v14, p1

    .line 73
    .line 74
    iget v14, v14, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 75
    .line 76
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 77
    .line 78
    .line 79
    move-result-wide v15

    .line 80
    move-wide v1, v2

    .line 81
    move v3, v14

    .line 82
    move/from16 v4, p2

    .line 83
    .line 84
    move-object/from16 v5, p3

    .line 85
    .line 86
    move/from16 v6, p4

    .line 87
    .line 88
    move-object/from16 v7, p5

    .line 89
    .line 90
    move/from16 v8, p6

    .line 91
    .line 92
    move-object/from16 v9, p7

    .line 93
    .line 94
    move/from16 v10, p8

    .line 95
    .line 96
    move-object/from16 v11, p9

    .line 97
    .line 98
    move/from16 v12, p10

    .line 99
    .line 100
    move/from16 v13, p11

    .line 101
    .line 102
    move-wide v14, v15

    .line 103
    invoke-static/range {v1 .. v15}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHwBitmapsInSwModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return v0
.end method

.method public setHwBitmapsInSwModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwBitmapsInSwMode:Z

    return-void
.end method

.method public throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Canvas: trying to use a recycled bitmap "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method
