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
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p7

    .line 16
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Shader;-><init>()V

    const/4 v0, 0x2

    .line 17
    iput v0, v9, Landroid/graphics/LinearGradient;->mType:I

    move/from16 v10, p1

    .line 18
    iput v10, v9, Landroid/graphics/LinearGradient;->mX0:F

    move/from16 v11, p2

    .line 19
    iput v11, v9, Landroid/graphics/LinearGradient;->mY0:F

    move/from16 v12, p3

    .line 20
    iput v12, v9, Landroid/graphics/LinearGradient;->mX1:F

    move/from16 v13, p4

    .line 21
    iput v13, v9, Landroid/graphics/LinearGradient;->mY1:F

    move/from16 v14, p5

    .line 22
    iput v14, v9, Landroid/graphics/LinearGradient;->mColor0:I

    move/from16 v15, p6

    .line 23
    iput v15, v9, Landroid/graphics/LinearGradient;->mColor1:I

    .line 24
    iput-object v8, v9, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 25
    iget v7, v8, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate2(FFFFIII)I

    move-result v1

    iput v1, v9, Landroid/graphics/Shader;->native_instance:I

    .line 26
    iget v8, v8, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/LinearGradient;->nativePostCreate2(IFFFFIII)I

    move-result v0

    iput v0, v9, Landroid/graphics/Shader;->native_shader:I

    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Shader;-><init>()V

    .line 2
    array-length v0, v8

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    if-eqz v10, :cond_1

    .line 3
    array-length v0, v8

    array-length v1, v10

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5
    iput v0, v9, Landroid/graphics/LinearGradient;->mType:I

    move/from16 v12, p1

    .line 6
    iput v12, v9, Landroid/graphics/LinearGradient;->mX0:F

    move/from16 v13, p2

    .line 7
    iput v13, v9, Landroid/graphics/LinearGradient;->mY0:F

    move/from16 v14, p3

    .line 8
    iput v14, v9, Landroid/graphics/LinearGradient;->mX1:F

    move/from16 v15, p4

    .line 9
    iput v15, v9, Landroid/graphics/LinearGradient;->mY1:F

    .line 10
    iput-object v8, v9, Landroid/graphics/LinearGradient;->mColors:[I

    .line 11
    iput-object v10, v9, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 12
    iput-object v11, v9, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 13
    iget v7, v11, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate1(FFFF[I[FI)I

    move-result v1

    iput v1, v9, Landroid/graphics/Shader;->native_instance:I

    .line 14
    iget v11, v11, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/graphics/LinearGradient;->nativePostCreate1(IFFFF[I[FI)I

    move-result v0

    iput v0, v9, Landroid/graphics/Shader;->native_shader:I

    return-void

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeCreate1(FFFF[I[FI)I
.end method

.method private native nativeCreate2(FFFFIII)I
.end method

.method private native nativePostCreate1(IFFFF[I[FI)I
.end method

.method private native nativePostCreate2(IFFFFIII)I
.end method


# virtual methods
.method public copy()Landroid/graphics/Shader;
    .locals 10

    .line 1
    iget v0, p0, Landroid/graphics/LinearGradient;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget v7, p0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v8, p0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v9, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearGradient should be created with either colors and positions or start color and end color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v6, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v1, p0, Landroid/graphics/LinearGradient;->mColors:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [I

    iget-object v1, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    if-eqz v1, :cond_2

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    iget-object v9, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method
