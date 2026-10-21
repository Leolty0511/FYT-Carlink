.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SourceFile"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mCx:F

.field private mCy:F

.field private mPositions:[F

.field private mType:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 13
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 14
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 15
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 16
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 18
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p4, :cond_1

    .line 3
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "color and position arrays must be of equal length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 6
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 7
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 8
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    if-eqz p4, :cond_2

    .line 9
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "needs >= 2 number of colors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate1(JFF[I[F)J
.end method

.method private static native nativeCreate2(JFFII)J
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/SweepGradient;

    .line 7
    .line 8
    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 9
    .line 10
    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 11
    .line 12
    iget-object v3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 13
    .line 14
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, [I

    .line 19
    .line 20
    iget-object v4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, [F

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance v0, Landroid/graphics/SweepGradient;

    .line 37
    .line 38
    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 39
    .line 40
    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 41
    .line 42
    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 43
    .line 44
    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public createNativeInstance(J)J
    .locals 8

    .line 1
    iget v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v4, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 7
    .line 8
    iget v5, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 9
    .line 10
    iget-object v6, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 11
    .line 12
    iget-object v7, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 13
    .line 14
    move-wide v2, p1

    .line 15
    invoke-static/range {v2 .. v7}, Landroid/graphics/SweepGradient;->nativeCreate1(JFF[I[F)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1

    .line 20
    :cond_0
    iget v2, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 21
    .line 22
    iget v3, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 23
    .line 24
    iget v4, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 25
    .line 26
    iget v5, p0, Landroid/graphics/SweepGradient;->mColor1:I

    .line 27
    .line 28
    move-wide v0, p1

    .line 29
    invoke-static/range {v0 .. v5}, Landroid/graphics/SweepGradient;->nativeCreate2(JFFII)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    return-wide p1
.end method
