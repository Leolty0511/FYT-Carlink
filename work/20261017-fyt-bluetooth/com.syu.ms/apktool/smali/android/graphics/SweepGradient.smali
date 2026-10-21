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

    .line 13
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 15
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 16
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 17
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 18
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    .line 19
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate2(FFII)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 20
    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativePostCreate2(IFFII)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

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
    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 9
    iput-object p4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 10
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate1(FF[I[F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Shader;->native_instance:I

    .line 11
    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativePostCreate1(IFF[I[F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Shader;->native_shader:I

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "needs >= 2 number of colors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate1(FF[I[F)I
.end method

.method private static native nativeCreate2(FFII)I
.end method

.method private static native nativePostCreate1(IFF[I[F)I
.end method

.method private static native nativePostCreate2(IFFII)I
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/SweepGradient;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SweepGradient should be created with either colors and positions or start color and end color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget-object v4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    if-eqz v4, :cond_2

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
