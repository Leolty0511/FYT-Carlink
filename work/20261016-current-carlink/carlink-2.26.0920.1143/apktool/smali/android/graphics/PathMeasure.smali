.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method private static native native_create(JZ)J
.end method

.method private static native native_destroy(J)V
.end method

.method private static native native_getLength(J)F
.end method

.method private static native native_getMatrix(JFJI)Z
.end method

.method private static native native_getPosTan(JF[F[F)Z
.end method

.method private static native native_getSegment(JFFJZ)Z
.end method

.method private static native native_isClosed(J)Z
.end method

.method private static native native_nextContour(J)Z
.end method

.method private static native native_setPath(JJZ)V
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 9
    .line 10
    return-void
.end method

.method public getLength()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result v0

    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result p1

    return p1
.end method

.method public getPosTan(F[F[F)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    if-lt v1, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_2

    .line 8
    .line 9
    array-length v1, p3

    .line 10
    if-lt v1, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_2
    :goto_0
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v2, p1, v1

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    move v5, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v5, p1

    .line 13
    :goto_0
    cmpl-float p1, p2, v0

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    move v6, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v6, p2

    .line 20
    :goto_1
    cmpl-float p1, v5, v6

    .line 21
    .line 22
    if-ltz p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_2
    iget-wide v3, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/graphics/Path;->mutateNI()J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    move v9, p4

    .line 33
    invoke-static/range {v3 .. v9}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public isClosed()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result v0

    return v0
.end method

.method public nextContour()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result v0

    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
