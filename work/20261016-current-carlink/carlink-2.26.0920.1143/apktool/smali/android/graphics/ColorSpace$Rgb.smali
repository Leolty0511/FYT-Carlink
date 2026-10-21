.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mInverseTransform:[F

.field private final mIsSrgb:Z

.field private final mIsWideGamut:Z

.field private final mMax:F

.field private final mMin:F

.field private final mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mPrimaries:[F

.field private mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final mTransform:[F

.field private final mWhitePoint:[F


# direct methods
.method private constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .locals 4

    .line 38
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    .line 39
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object p3

    iput-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 40
    iget-object p3, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iput-object p3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 41
    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 42
    invoke-static {p2}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 43
    iget p2, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iput p2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 44
    iget p2, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iput p2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 45
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 46
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 47
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 48
    iget-object p2, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 49
    iget-boolean p2, p1, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iput-boolean p2, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 50
    iget-boolean p2, p1, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iput-boolean p2, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 51
    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 9

    .line 11
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    .line 7
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 9

    .line 5
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FD)V
    .locals 9

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 12
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FDFFI)V
    .locals 20

    move-wide/from16 v9, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v9, v0

    if-nez v2, :cond_0

    .line 13
    invoke-static {}, Landroid/animation/b;->k()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/c;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v10, v4}, Landroid/graphics/c;-><init>(DI)V

    :goto_0
    move-object v15, v3

    if-nez v2, :cond_1

    .line 14
    invoke-static {}, Landroid/animation/b;->k()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/c;

    const/4 v4, 0x1

    invoke-direct {v3, v9, v10, v4}, Landroid/graphics/c;-><init>(DI)V

    :goto_1
    move-object/from16 v16, v3

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    .line 15
    invoke-direct/range {v11 .. v19}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    if-nez v2, :cond_2

    .line 16
    new-instance v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v8}, Ljava/lang/Math;->ulp(F)F

    move-result v8

    float-to-double v12, v8

    add-double/2addr v12, v0

    move-object v0, v11

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v12

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    goto :goto_2

    :cond_2
    new-instance v11, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v11

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    :goto_2
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 16

    move-object/from16 v0, p4

    .line 9
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    iget-wide v5, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v5, v5, v3

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/b;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Landroid/graphics/b;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/b;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Landroid/graphics/b;-><init>(Ljava/lang/Object;I)V

    :goto_0
    move-object v11, v5

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/b;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/graphics/b;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/b;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/graphics/b;-><init>(Ljava/lang/Object;I)V

    :goto_1
    move-object v12, v1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p5

    invoke-direct/range {v7 .. v15}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    move-object/from16 v1, p0

    .line 10
    iput-object v0, v1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V
    .locals 7

    .line 18
    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p8, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace$1;)V

    if-eqz p2, :cond_5

    .line 19
    array-length p1, p2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    array-length p1, p2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    :cond_0
    if-eqz p3, :cond_4

    .line 20
    array-length p1, p3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    array-length p1, p3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    cmpl-float p1, p6, p7

    if-gez p1, :cond_2

    .line 21
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 22
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 23
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 24
    invoke-static {p1}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 25
    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 26
    iput-object p5, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 27
    iput p6, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 28
    iput p7, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 29
    new-instance p1, Landroid/graphics/b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Landroid/graphics/b;-><init>(Ljava/lang/Object;I)V

    .line 30
    invoke-static {p4, p1}, Landroid/animation/b;->m(Ljava/util/function/DoubleUnaryOperator;Landroid/graphics/b;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 31
    invoke-static {p1, p5}, Landroid/animation/b;->l(Landroid/graphics/b;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 32
    invoke-static {v0, p6, p7}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 33
    invoke-static/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result p1

    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return-void

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid range: min="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", max="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "; min must be strictly < max"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The transfer functions of a color space cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method public static synthetic access$000(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object p0
.end method

.method public static synthetic access$100(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object p0
.end method

.method public static synthetic access$2300(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method public static synthetic access$2400(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method public static synthetic access$2500(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object p0
.end method

.method public static synthetic access$300(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 0

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method private static area([F)F
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget v1, p0, v1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget v2, p0, v2

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    aget v3, p0, v3

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    aget v4, p0, v4

    .line 15
    .line 16
    const/4 v5, 0x5

    .line 17
    aget p0, p0, v5

    .line 18
    .line 19
    mul-float v5, v0, v3

    .line 20
    .line 21
    mul-float v6, v1, v4

    .line 22
    .line 23
    add-float/2addr v6, v5

    .line 24
    mul-float v5, v2, p0

    .line 25
    .line 26
    add-float/2addr v5, v6

    .line 27
    mul-float/2addr v3, v4

    .line 28
    sub-float/2addr v5, v3

    .line 29
    mul-float/2addr v1, v2

    .line 30
    sub-float/2addr v5, v1

    .line 31
    mul-float/2addr v0, p0

    .line 32
    sub-float/2addr v5, v0

    .line 33
    const/high16 p0, 0x3f000000    # 0.5f

    .line 34
    .line 35
    mul-float/2addr v5, p0

    .line 36
    const/4 p0, 0x0

    .line 37
    cmpg-float p0, v5, p0

    .line 38
    .line 39
    if-gez p0, :cond_0

    .line 40
    .line 41
    neg-float v5, v5

    .line 42
    :cond_0
    return v5
.end method

.method public static synthetic c(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$4(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private clamp(D)D
    .locals 3

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v1, v0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    float-to-double p1, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v1, v0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide p1
.end method

.method private static computePrimaries([F)[F
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-array v2, v0, [F

    .line 12
    .line 13
    fill-array-data v2, :array_1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-array v3, v0, [F

    .line 21
    .line 22
    fill-array-data v3, :array_2

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v3}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v3, 0x0

    .line 30
    aget v4, v1, v3

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    aget v6, v1, v5

    .line 34
    .line 35
    add-float v7, v4, v6

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    aget v1, v1, v8

    .line 39
    .line 40
    add-float/2addr v7, v1

    .line 41
    aget v1, v2, v3

    .line 42
    .line 43
    aget v9, v2, v5

    .line 44
    .line 45
    add-float/2addr v1, v9

    .line 46
    aget v9, v2, v8

    .line 47
    .line 48
    add-float/2addr v1, v9

    .line 49
    aget v9, p0, v3

    .line 50
    .line 51
    aget v10, p0, v5

    .line 52
    .line 53
    add-float/2addr v9, v10

    .line 54
    aget v10, p0, v8

    .line 55
    .line 56
    add-float/2addr v9, v10

    .line 57
    const/4 v10, 0x6

    .line 58
    new-array v10, v10, [F

    .line 59
    .line 60
    div-float/2addr v4, v7

    .line 61
    aput v4, v10, v3

    .line 62
    .line 63
    div-float/2addr v6, v7

    .line 64
    aput v6, v10, v5

    .line 65
    .line 66
    aget v4, v2, v3

    .line 67
    .line 68
    div-float/2addr v4, v1

    .line 69
    aput v4, v10, v8

    .line 70
    .line 71
    aget v2, v2, v5

    .line 72
    .line 73
    div-float/2addr v2, v1

    .line 74
    aput v2, v10, v0

    .line 75
    .line 76
    aget v0, p0, v3

    .line 77
    .line 78
    div-float/2addr v0, v9

    .line 79
    const/4 v1, 0x4

    .line 80
    aput v0, v10, v1

    .line 81
    .line 82
    aget p0, p0, v5

    .line 83
    .line 84
    div-float/2addr p0, v9

    .line 85
    const/4 v0, 0x5

    .line 86
    aput p0, v10, v0

    .line 87
    .line 88
    return-object v10

    .line 89
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeWhitePoint([F)[F
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aget v1, p0, v0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aget v3, p0, v2

    .line 16
    .line 17
    add-float v4, v1, v3

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    aget p0, p0, v5

    .line 21
    .line 22
    add-float/2addr v4, p0

    .line 23
    new-array p0, v5, [F

    .line 24
    .line 25
    div-float/2addr v1, v4

    .line 26
    aput v1, p0, v0

    .line 27
    .line 28
    div-float/2addr v3, v4

    .line 29
    aput v3, p0, v2

    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeXYZMatrix([F[F)[F
    .locals 25

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p0, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p0, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget v7, p0, v6

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    aget v9, p0, v8

    .line 15
    .line 16
    const/4 v10, 0x5

    .line 17
    aget v11, p0, v10

    .line 18
    .line 19
    aget v12, p1, v0

    .line 20
    .line 21
    aget v13, p1, v2

    .line 22
    .line 23
    const/high16 v14, 0x3f800000    # 1.0f

    .line 24
    .line 25
    sub-float v15, v14, v1

    .line 26
    .line 27
    div-float v16, v15, v3

    .line 28
    .line 29
    sub-float v17, v14, v5

    .line 30
    .line 31
    div-float v18, v17, v7

    .line 32
    .line 33
    sub-float v19, v14, v9

    .line 34
    .line 35
    div-float v20, v19, v11

    .line 36
    .line 37
    sub-float v21, v14, v12

    .line 38
    .line 39
    div-float v21, v21, v13

    .line 40
    .line 41
    div-float v22, v1, v3

    .line 42
    .line 43
    div-float v23, v5, v7

    .line 44
    .line 45
    div-float v24, v9, v11

    .line 46
    .line 47
    div-float/2addr v12, v13

    .line 48
    sub-float v21, v21, v16

    .line 49
    .line 50
    sub-float v23, v23, v22

    .line 51
    .line 52
    mul-float v21, v21, v23

    .line 53
    .line 54
    sub-float v12, v12, v22

    .line 55
    .line 56
    sub-float v18, v18, v16

    .line 57
    .line 58
    mul-float v13, v12, v18

    .line 59
    .line 60
    sub-float v21, v21, v13

    .line 61
    .line 62
    sub-float v20, v20, v16

    .line 63
    .line 64
    mul-float v20, v20, v23

    .line 65
    .line 66
    sub-float v24, v24, v22

    .line 67
    .line 68
    mul-float v18, v18, v24

    .line 69
    .line 70
    sub-float v20, v20, v18

    .line 71
    .line 72
    div-float v21, v21, v20

    .line 73
    .line 74
    mul-float v24, v24, v21

    .line 75
    .line 76
    sub-float v12, v12, v24

    .line 77
    .line 78
    div-float v12, v12, v23

    .line 79
    .line 80
    sub-float/2addr v14, v12

    .line 81
    sub-float v14, v14, v21

    .line 82
    .line 83
    div-float v13, v14, v3

    .line 84
    .line 85
    div-float v16, v12, v7

    .line 86
    .line 87
    div-float v18, v21, v11

    .line 88
    .line 89
    const/16 v10, 0x9

    .line 90
    .line 91
    new-array v10, v10, [F

    .line 92
    .line 93
    mul-float/2addr v1, v13

    .line 94
    aput v1, v10, v0

    .line 95
    .line 96
    aput v14, v10, v2

    .line 97
    .line 98
    sub-float/2addr v15, v3

    .line 99
    mul-float/2addr v15, v13

    .line 100
    aput v15, v10, v4

    .line 101
    .line 102
    mul-float v5, v5, v16

    .line 103
    .line 104
    aput v5, v10, v6

    .line 105
    .line 106
    aput v12, v10, v8

    .line 107
    .line 108
    sub-float v17, v17, v7

    .line 109
    .line 110
    mul-float v17, v17, v16

    .line 111
    .line 112
    const/4 v0, 0x5

    .line 113
    aput v17, v10, v0

    .line 114
    .line 115
    const/4 v0, 0x6

    .line 116
    mul-float v9, v9, v18

    .line 117
    .line 118
    aput v9, v10, v0

    .line 119
    .line 120
    const/4 v0, 0x7

    .line 121
    aput v21, v10, v0

    .line 122
    .line 123
    sub-float v19, v19, v11

    .line 124
    .line 125
    mul-float v19, v19, v18

    .line 126
    .line 127
    const/16 v0, 0x8

    .line 128
    .line 129
    aput v19, v10, v0

    .line 130
    .line 131
    return-object v10
.end method

.method private static contains([F[F)Z
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget v2, p0, v1

    .line 6
    .line 7
    aget v3, p1, v1

    .line 8
    .line 9
    sub-float/2addr v2, v3

    .line 10
    aput v2, v0, v1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget v4, p0, v3

    .line 14
    .line 15
    aget v5, p1, v3

    .line 16
    .line 17
    sub-float/2addr v4, v5

    .line 18
    aput v4, v0, v3

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    aget v6, p0, v5

    .line 22
    .line 23
    aget v7, p1, v5

    .line 24
    .line 25
    sub-float/2addr v6, v7

    .line 26
    aput v6, v0, v5

    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    aget v7, p0, v6

    .line 30
    .line 31
    aget v8, p1, v6

    .line 32
    .line 33
    sub-float/2addr v7, v8

    .line 34
    aput v7, v0, v6

    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    aget v8, p0, v7

    .line 38
    .line 39
    aget v9, p1, v7

    .line 40
    .line 41
    sub-float/2addr v8, v9

    .line 42
    aput v8, v0, v7

    .line 43
    .line 44
    const/4 v8, 0x5

    .line 45
    aget p0, p0, v8

    .line 46
    .line 47
    aget v9, p1, v8

    .line 48
    .line 49
    sub-float/2addr p0, v9

    .line 50
    aput p0, v0, v8

    .line 51
    .line 52
    aget p0, p1, v1

    .line 53
    .line 54
    aget v9, p1, v7

    .line 55
    .line 56
    sub-float/2addr p0, v9

    .line 57
    aget v9, p1, v3

    .line 58
    .line 59
    aget v10, p1, v8

    .line 60
    .line 61
    sub-float/2addr v9, v10

    .line 62
    invoke-static {v2, v4, p0, v9}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const/4 v2, 0x0

    .line 67
    cmpg-float p0, p0, v2

    .line 68
    .line 69
    if-ltz p0, :cond_3

    .line 70
    .line 71
    aget p0, p1, v1

    .line 72
    .line 73
    aget v4, p1, v5

    .line 74
    .line 75
    sub-float/2addr p0, v4

    .line 76
    aget v4, p1, v3

    .line 77
    .line 78
    aget v9, p1, v6

    .line 79
    .line 80
    sub-float/2addr v4, v9

    .line 81
    aget v9, v0, v1

    .line 82
    .line 83
    aget v10, v0, v3

    .line 84
    .line 85
    invoke-static {p0, v4, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    cmpg-float p0, p0, v2

    .line 90
    .line 91
    if-gez p0, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    aget p0, v0, v5

    .line 95
    .line 96
    aget v4, v0, v6

    .line 97
    .line 98
    aget v9, p1, v5

    .line 99
    .line 100
    aget v10, p1, v1

    .line 101
    .line 102
    sub-float/2addr v9, v10

    .line 103
    aget v10, p1, v6

    .line 104
    .line 105
    aget v11, p1, v3

    .line 106
    .line 107
    sub-float/2addr v10, v11

    .line 108
    invoke-static {p0, v4, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    cmpg-float p0, p0, v2

    .line 113
    .line 114
    if-ltz p0, :cond_3

    .line 115
    .line 116
    aget p0, p1, v5

    .line 117
    .line 118
    aget v4, p1, v7

    .line 119
    .line 120
    sub-float/2addr p0, v4

    .line 121
    aget v4, p1, v6

    .line 122
    .line 123
    aget v9, p1, v8

    .line 124
    .line 125
    sub-float/2addr v4, v9

    .line 126
    aget v9, v0, v5

    .line 127
    .line 128
    aget v10, v0, v6

    .line 129
    .line 130
    invoke-static {p0, v4, v9, v10}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    cmpg-float p0, p0, v2

    .line 135
    .line 136
    if-gez p0, :cond_1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    aget p0, v0, v7

    .line 140
    .line 141
    aget v4, v0, v8

    .line 142
    .line 143
    aget v9, p1, v7

    .line 144
    .line 145
    aget v5, p1, v5

    .line 146
    .line 147
    sub-float/2addr v9, v5

    .line 148
    aget v5, p1, v8

    .line 149
    .line 150
    aget v6, p1, v6

    .line 151
    .line 152
    sub-float/2addr v5, v6

    .line 153
    invoke-static {p0, v4, v9, v5}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    cmpg-float p0, p0, v2

    .line 158
    .line 159
    if-ltz p0, :cond_3

    .line 160
    .line 161
    aget p0, p1, v7

    .line 162
    .line 163
    aget v4, p1, v1

    .line 164
    .line 165
    sub-float/2addr p0, v4

    .line 166
    aget v4, p1, v8

    .line 167
    .line 168
    aget p1, p1, v3

    .line 169
    .line 170
    sub-float/2addr v4, p1

    .line 171
    aget p1, v0, v7

    .line 172
    .line 173
    aget v0, v0, v8

    .line 174
    .line 175
    invoke-static {p0, v4, p1, v0}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    cmpg-float p0, p0, v2

    .line 180
    .line 181
    if-gez p0, :cond_2

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_2
    return v3

    .line 185
    :cond_3
    :goto_0
    return v1
.end method

.method private static cross(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method public static synthetic d(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic e(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$5(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Landroid/graphics/ColorSpace$Rgb;D)D
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic g(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic h(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic i(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p6, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1400()[F

    move-result-object p6

    invoke-static {p0, p6}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    move-result p0

    const/4 p6, 0x0

    if-nez p0, :cond_1

    return p6

    .line 3
    :cond_1
    sget-object p0, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    invoke-static {p1, p0}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    move-result p0

    if-nez p0, :cond_2

    return p6

    .line 4
    :cond_2
    invoke-static {p2}, Landroid/animation/b;->a(Ljava/util/function/DoubleUnaryOperator;)D

    move-result-wide p0

    const-wide v1, 0x3fe000d1b71758e2L    # 0.5001

    cmpg-double p0, p0, v1

    if-gez p0, :cond_3

    return p6

    .line 5
    :cond_3
    invoke-static {p3}, Landroid/animation/b;->a(Ljava/util/function/DoubleUnaryOperator;)D

    move-result-wide p0

    cmpl-double p0, p0, v1

    if-lez p0, :cond_4

    return p6

    :cond_4
    const/4 p0, 0x0

    cmpl-float p0, p4, p0

    if-eqz p0, :cond_5

    return p6

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p5, p0

    if-eqz p0, :cond_6

    return p6

    :cond_6
    return v0
.end method

.method private static isWideGamut([FFF)Z
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    invoke-static {}, Landroid/graphics/ColorSpace;->access$1600()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1400()[F

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$2000(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$new$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 16

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v15}, Landroid/graphics/ColorSpace;->access$1900(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$new$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 12

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->access$1800(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$new$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 16

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v15}, Landroid/graphics/ColorSpace;->access$1700(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$new$4(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$new$5(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static xyPrimaries([F)[F
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    aget v2, p0, v4

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    aget v5, p0, v3

    .line 14
    .line 15
    add-float v6, v2, v5

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    aget v8, p0, v7

    .line 19
    .line 20
    add-float/2addr v6, v8

    .line 21
    div-float/2addr v2, v6

    .line 22
    aput v2, v1, v4

    .line 23
    .line 24
    div-float/2addr v5, v6

    .line 25
    aput v5, v1, v3

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    aget v3, p0, v2

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    aget v5, p0, v4

    .line 32
    .line 33
    add-float v6, v3, v5

    .line 34
    .line 35
    const/4 v8, 0x5

    .line 36
    aget v9, p0, v8

    .line 37
    .line 38
    add-float/2addr v6, v9

    .line 39
    div-float/2addr v3, v6

    .line 40
    aput v3, v1, v7

    .line 41
    .line 42
    div-float/2addr v5, v6

    .line 43
    aput v5, v1, v2

    .line 44
    .line 45
    aget v0, p0, v0

    .line 46
    .line 47
    const/4 v2, 0x7

    .line 48
    aget v2, p0, v2

    .line 49
    .line 50
    add-float v3, v0, v2

    .line 51
    .line 52
    const/16 v5, 0x8

    .line 53
    .line 54
    aget p0, p0, v5

    .line 55
    .line 56
    add-float/2addr v3, p0

    .line 57
    div-float/2addr v0, v3

    .line 58
    aput v0, v1, v4

    .line 59
    .line 60
    div-float/2addr v2, v3

    .line 61
    aput v2, v1, v8

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object v1
.end method

.method private static xyWhitePoint([F)[F
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    aget v2, p0, v4

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aget v5, p0, v3

    .line 13
    .line 14
    add-float v6, v2, v5

    .line 15
    .line 16
    aget p0, p0, v0

    .line 17
    .line 18
    add-float/2addr v6, p0

    .line 19
    div-float/2addr v2, v6

    .line 20
    aput v2, v1, v4

    .line 21
    .line 22
    div-float/2addr v5, v6

    .line 23
    aput v5, v1, v3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    .line 27
    .line 28
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 29
    .line 30
    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    iget v2, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 40
    .line 41
    iget v3, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    return v1

    .line 50
    :cond_4
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 51
    .line 52
    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    return v1

    .line 61
    :cond_5
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 62
    .line 63
    iget-object v3, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_6

    .line 70
    .line 71
    return v1

    .line 72
    :cond_6
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1

    .line 83
    :cond_7
    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 84
    .line 85
    if-nez v2, :cond_8

    .line 86
    .line 87
    return v0

    .line 88
    :cond_8
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 89
    .line 90
    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_9

    .line 97
    .line 98
    return v1

    .line 99
    :cond_9
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 100
    .line 101
    iget-object p1, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    return p1

    .line 108
    :cond_a
    :goto_0
    return v1
.end method

.method public fromLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public fromLinear([F)[F
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 4
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public fromXyz([F)[F
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, p1, v1

    .line 10
    .line 11
    float-to-double v2, v2

    .line 12
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    double-to-float v0, v2

    .line 17
    aput v0, p1, v1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aget v2, p1, v1

    .line 23
    .line 24
    float-to-double v2, v2

    .line 25
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    double-to-float v0, v2

    .line 30
    aput v0, p1, v1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    aget v2, p1, v1

    .line 36
    .line 37
    float-to-double v2, v2

    .line 38
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    double-to-float v0, v2

    .line 43
    aput v0, p1, v1

    .line 44
    .line 45
    return-object p1
.end method

.method public getEotf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getInverseTransform()[F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getInverseTransform([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 0

    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    iget p1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return p1
.end method

.method public getOetf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getPrimaries()[F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getPrimaries([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method public getTransform()[F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getTransform([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1
.end method

.method public getWhitePoint()[F
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getWhitePoint([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 2
    aget v0, v0, v1

    aput v0, p1, v1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    cmpl-float v3, v1, v2

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v4

    .line 39
    :goto_0
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 43
    .line 44
    cmpl-float v2, v1, v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v1, v4

    .line 54
    :goto_1
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :cond_2
    add-int/2addr v0, v4

    .line 66
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v1, v0

    .line 79
    mul-int/lit8 v1, v1, 0x1f

    .line 80
    .line 81
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public toLinear(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public toLinear([F)[F
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 4
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public toXyz([F)[F
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, p1, v1

    .line 5
    .line 6
    float-to-double v2, v2

    .line 7
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    double-to-float v0, v2

    .line 12
    aput v0, p1, v1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget v2, p1, v1

    .line 18
    .line 19
    float-to-double v2, v2

    .line 20
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    double-to-float v0, v2

    .line 25
    aput v0, p1, v1

    .line 26
    .line 27
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aget v2, p1, v1

    .line 31
    .line 32
    float-to-double v2, v2

    .line 33
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    double-to-float v0, v2

    .line 38
    aput v0, p1, v1

    .line 39
    .line 40
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method
