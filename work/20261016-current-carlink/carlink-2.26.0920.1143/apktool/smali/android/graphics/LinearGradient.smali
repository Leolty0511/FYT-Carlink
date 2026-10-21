.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "SourceFile"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 16
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 17
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 18
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 19
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 20
    iput p5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 21
    iput p6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 23
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 24
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    array-length v0, p5

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p6, :cond_1

    .line 3
    array-length v0, p5

    array-length v1, p6

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
    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 6
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 7
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 8
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 9
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 10
    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    if-eqz p6, :cond_2

    .line 11
    invoke-virtual {p6}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 12
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "needs >= 2 number of colors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeCreate1(JFFFF[I[FI)J
.end method

.method private native nativeCreate2(JFFFFIII)J
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/LinearGradient;->mType:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 9
    .line 10
    iget v4, v0, Landroid/graphics/LinearGradient;->mX0:F

    .line 11
    .line 12
    iget v5, v0, Landroid/graphics/LinearGradient;->mY0:F

    .line 13
    .line 14
    iget v6, v0, Landroid/graphics/LinearGradient;->mX1:F

    .line 15
    .line 16
    iget v7, v0, Landroid/graphics/LinearGradient;->mY1:F

    .line 17
    .line 18
    iget-object v2, v0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 19
    .line 20
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v8, v2

    .line 25
    check-cast v8, [I

    .line 26
    .line 27
    iget-object v2, v0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, [F

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    move-object v9, v2

    .line 40
    iget-object v10, v0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 41
    .line 42
    move-object v3, v1

    .line 43
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 48
    .line 49
    iget v12, v0, Landroid/graphics/LinearGradient;->mX0:F

    .line 50
    .line 51
    iget v13, v0, Landroid/graphics/LinearGradient;->mY0:F

    .line 52
    .line 53
    iget v14, v0, Landroid/graphics/LinearGradient;->mX1:F

    .line 54
    .line 55
    iget v15, v0, Landroid/graphics/LinearGradient;->mY1:F

    .line 56
    .line 57
    iget v2, v0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 58
    .line 59
    iget v3, v0, Landroid/graphics/LinearGradient;->mColor1:I

    .line 60
    .line 61
    iget-object v4, v0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 62
    .line 63
    move-object v11, v1

    .line 64
    move/from16 v16, v2

    .line 65
    .line 66
    move/from16 v17, v3

    .line 67
    .line 68
    move-object/from16 v18, v4

    .line 69
    .line 70
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 74
    .line 75
    .line 76
    return-object v1
.end method

.method public createNativeInstance(J)J
    .locals 12

    .line 1
    iget v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v5, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 7
    .line 8
    iget v6, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 9
    .line 10
    iget v7, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 11
    .line 12
    iget v8, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 13
    .line 14
    iget-object v9, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 15
    .line 16
    iget-object v10, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 17
    .line 18
    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    iget v11, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    move-wide v3, p1

    .line 24
    invoke-direct/range {v2 .. v11}, Landroid/graphics/LinearGradient;->nativeCreate1(JFFFF[I[FI)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1

    .line 29
    :cond_0
    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 30
    .line 31
    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 32
    .line 33
    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 34
    .line 35
    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 36
    .line 37
    iget v7, p0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 38
    .line 39
    iget v8, p0, Landroid/graphics/LinearGradient;->mColor1:I

    .line 40
    .line 41
    iget-object v0, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 42
    .line 43
    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 44
    .line 45
    move-object v0, p0

    .line 46
    move-wide v1, p1

    .line 47
    invoke-direct/range {v0 .. v9}, Landroid/graphics/LinearGradient;->nativeCreate2(JFFFFIII)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    return-wide p1
.end method
