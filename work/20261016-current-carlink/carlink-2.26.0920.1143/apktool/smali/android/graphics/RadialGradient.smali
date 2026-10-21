.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "SourceFile"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mCenterColor:I

.field private mColors:[I

.field private mEdgeColor:I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 16
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 17
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 18
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 19
    iput p4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 20
    iput p5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 21
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "radius must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_4

    .line 2
    array-length v0, p4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    if-eqz p5, :cond_1

    .line 3
    array-length v0, p4

    array-length v1, p5

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
    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 6
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 7
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 8
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 9
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/graphics/RadialGradient;->mColors:[I

    if-eqz p5, :cond_2

    .line 10
    invoke-virtual {p5}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 11
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "needs >= 2 number of colors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "radius must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nativeCreate1(JFFF[I[FI)J
.end method

.method private static native nativeCreate2(JFFFIII)J
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/RadialGradient;->mType:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 9
    .line 10
    iget v4, v0, Landroid/graphics/RadialGradient;->mX:F

    .line 11
    .line 12
    iget v5, v0, Landroid/graphics/RadialGradient;->mY:F

    .line 13
    .line 14
    iget v6, v0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 15
    .line 16
    iget-object v2, v0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 17
    .line 18
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v7, v2

    .line 23
    check-cast v7, [I

    .line 24
    .line 25
    iget-object v2, v0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, [F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    move-object v8, v2

    .line 38
    iget-object v9, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 39
    .line 40
    move-object v3, v1

    .line 41
    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 46
    .line 47
    iget v11, v0, Landroid/graphics/RadialGradient;->mX:F

    .line 48
    .line 49
    iget v12, v0, Landroid/graphics/RadialGradient;->mY:F

    .line 50
    .line 51
    iget v13, v0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 52
    .line 53
    iget v14, v0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 54
    .line 55
    iget v15, v0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 56
    .line 57
    iget-object v2, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 58
    .line 59
    move-object v10, v1

    .line 60
    move-object/from16 v16, v2

    .line 61
    .line 62
    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public createNativeInstance(J)J
    .locals 10

    .line 1
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v4, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 7
    .line 8
    iget v5, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 9
    .line 10
    iget v6, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 11
    .line 12
    iget-object v7, p0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 13
    .line 14
    iget-object v8, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 15
    .line 16
    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 17
    .line 18
    iget v9, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 19
    .line 20
    move-wide v2, p1

    .line 21
    invoke-static/range {v2 .. v9}, Landroid/graphics/RadialGradient;->nativeCreate1(JFFF[I[FI)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    return-wide p1

    .line 26
    :cond_0
    iget v2, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 27
    .line 28
    iget v3, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 29
    .line 30
    iget v4, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 31
    .line 32
    iget v5, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 33
    .line 34
    iget v6, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 35
    .line 36
    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 37
    .line 38
    iget v7, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 39
    .line 40
    move-wide v0, p1

    .line 41
    invoke-static/range {v0 .. v7}, Landroid/graphics/RadialGradient;->nativeCreate2(JFFFIII)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    return-wide p1
.end method
