.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static IDENTITY_MATRIX:Landroid/graphics/Matrix; = null

.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field public native_instance:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix$1;

    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/graphics/Matrix;->native_create(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Matrix;->native_instance:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/graphics/Matrix;->native_create(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Matrix;->native_instance:I

    return-void
.end method

.method private static checkPointArrays([FI[FII)V
    .locals 2

    shl-int/lit8 v0, p4, 0x1

    add-int v1, p1, v0

    add-int/2addr v0, p3

    or-int/2addr p1, p4

    or-int/2addr p1, p3

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 1
    array-length p0, p0

    if-gt v1, p0, :cond_0

    array-length p0, p2

    if-gt v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private static native finalizer(I)V
.end method

.method private static native native_create(I)I
.end method

.method private static native native_equals(II)Z
.end method

.method private static native native_getValues(I[F)V
.end method

.method private static native native_invert(II)Z
.end method

.method private static native native_isIdentity(I)Z
.end method

.method private static native native_mapPoints(I[FI[FIIZ)V
.end method

.method private static native native_mapRadius(IF)F
.end method

.method private static native native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z
.end method

.method private static native native_postConcat(II)Z
.end method

.method private static native native_postRotate(IF)Z
.end method

.method private static native native_postRotate(IFFF)Z
.end method

.method private static native native_postScale(IFF)Z
.end method

.method private static native native_postScale(IFFFF)Z
.end method

.method private static native native_postSkew(IFF)Z
.end method

.method private static native native_postSkew(IFFFF)Z
.end method

.method private static native native_postTranslate(IFF)Z
.end method

.method private static native native_preConcat(II)Z
.end method

.method private static native native_preRotate(IF)Z
.end method

.method private static native native_preRotate(IFFF)Z
.end method

.method private static native native_preScale(IFF)Z
.end method

.method private static native native_preScale(IFFFF)Z
.end method

.method private static native native_preSkew(IFF)Z
.end method

.method private static native native_preSkew(IFFFF)Z
.end method

.method private static native native_preTranslate(IFF)Z
.end method

.method private static native native_rectStaysRect(I)Z
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setConcat(III)Z
.end method

.method private static native native_setPolyToPoly(I[FI[FII)Z
.end method

.method private static native native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
.end method

.method private static native native_setRotate(IF)V
.end method

.method private static native native_setRotate(IFFF)V
.end method

.method private static native native_setScale(IFF)V
.end method

.method private static native native_setScale(IFFFF)V
.end method

.method private static native native_setSinCos(IFF)V
.end method

.method private static native native_setSinCos(IFFFF)V
.end method

.method private static native native_setSkew(IFF)V
.end method

.method private static native native_setSkew(IFFFF)V
.end method

.method private static native native_setTranslate(IFF)V
.end method

.method private static native native_setValues(I[F)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    check-cast p1, Landroid/graphics/Matrix;

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_equals(II)Z

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getValues([F)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_getValues(I[F)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_invert(II)Z

    move-result p1

    return p1
.end method

.method public isIdentity()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_isIdentity(I)Z

    move-result v0

    return v0
.end method

.method public mapPoints([F)V
    .locals 7

    .line 6
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    return-void
.end method

.method public mapPoints([FI[FII)V
    .locals 7

    .line 1
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    return-void
.end method

.method public mapPoints([F[F)V
    .locals 8

    .line 3
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4
    array-length v0, p1

    shr-int/lit8 v7, v0, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public mapRadius(F)F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_mapRadius(IF)F

    move-result p1

    return p1
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_mapRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public mapVectors([F)V
    .locals 7

    .line 6
    array-length v0, p1

    shr-int/lit8 v6, v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    return-void
.end method

.method public mapVectors([FI[FII)V
    .locals 7

    .line 1
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Matrix;->native_mapPoints(I[FI[FIIZ)V

    return-void
.end method

.method public mapVectors([F[F)V
    .locals 8

    .line 3
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4
    array-length v0, p1

    shr-int/lit8 v7, v0, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ni()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    return v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_postConcat(II)Z

    move-result p1

    return p1
.end method

.method public postRotate(F)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_postRotate(IF)Z

    move-result p1

    return p1
.end method

.method public postRotate(FFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_postRotate(IFFF)Z

    move-result p1

    return p1
.end method

.method public postScale(FF)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postScale(IFF)Z

    move-result p1

    return p1
.end method

.method public postScale(FFFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postScale(IFFFF)Z

    move-result p1

    return p1
.end method

.method public postSkew(FF)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postSkew(IFF)Z

    move-result p1

    return p1
.end method

.method public postSkew(FFFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_postSkew(IFFFF)Z

    move-result p1

    return p1
.end method

.method public postTranslate(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_postTranslate(IFF)Z

    move-result p1

    return p1
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_preConcat(II)Z

    move-result p1

    return p1
.end method

.method public preRotate(F)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_preRotate(IF)Z

    move-result p1

    return p1
.end method

.method public preRotate(FFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_preRotate(IFFF)Z

    move-result p1

    return p1
.end method

.method public preScale(FF)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preScale(IFF)Z

    move-result p1

    return p1
.end method

.method public preScale(FFFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preScale(IFFFF)Z

    move-result p1

    return p1
.end method

.method public preSkew(FF)Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preSkew(IFF)Z

    move-result p1

    return p1
.end method

.method public preSkew(FFFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_preSkew(IFFFF)Z

    move-result p1

    return p1
.end method

.method public preTranslate(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_preTranslate(IFF)Z

    move-result p1

    return p1
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    const/4 v1, 0x0

    .line 3
    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 4
    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 5
    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 6
    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 7
    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 8
    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public rectStaysRect()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_rectStaysRect(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Matrix;->native_reset(I)V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_set(II)V

    :goto_0
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    iget p2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setConcat(III)Z

    move-result p1

    return p1
.end method

.method public setPolyToPoly([FI[FII)Z
    .locals 7

    const/4 v0, 0x4

    if-gt p5, v0, :cond_0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 2
    iget v1, p0, Landroid/graphics/Matrix;->native_instance:I

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Landroid/graphics/Matrix;->native_setPolyToPoly(I[FI[FII)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    iget p3, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRectToRect(ILandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setRotate(F)V
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setRotate(IF)V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Matrix;->native_setRotate(IFFF)V

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setScale(IFF)V

    return-void
.end method

.method public setScale(FFFF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setScale(IFFFF)V

    return-void
.end method

.method public setSinCos(FF)V
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSinCos(IFF)V

    return-void
.end method

.method public setSinCos(FFFF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSinCos(IFFFF)V

    return-void
.end method

.method public setSkew(FF)V
    .locals 1

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setSkew(IFF)V

    return-void
.end method

.method public setSkew(FFFF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->native_setSkew(IFFFF)V

    return-void
.end method

.method public setTranslate(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Matrix;->native_setTranslate(IFF)V

    return-void
.end method

.method public setValues([F)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Matrix;->native_setValues(I[F)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v1, 0x5b

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 6
    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 7
    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    .line 8
    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 9
    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 10
    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 11
    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Matrix{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
