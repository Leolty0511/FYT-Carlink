.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "SourceFile"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 13

    move-object v0, p0

    move/from16 v7, p3

    move-object/from16 v8, p6

    .line 16
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    .line 17
    iput v1, v0, Landroid/graphics/RadialGradient;->mType:I

    move v9, p1

    .line 18
    iput v9, v0, Landroid/graphics/RadialGradient;->mX:F

    move v10, p2

    .line 19
    iput v10, v0, Landroid/graphics/RadialGradient;->mY:F

    .line 20
    iput v7, v0, Landroid/graphics/RadialGradient;->mRadius:F

    move/from16 v11, p4

    .line 21
    iput v11, v0, Landroid/graphics/RadialGradient;->mColor0:I

    move/from16 v12, p5

    .line 22
    iput v12, v0, Landroid/graphics/RadialGradient;->mColor1:I

    .line 23
    iput-object v8, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 24
    iget v6, v8, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v6}, Landroid/graphics/RadialGradient;->nativeCreate2(FFFIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/Shader;->native_instance:I

    .line 25
    iget v8, v8, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/RadialGradient;->nativePostCreate2(IFFFIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/Shader;->native_shader:I

    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "radius must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 13

    move-object v0, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, v7, v1

    if-lez v1, :cond_3

    .line 2
    array-length v1, v8

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    if-eqz v9, :cond_1

    .line 3
    array-length v1, v8

    array-length v2, v9

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "color and position arrays must be of equal length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 5
    iput v1, v0, Landroid/graphics/RadialGradient;->mType:I

    move v11, p1

    .line 6
    iput v11, v0, Landroid/graphics/RadialGradient;->mX:F

    move v12, p2

    .line 7
    iput v12, v0, Landroid/graphics/RadialGradient;->mY:F

    .line 8
    iput v7, v0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 9
    iput-object v8, v0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 10
    iput-object v9, v0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 11
    iput-object v10, v0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 12
    iget v6, v10, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v6}, Landroid/graphics/RadialGradient;->nativeCreate1(FFF[I[FI)I

    move-result v1

    iput v1, v0, Landroid/graphics/Shader;->native_instance:I

    .line 13
    iget v10, v10, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v10

    invoke-static/range {v1 .. v7}, Landroid/graphics/RadialGradient;->nativePostCreate1(IFFF[I[FI)I

    move-result v1

    iput v1, v0, Landroid/graphics/Shader;->native_shader:I

    return-void

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "needs >= 2 number of colors"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "radius must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native nativeCreate1(FFF[I[FI)I
.end method

.method private static native nativeCreate2(FFFIII)I
.end method

.method private static native nativePostCreate1(IFFF[I[FI)I
.end method

.method private static native nativePostCreate2(IFFFIII)I
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 9

    .line 1
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v6, p0, Landroid/graphics/RadialGradient;->mColor0:I

    iget v7, p0, Landroid/graphics/RadialGradient;->mColor1:I

    iget-object v8, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RadialGradient should be created with either colors and positions or center color and edge color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v5, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v1, p0, Landroid/graphics/RadialGradient;->mColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [I

    iget-object v1, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    if-eqz v1, :cond_2

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    iget-object v8, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
