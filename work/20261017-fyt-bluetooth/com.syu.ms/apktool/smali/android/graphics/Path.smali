.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field public static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mDetectSimplePaths:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public final mNativePath:I

.field public rects:Landroid/graphics/Region;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    .line 1
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 4
    invoke-static {}, Landroid/graphics/Path;->init1()I

    move-result v0

    iput v0, p0, Landroid/graphics/Path;->mNativePath:I

    .line 5
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eqz p1, :cond_0

    .line 9
    iget v0, p1, Landroid/graphics/Path;->mNativePath:I

    .line 10
    iget-boolean v1, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 11
    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Landroid/graphics/Region;

    iget-object p1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/graphics/Path;->init2(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/Path;->mNativePath:I

    .line 14
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    .line 3
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/graphics/Path;->isSimplePath:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p5, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez p5, :cond_2

    new-instance p5, Landroid/graphics/Region;

    invoke-direct {p5}, Landroid/graphics/Region;-><init>()V

    iput-object p5, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private static native init1()I
.end method

.method private static native init2(I)I
.end method

.method private static native native_addArc(ILandroid/graphics/RectF;FF)V
.end method

.method private static native native_addCircle(IFFFI)V
.end method

.method private static native native_addOval(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addPath(II)V
.end method

.method private static native native_addPath(IIFF)V
.end method

.method private static native native_addPath(III)V
.end method

.method private static native native_addRect(IFFFFI)V
.end method

.method private static native native_addRect(ILandroid/graphics/RectF;I)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;FFI)V
.end method

.method private static native native_addRoundRect(ILandroid/graphics/RectF;[FI)V
.end method

.method private static native native_arcTo(ILandroid/graphics/RectF;FFZ)V
.end method

.method private static native native_close(I)V
.end method

.method private static native native_computeBounds(ILandroid/graphics/RectF;)V
.end method

.method private static native native_cubicTo(IFFFFFF)V
.end method

.method private static native native_getFillType(I)I
.end method

.method private static native native_incReserve(II)V
.end method

.method private static native native_isEmpty(I)Z
.end method

.method private static native native_isRect(ILandroid/graphics/RectF;)Z
.end method

.method private static native native_lineTo(IFF)V
.end method

.method private static native native_moveTo(IFF)V
.end method

.method private static native native_offset(IFF)V
.end method

.method private static native native_offset(IFFI)V
.end method

.method private static native native_op(IIII)Z
.end method

.method private static native native_quadTo(IFFFF)V
.end method

.method private static native native_rCubicTo(IFFFFFF)V
.end method

.method private static native native_rLineTo(IFF)V
.end method

.method private static native native_rMoveTo(IFF)V
.end method

.method private static native native_rQuadTo(IFFFF)V
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_rewind(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setFillType(II)V
.end method

.method private static native native_setLastPoint(IFF)V
.end method

.method private static native native_transform(II)V
.end method

.method private static native native_transform(III)V
.end method


# virtual methods
.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 1

    const-string v0, "need oval parameter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 3
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addArc(ILandroid/graphics/RectF;FF)V

    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p4, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_addCircle(IFFFI)V

    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 1

    const-string v0, "need oval parameter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 3
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p2, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_addOval(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 4
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_addPath(II)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addPath(IIFF)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 1

    .line 5
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 6
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Path;->mNativePath:I

    iget p2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_addPath(III)V

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6

    .line 4
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 5
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget v5, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->native_addRect(IFFFFI)V

    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 7

    const-string v0, "need rect parameter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 3
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p2, p2, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_addRect(ILandroid/graphics/RectF;I)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 1

    const-string v0, "need rect parameter"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 3
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p4, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;FFI)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 2

    const-string v0, "need rect parameter"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    array-length v0, p2

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 7
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p3, p3, Landroid/graphics/Path$Direction;->nativeInt:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Path;->native_addRoundRect(ILandroid/graphics/RectF;[FI)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "radii[] needs 8 values"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 4
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, p1, p2, p3, v0}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_arcTo(ILandroid/graphics/RectF;FFZ)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_close(I)V

    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {p2, p1}, Landroid/graphics/Path;->native_computeBounds(ILandroid/graphics/RectF;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroid/graphics/Path;->native_cubicTo(IFFFFFF)V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->finalizer(I)V
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

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_incReserve(II)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_isRect(ILandroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method public lineTo(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_lineTo(IFF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_moveTo(IFF)V

    return-void
.end method

.method public final ni()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    return v0
.end method

.method public offset(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 5
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_offset(IFF)V

    return-void
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget v1, p3, Landroid/graphics/Path;->mNativePath:I

    .line 2
    iput-boolean v0, p3, Landroid/graphics/Path;->isSimplePath:Z

    move v0, v1

    .line 3
    :cond_0
    iget p3, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {p3, p1, p2, v0}, Landroid/graphics/Path;->native_offset(IFFI)V

    return-void
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result p1

    return p1
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1

    .line 2
    iget p1, p1, Landroid/graphics/Path;->mNativePath:I

    iget p2, p2, Landroid/graphics/Path;->mNativePath:I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Path;->native_op(IIII)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iput-boolean p2, p0, Landroid/graphics/Path;->isSimplePath:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public quadTo(FFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_quadTo(IFFFF)V

    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroid/graphics/Path;->native_rCubicTo(IFFFFFF)V

    return-void
.end method

.method public rLineTo(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rLineTo(IFF)V

    return-void
.end method

.method public rMoveTo(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_rMoveTo(IFF)V

    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->native_rQuadTo(IFFFF)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 4
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 6
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1}, Landroid/graphics/Path;->native_reset(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget-boolean v0, p0, Landroid/graphics/Path;->mDetectSimplePaths:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 4
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 5
    :cond_0
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_rewind(I)V

    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 1

    if-eq p0, p1, :cond_0

    .line 1
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_set(II)V

    :cond_0
    return-void
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_setFillType(II)V

    return-void
.end method

.method public setLastPoint(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Path;->native_setLastPoint(IFF)V

    return-void
.end method

.method public toggleInverseFillType()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v0}, Landroid/graphics/Path;->native_getFillType(I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x2

    .line 2
    iget v1, p0, Landroid/graphics/Path;->mNativePath:I

    invoke-static {v1, v0}, Landroid/graphics/Path;->native_setFillType(II)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 5
    iget v0, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1}, Landroid/graphics/Path;->native_transform(II)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 2
    iget v0, p2, Landroid/graphics/Path;->mNativePath:I

    .line 3
    :cond_0
    iget p2, p0, Landroid/graphics/Path;->mNativePath:I

    iget p1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {p2, p1, v0}, Landroid/graphics/Path;->native_transform(III)V

    return-void
.end method
