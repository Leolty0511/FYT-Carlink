.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private final native_instance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0}, Landroid/graphics/PathMeasure;->native_create(IZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/graphics/PathMeasure;->native_create(IZ)I

    move-result p1

    iput p1, p0, Landroid/graphics/PathMeasure;->native_instance:I

    return-void
.end method

.method private static native native_create(IZ)I
.end method

.method private static native native_destroy(I)V
.end method

.method private static native native_getLength(I)F
.end method

.method private static native native_getMatrix(IFII)Z
.end method

.method private static native native_getPosTan(IF[F[F)Z
.end method

.method private static native native_getSegment(IFFIZ)Z
.end method

.method private static native native_isClosed(I)Z
.end method

.method private static native native_nextContour(I)Z
.end method

.method private static native native_setPath(IIZ)V
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_destroy(I)V

    return-void
.end method

.method public getLength()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_getLength(I)F

    move-result v0

    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    iget p2, p2, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getMatrix(IFII)Z

    move-result p1

    return p1
.end method

.method public getPosTan(F[F[F)Z
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 1
    array-length v1, p2

    if-lt v1, v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lt v1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_2
    :goto_0
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(IF[F[F)Z

    move-result p1

    return p1
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result p3

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/PathMeasure;->native_getSegment(IFFIZ)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_isClosed(I)Z

    move-result v0

    return v0
.end method

.method public nextContour()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    invoke-static {v0}, Landroid/graphics/PathMeasure;->native_nextContour(I)Z

    move-result v0

    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 2
    iget v0, p0, Landroid/graphics/PathMeasure;->native_instance:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/graphics/PathMeasure;->native_setPath(IIZ)V

    return-void
.end method
