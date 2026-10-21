.class public Landroid/view/RecordingCanvas;
.super Landroid/graphics/Canvas;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    return-void
.end method

.method private static native nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(JLjava/lang/String;IIFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawText(J[CIIFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextOnPath(J[CIIJFFIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final drawARGB(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 2
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 3
    invoke-static/range {v1 .. v11}, Landroid/view/RecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    return-void
.end method

.method public final drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/view/RecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p4, :cond_0

    .line 3
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

    .line 4
    invoke-static/range {v0 .. v9}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFJIII)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 7

    .line 5
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    move-wide v5, p2

    move-object v2, p1

    .line 7
    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawBitmapMatrix(JLandroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v16, v3

    if-nez v1, :cond_1

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    .line 13
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 14
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 15
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 16
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v3

    move v3, v1

    move/from16 v1, v20

    .line 17
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

    invoke-static/range {v5 .. v19}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p4, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide/from16 v16, v3

    if-nez v1, :cond_1

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move v10, v1

    move v11, v3

    move v8, v4

    move v9, v8

    goto :goto_1

    .line 23
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 24
    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    .line 25
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 26
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    move v11, v1

    move v8, v3

    move v10, v4

    move v9, v5

    .line 27
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

    invoke-static/range {v5 .. v19}, Landroid/view/RecordingCanvas;->nDrawBitmap(JLandroid/graphics/Bitmap;FFFFFFFFJII)V

    return-void
.end method

.method public final drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move/from16 v7, p6

    if-ltz v7, :cond_6

    if-ltz p7, :cond_5

    .line 28
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v7, :cond_4

    add-int/lit8 v0, p7, -0x1

    mul-int v0, v0, p3

    add-int/2addr v0, p2

    move-object v2, p1

    .line 29
    array-length v1, v2

    if-ltz p2, :cond_3

    add-int v3, p2, v7

    if-gt v3, v1, :cond_3

    if-ltz v0, :cond_3

    add-int/2addr v0, v7

    if-gt v0, v1, :cond_3

    if-eqz v7, :cond_2

    if-nez p7, :cond_0

    goto :goto_1

    :cond_0
    move-object v12, p0

    .line 30
    iget-wide v0, v12, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    if-eqz p9, :cond_1

    .line 31
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v10, v3

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 32
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    return-void

    :cond_2
    :goto_1
    move-object v12, p0

    return-void

    :cond_3
    move-object v12, p0

    .line 33
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    move-object v12, p0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v12, p0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v12, p0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
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

    .line 37
    invoke-virtual/range {v0 .. v9}, Landroid/view/RecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 12

    .line 1
    move/from16 v6, p5

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    move/from16 v8, p7

    .line 6
    .line 7
    or-int v0, p2, p3

    .line 8
    .line 9
    or-int/2addr v0, v6

    .line 10
    or-int/2addr v0, v8

    .line 11
    if-ltz v0, :cond_4

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 19
    .line 20
    add-int/lit8 v1, p3, 0x1

    .line 21
    .line 22
    mul-int/2addr v1, v0

    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    array-length v0, v5

    .line 26
    mul-int/lit8 v2, v1, 0x2

    .line 27
    .line 28
    invoke-static {v0, v6, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 29
    .line 30
    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    array-length v0, v7

    .line 34
    invoke-static {v0, v8, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 35
    .line 36
    .line 37
    :cond_1
    move-object v11, p0

    .line 38
    iget-wide v0, v11, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 39
    .line 40
    if-eqz p8, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    :goto_0
    move-wide v9, v2

    .line 50
    move-object v2, p1

    .line 51
    move v3, p2

    .line 52
    move v4, p3

    .line 53
    move-object/from16 v5, p4

    .line 54
    .line 55
    move/from16 v6, p5

    .line 56
    .line 57
    move-object/from16 v7, p6

    .line 58
    .line 59
    move/from16 v8, p7

    .line 60
    .line 61
    invoke-static/range {v0 .. v10}, Landroid/view/RecordingCanvas;->nDrawBitmapMesh(JLandroid/graphics/Bitmap;II[FI[IIJ)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    :goto_1
    move-object v11, p0

    .line 66
    return-void

    .line 67
    :cond_4
    move-object v11, p0

    .line 68
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 7

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawCircle(JFFFJ)V

    return-void
.end method

.method public final drawColor(I)V
    .locals 3

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, p2}, Landroid/view/RecordingCanvas;->nDrawColor(JII)V

    return-void
.end method

.method public final drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 8

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawLine(JFFFFJ)V

    return-void
.end method

.method public final drawLines([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawLines(J[FIIJ)V

    return-void
.end method

.method public final drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawOval(JFFFFJ)V

    return-void
.end method

.method public final drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPaint(Landroid/graphics/Paint;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RecordingCanvas;->nDrawPaint(JJ)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide v15, v3

    .line 4
    iget-wide v5, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v13, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v1

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v1

    .line 6
    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    if-nez p3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    :goto_0
    move-wide v15, v3

    .line 10
    iget-wide v5, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    move-object/from16 v2, p1

    iget-wide v9, v2, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v18

    move/from16 v17, v1

    .line 12
    invoke-static/range {v5 .. v18}, Landroid/view/RecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    return-void
.end method

.method public final drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 10
    .line 11
    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-static/range {v1 .. v6}, Landroid/view/RecordingCanvas;->nDrawRegion(JJJ)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-wide v7, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 28
    .line 29
    .line 30
    move-result-wide v11

    .line 31
    invoke-static/range {v7 .. v12}, Landroid/view/RecordingCanvas;->nDrawPath(JJJ)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 10
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 16
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final drawPoint(FFLandroid/graphics/Paint;)V
    .locals 6

    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/view/RecordingCanvas;->nDrawPoint(JFFJ)V

    return-void
.end method

.method public final drawPoints([FIILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/view/RecordingCanvas;->nDrawPoints(J[FIIJ)V

    return-void
.end method

.method public final drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/view/RecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/RecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawPosText([CII[FLandroid/graphics/Paint;)V
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

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    .line 2
    aget v5, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/view/RecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final drawRGB(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/RecordingCanvas;->drawColor(I)V

    return-void
.end method

.method public final drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 2
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

    invoke-virtual/range {v1 .. v6}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    .line 3
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    .line 5
    invoke-static/range {v0 .. v7}, Landroid/view/RecordingCanvas;->nDrawRect(JFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 2
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 3
    invoke-static/range {v1 .. v10}, Landroid/view/RecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    return-void
.end method

.method public final drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/view/RecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p6

    or-int v1, v2, v3

    sub-int v12, v3, v2

    or-int/2addr v1, v12

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    or-int/2addr v1, v4

    if-ltz v1, :cond_3

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v12}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v4, 0x0

    .line 11
    invoke-static {v0, v2, v3, v1, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 12
    iget-wide v8, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v11, 0x0

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 13
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    iget-wide v2, v6, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v10, v1

    move/from16 v13, p4

    move/from16 v14, p5

    move-wide/from16 v18, v2

    .line 14
    invoke-static/range {v8 .. v19}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJJ)V

    .line 15
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    iget-wide v8, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iget v15, v6, Landroid/graphics/Paint;->mBidiFlags:I

    .line 17
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    iget-wide v0, v6, Landroid/graphics/Paint;->mNativeTypeface:J

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-wide/from16 v18, v0

    .line 18
    invoke-static/range {v8 .. v19}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    :goto_1
    return-void

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    .line 20
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v8, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 21
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    iget-wide v11, v1, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v1, v2

    move-object v3, p1

    move v6, p2

    move/from16 v7, p3

    .line 22
    invoke-static/range {v1 .. v12}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void
.end method

.method public final drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object/from16 v0, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    move-object v12, p0

    .line 24
    iget-wide v1, v12, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 25
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v0, v1

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 26
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJJ)V

    return-void

    :cond_0
    move-object v12, p0

    .line 27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 13

    move-object/from16 v0, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    move-object v2, p1

    .line 1
    array-length v3, v2

    sub-int/2addr v3, p2

    sub-int v3, v3, p3

    or-int/2addr v1, v3

    if-ltz v1, :cond_0

    move-object v12, p0

    .line 2
    iget-wide v3, v12, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    iget-wide v10, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v0, v3

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 4
    invoke-static/range {v0 .. v11}, Landroid/view/RecordingCanvas;->nDrawText(J[CIIFFIJJ)V

    return-void

    :cond_0
    move-object v12, p0

    .line 5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 14

    move-object/from16 v0, p5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, p0

    .line 8
    iget-wide v2, v1, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 9
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move/from16 v7, p3

    move/from16 v8, p4

    .line 10
    invoke-static/range {v2 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJJ)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-void
.end method

.method public final drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 15

    move-object/from16 v0, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object/from16 v2, p1

    .line 1
    array-length v3, v2

    if-gt v1, v3, :cond_0

    move-object v14, p0

    .line 2
    iget-wide v3, v14, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v5

    iget v9, v0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 4
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v0, v3

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 5
    invoke-static/range {v0 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJJ)V

    return-void

    :cond_0
    move-object v14, p0

    .line 6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
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

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    or-int/2addr v1, v2

    if-ltz v1, :cond_3

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

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v17, v5, v4

    .line 12
    invoke-static/range {v17 .. v17}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v4, v5, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 14
    iget-wide v11, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/16 v16, 0x0

    .line 15
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v21

    iget-wide v2, v9, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v13, v1

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move-wide/from16 v23, v2

    .line 16
    invoke-static/range {v11 .. v24}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 17
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    iget-wide v11, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 19
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

    .line 20
    invoke-static/range {v11 .. v24}, Landroid/view/RecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJJ)V

    :goto_1
    return-void

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 22
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 15

    move-object/from16 v2, p1

    move-object/from16 v0, p9

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int v4, v3, v4

    or-int/2addr v1, v4

    .line 1
    array-length v4, v2

    sub-int/2addr v4, v3

    or-int/2addr v1, v4

    if-ltz v1, :cond_0

    move-object v14, p0

    .line 2
    iget-wide v3, v14, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 3
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-wide v0, v3

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 4
    invoke-static/range {v0 .. v13}, Landroid/view/RecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    return-void

    :cond_0
    move-object v14, p0

    .line 5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    move-object v14, p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "paint is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v14, p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 16

    .line 1
    move/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v8, p7

    .line 6
    .line 7
    move-object/from16 v10, p9

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    array-length v0, v4

    .line 12
    move/from16 v5, p4

    .line 13
    .line 14
    invoke-static {v0, v5, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    if-eqz v6, :cond_1

    .line 25
    .line 26
    array-length v0, v6

    .line 27
    move/from16 v7, p6

    .line 28
    .line 29
    invoke-static {v0, v7, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move/from16 v7, p6

    .line 34
    .line 35
    :goto_0
    if-eqz v8, :cond_2

    .line 36
    .line 37
    array-length v0, v8

    .line 38
    div-int/lit8 v1, v3, 0x2

    .line 39
    .line 40
    move/from16 v9, p8

    .line 41
    .line 42
    invoke-static {v0, v9, v1}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move/from16 v9, p8

    .line 47
    .line 48
    :goto_1
    if-eqz v10, :cond_3

    .line 49
    .line 50
    array-length v0, v10

    .line 51
    move/from16 v11, p10

    .line 52
    .line 53
    move/from16 v12, p11

    .line 54
    .line 55
    invoke-static {v0, v11, v12}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move/from16 v11, p10

    .line 60
    .line 61
    move/from16 v12, p11

    .line 62
    .line 63
    :goto_2
    move-object/from16 v15, p0

    .line 64
    .line 65
    iget-wide v0, v15, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 66
    .line 67
    move-object/from16 v2, p1

    .line 68
    .line 69
    iget v2, v2, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 70
    .line 71
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    .line 72
    .line 73
    .line 74
    move-result-wide v13

    .line 75
    move/from16 v3, p2

    .line 76
    .line 77
    move-object/from16 v4, p3

    .line 78
    .line 79
    move/from16 v5, p4

    .line 80
    .line 81
    move-object/from16 v6, p5

    .line 82
    .line 83
    move/from16 v7, p6

    .line 84
    .line 85
    move-object/from16 v8, p7

    .line 86
    .line 87
    move/from16 v9, p8

    .line 88
    .line 89
    move-object/from16 v10, p9

    .line 90
    .line 91
    move/from16 v11, p10

    .line 92
    .line 93
    move/from16 v12, p11

    .line 94
    .line 95
    invoke-static/range {v0 .. v14}, Landroid/view/RecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
