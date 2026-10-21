.class public Landroid/graphics/Canvas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$CanvasFinalizer;
    }
.end annotation


# static fields
.field public static final ALL_SAVE_FLAG:I = 0x1f

.field public static final CLIP_SAVE_FLAG:I = 0x2

.field public static final CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final MATRIX_SAVE_FLAG:I = 0x1

.field private static final MAXMIMUM_BITMAP_SIZE:I = 0x7ffe


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field public mDensity:I

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private final mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

.field public mNativeCanvas:I

.field public mScreenDensity:I

.field private mSurfaceFormat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 3
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 6
    new-instance v1, Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    :goto_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 20
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    if-eqz p1, :cond_0

    .line 21
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 22
    new-instance v0, Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 23
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 10
    iput v0, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 14
    new-instance v1, Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas$CanvasFinalizer;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    .line 15
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    iget p1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/graphics/Canvas;->finalizer(I)V

    return-void
.end method

.method public static checkRange(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int/2addr p1, p2

    if-gt p1, p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native copyNativeCanvasState(II)V
.end method

.method private static native finalizer(I)V
.end method

.method public static native freeCaches()V
.end method

.method public static native freeTextLayoutCaches()V
.end method

.method private static native initRaster(I)I
.end method

.method private static native nativeDrawBitmapMatrix(IIII)V
.end method

.method private static native nativeDrawBitmapMesh(IIII[FI[III)V
.end method

.method private static native nativeDrawVertices(III[FI[FI[II[SIII)V
.end method

.method private static native nativeSetDrawFilter(II)V
.end method

.method private static native native_clipPath(III)Z
.end method

.method private static native native_clipRect(IFFFFI)Z
.end method

.method private static native native_clipRegion(III)Z
.end method

.method private static native native_concat(II)V
.end method

.method private static native native_drawARGB(IIIII)V
.end method

.method private static native native_drawArc(ILandroid/graphics/RectF;FFZI)V
.end method

.method private native native_drawBitmap(IIFFIIII)V
.end method

.method private static native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V
.end method

.method private native native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V
.end method

.method private static native native_drawBitmap(I[IIIFFIIZI)V
.end method

.method private static native native_drawCircle(IFFFI)V
.end method

.method private static native native_drawColor(II)V
.end method

.method private static native native_drawColor(III)V
.end method

.method private static native native_drawLine(IFFFFI)V
.end method

.method private static native native_drawOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawPaint(II)V
.end method

.method private static native native_drawPath(III)V
.end method

.method private static native native_drawPosText(ILjava/lang/String;[FI)V
.end method

.method private static native native_drawPosText(I[CII[FI)V
.end method

.method private static native native_drawRGB(IIII)V
.end method

.method private static native native_drawRect(IFFFFI)V
.end method

.method private static native native_drawRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_drawRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_drawText(ILjava/lang/String;IIFFII)V
.end method

.method private static native native_drawText(I[CIIFFII)V
.end method

.method private static native native_drawTextOnPath(ILjava/lang/String;IFFII)V
.end method

.method private static native native_drawTextOnPath(I[CIIIFFII)V
.end method

.method private static native native_drawTextRun(ILjava/lang/String;IIIIFFII)V
.end method

.method private static native native_drawTextRun(I[CIIIIFFII)V
.end method

.method private static native native_getCTM(II)V
.end method

.method private static native native_getClipBounds(ILandroid/graphics/Rect;)Z
.end method

.method private static native native_quickReject(IFFFF)Z
.end method

.method private static native native_quickReject(II)Z
.end method

.method private static native native_quickReject(ILandroid/graphics/RectF;)Z
.end method

.method private static native native_saveLayer(IFFFFII)I
.end method

.method private static native native_saveLayer(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_saveLayerAlpha(IFFFFII)I
.end method

.method private static native native_saveLayerAlpha(ILandroid/graphics/RectF;II)I
.end method

.method private static native native_setMatrix(II)V
.end method

.method private safeCanvasSwap(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 2
    iput p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    .line 3
    iget-object v1, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-static {v1, p1}, Landroid/graphics/Canvas$CanvasFinalizer;->access$102(Landroid/graphics/Canvas$CanvasFinalizer;I)I

    if-eqz p2, :cond_0

    .line 4
    iget p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->copyNativeCanvasState(II)V

    .line 5
    :cond_0
    invoke-static {v0}, Landroid/graphics/Canvas;->finalizer(I)V

    return-void
.end method

.method public static throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)Z
    .locals 1

    .line 2
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    iget p2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_clipPath(III)Z

    move-result p1

    return p1
.end method

.method public native clipRect(FFFF)Z
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 6

    .line 3
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result p1

    return p1
.end method

.method public native clipRect(IIII)Z
.end method

.method public native clipRect(Landroid/graphics/Rect;)Z
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 6

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p1

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result p1

    return p1
.end method

.method public native clipRect(Landroid/graphics/RectF;)Z
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_clipRect(IFFFFI)Z

    move-result p1

    return p1
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .locals 1

    .line 2
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result p1

    return p1
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result p1

    iget p2, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_clipRegion(III)Z

    move-result p1

    return p1
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_concat(II)V

    :cond_0
    return-void
.end method

.method public drawARGB(IIII)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawARGB(IIIII)V

    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawArc(ILandroid/graphics/RectF;FFZI)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 2
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_0

    iget p4, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move v5, p4

    iget v6, p0, Landroid/graphics/Canvas;->mDensity:I

    iget v7, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v8, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawBitmap(IIFFIIII)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1

    .line 17
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()I

    move-result p2

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->nativeDrawBitmapMatrix(IIII)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 8
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v1

    if-eqz p4, :cond_0

    iget p4, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move v4, p4

    iget v5, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v6, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/Rect;III)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 8

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 5
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz p4, :cond_0

    iget p4, p4, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move v5, p4

    iget v6, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    iget v7, p1, Landroid/graphics/Bitmap;->mDensity:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawBitmap(IILandroid/graphics/Rect;Landroid/graphics/RectF;III)V

    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 11

    move/from16 v6, p6

    move-object/from16 v0, p9

    if-ltz v6, :cond_6

    if-ltz p7, :cond_5

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v6, :cond_4

    add-int/lit8 v1, p7, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    move-object v2, p1

    .line 10
    array-length v3, v2

    if-ltz p2, :cond_3

    add-int v4, p2, v6

    if-gt v4, v3, :cond_3

    if-ltz v1, :cond_3

    add-int/2addr v1, v6

    if-gt v1, v3, :cond_3

    if-eqz v6, :cond_2

    if-nez p7, :cond_0

    goto :goto_1

    :cond_0
    move-object v10, p0

    .line 11
    iget v1, v10, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    move v0, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Canvas;->native_drawBitmap(I[IIIFFIIZI)V

    return-void

    :cond_2
    :goto_1
    move-object v10, p0

    return-void

    :cond_3
    move-object v10, p0

    .line 12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    move-object v10, p0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v10, p0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v10, p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 10

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

    .line 16
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 10

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v0, p8

    or-int v1, p2, p3

    or-int/2addr v1, v5

    or-int/2addr v1, v7

    if-ltz v1, :cond_4

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v1, v2

    move-object v4, p4

    .line 1
    array-length v2, v4

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, p5, v3}, Landroid/graphics/Canvas;->checkRange(III)V

    if-eqz v6, :cond_1

    .line 2
    array-length v2, v6

    invoke-static {v2, v7, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    :cond_1
    move-object v9, p0

    .line 3
    iget v1, v9, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v2

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    move v0, v1

    move v1, v2

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->nativeDrawBitmapMesh(IIII[FI[III)V

    return-void

    :cond_3
    :goto_1
    move-object v9, p0

    return-void

    :cond_4
    move-object v9, p0

    .line 4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p4, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawCircle(IFFFI)V

    return-void
.end method

.method public drawColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawColor(II)V

    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_drawColor(III)V

    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawLine(IFFFFI)V

    return-void
.end method

.method public native drawLines([FIILandroid/graphics/Paint;)V
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_drawOval(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_drawPaint(II)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/NinePatch;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/NinePatch;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    iget p2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_drawPath(III)V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
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

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 12
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
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

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public native drawPoint(FFLandroid/graphics/Paint;)V
.end method

.method public native drawPoints([FIILandroid/graphics/Paint;)V
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 5
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p3, p3, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawPosText(ILjava/lang/String;[FI)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    .line 1
    array-length v1, p1

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_0

    .line 2
    iget v2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v7, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroid/graphics/Canvas;->native_drawPosText(I[CII[FI)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public drawRGB(III)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_drawRGB(IIII)V

    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6

    .line 3
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v5, p5, Landroid/graphics/Paint;->mNativePaint:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->native_drawRect(IFFFFI)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
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

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Canvas;->native_drawRect(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p4, p4, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_drawRoundRect(ILandroid/graphics/RectF;FFI)V

    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v6, p6

    .line 8
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 10
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    sub-int v11, v3, v2

    .line 11
    invoke-static {v11}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 13
    iget v8, v7, Landroid/graphics/Canvas;->mNativeCanvas:I

    const/4 v10, 0x0

    iget v14, v6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v15, v6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v9, v1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v15}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    .line 14
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    iget v8, v7, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget v14, v6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v15, v6, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v15}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    :goto_1
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 4
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v6, p4, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p4, Landroid/graphics/Paint;->mNativePaint:I

    const/4 v2, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 9

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 6
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v7, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v8, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Canvas;->native_drawText(ILjava/lang/String;IIFFII)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 9

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    .line 1
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v7, p6, Landroid/graphics/Paint;->mBidiFlags:I

    iget v8, p6, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Canvas;->native_drawText(I[CIIFFII)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget v1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v3

    iget v6, p5, Landroid/graphics/Paint;->mBidiFlags:I

    iget v7, p5, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Canvas;->native_drawTextOnPath(ILjava/lang/String;IFFII)V

    :cond_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 10

    move-object/from16 v0, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object v2, p1

    .line 1
    array-length v3, v2

    if-gt v1, v3, :cond_0

    move-object v9, p0

    .line 2
    iget v1, v9, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p4}, Landroid/graphics/Path;->ni()I

    move-result v4

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    iget v8, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v0, v1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v8}, Landroid/graphics/Canvas;->native_drawTextOnPath(I[CIIIFFII)V

    return-void

    :cond_0
    move-object v9, p0

    .line 3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawTextRun(Ljava/lang/CharSequence;IIIIFFILandroid/graphics/Paint;)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v9, p9

    const-string/jumbo v1, "text is null"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "paint is null"

    .line 8
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v1, p2, p3

    sub-int v14, p3, p2

    or-int/2addr v1, v14

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_4

    const/4 v1, 0x0

    if-nez p8, :cond_0

    move/from16 v19, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    move/from16 v19, v2

    .line 10
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_3

    instance-of v2, v0, Landroid/text/SpannedString;

    if-nez v2, :cond_3

    instance-of v2, v0, Landroid/text/SpannableString;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    instance-of v2, v0, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_2

    .line 12
    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, v19

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    sub-int v16, v5, v4

    .line 13
    invoke-static/range {v16 .. v16}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 14
    invoke-static {v0, v4, v5, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 15
    iget v11, v10, Landroid/graphics/Canvas;->mNativeCanvas:I

    sub-int v13, p2, v4

    const/4 v15, 0x0

    iget v0, v9, Landroid/graphics/Paint;->mNativePaint:I

    move-object v12, v2

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v20, v0

    invoke-static/range {v11 .. v20}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    .line 16
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    iget v1, v10, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v9, v9, Landroid/graphics/Paint;->mNativePaint:I

    move v0, v1

    move-object v1, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, v19

    invoke-static/range {v0 .. v9}, Landroid/graphics/Canvas;->native_drawTextRun(ILjava/lang/String;IIIIFFII)V

    :goto_2
    return-void

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawTextRun([CIIIIFFILandroid/graphics/Paint;)V
    .locals 11

    move-object v1, p1

    move/from16 v8, p8

    move-object/from16 v0, p9

    const-string/jumbo v2, "text is null"

    .line 1
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "paint is null"

    .line 2
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v2, p2, p3

    .line 3
    array-length v3, v1

    sub-int/2addr v3, p2

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-ltz v2, :cond_2

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    if-ne v8, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object v10, p0

    .line 5
    iget v2, v10, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v9, v0, Landroid/graphics/Paint;->mNativePaint:I

    move v0, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/graphics/Canvas;->native_drawTextRun(I[CIIIIFFII)V

    return-void

    :cond_2
    move-object v10, p0

    .line 6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 14

    move/from16 v2, p2

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v3, p3

    .line 1
    array-length v0, v3

    move/from16 v4, p4

    invoke-static {v0, v4, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    if-eqz v5, :cond_0

    .line 2
    array-length v0, v5

    move/from16 v6, p6

    invoke-static {v0, v6, v2}, Landroid/graphics/Canvas;->checkRange(III)V

    goto :goto_0

    :cond_0
    move/from16 v6, p6

    :goto_0
    if-eqz v7, :cond_1

    .line 3
    array-length v0, v7

    div-int/lit8 v1, v2, 0x2

    move/from16 v8, p8

    invoke-static {v0, v8, v1}, Landroid/graphics/Canvas;->checkRange(III)V

    goto :goto_1

    :cond_1
    move/from16 v8, p8

    :goto_1
    if-eqz v9, :cond_2

    .line 4
    array-length v0, v9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static {v0, v10, v11}, Landroid/graphics/Canvas;->checkRange(III)V

    goto :goto_2

    :cond_2
    move/from16 v10, p10

    move/from16 v11, p11

    :goto_2
    move-object v13, p0

    .line 5
    iget v0, v13, Landroid/graphics/Canvas;->mNativeCanvas:I

    move-object v1, p1

    iget v1, v1, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    move-object/from16 v12, p12

    iget v12, v12, Landroid/graphics/Paint;->mNativePaint:I

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v12}, Landroid/graphics/Canvas;->nativeDrawVertices(III[FI[FI[II[SIII)V

    return-void
.end method

.method public final getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getClipBounds(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getDensity()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public getGL()Lb0/f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public native getHeight()I
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_getCTM(II)V

    return-void
.end method

.method public getMaximumBitmapHeight()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public getNativeCanvas()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    return v0
.end method

.method public native getSaveCount()I
.end method

.method public native getWidth()I
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native isOpaque()Z
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 0

    .line 3
    iget p5, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {p5, p1, p2, p3, p4}, Landroid/graphics/Canvas;->native_quickReject(IFFFF)Z

    move-result p1

    return p1
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 0

    .line 2
    iget p2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    invoke-static {p2, p1}, Landroid/graphics/Canvas;->native_quickReject(II)Z

    move-result p1

    return p1
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 0

    .line 1
    iget p2, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {p2, p1}, Landroid/graphics/Canvas;->native_quickReject(ILandroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Landroid/graphics/Canvas$CanvasFinalizer;

    invoke-virtual {v0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V

    return-void
.end method

.method public native restore()V
.end method

.method public native restoreToCount(I)V
.end method

.method public native rotate(F)V
.end method

.method public final rotate(FFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float p1, p2

    neg-float p2, p3

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public native save()I
.end method

.method public native save(I)I
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p5, :cond_0

    iget p5, p5, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move v5, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayer(IFFFFII)I

    move-result p1

    return p1
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-eqz p2, :cond_0

    iget p2, p2, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayer(ILandroid/graphics/RectF;II)I

    move-result p1

    return p1
.end method

.method public saveLayerAlpha(FFFFII)I
    .locals 7

    .line 3
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->native_saveLayerAlpha(IFFFFII)I

    move-result p1

    return p1
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v0, 0xff

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Canvas;->native_saveLayerAlpha(ILandroid/graphics/RectF;II)I

    move-result p1

    return p1
.end method

.method public native scale(FF)V
.end method

.method public final scale(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float p1, p3

    neg-float p2, p4

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/graphics/Canvas;->safeCanvasSwap(IZ)V

    .line 3
    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->ni()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Canvas;->initRaster(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/graphics/Canvas;->safeCanvasSwap(IZ)V

    .line 7
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 8
    :goto_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t set a bitmap device on a GL canvas"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDensity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 3
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 3
    iget p1, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    invoke-static {p1, v0}, Landroid/graphics/Canvas;->nativeSetDrawFilter(II)V

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas;->mNativeCanvas:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    :goto_0
    invoke-static {v0, p1}, Landroid/graphics/Canvas;->native_setMatrix(II)V

    return-void
.end method

.method public setScreenDensity(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    return-void
.end method

.method public setViewport(II)V
    .locals 0

    return-void
.end method

.method public native skew(FF)V
.end method

.method public native translate(FF)V
.end method
