.class public final Landroid/util/Half;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Half;",
        ">;"
    }
.end annotation


# static fields
.field public static final EPSILON:S = 0x1400s

.field private static final FP16_COMBINED:I = 0x7fff

.field private static final FP16_EXPONENT_BIAS:I = 0xf

.field private static final FP16_EXPONENT_MASK:I = 0x1f

.field private static final FP16_EXPONENT_MAX:I = 0x7c00

.field private static final FP16_EXPONENT_SHIFT:I = 0xa

.field private static final FP16_SIGNIFICAND_MASK:I = 0x3ff

.field private static final FP16_SIGN_MASK:I = 0x8000

.field private static final FP16_SIGN_SHIFT:I = 0xf

.field private static final FP32_DENORMAL_FLOAT:F

.field private static final FP32_DENORMAL_MAGIC:I = 0x3f000000

.field private static final FP32_EXPONENT_BIAS:I = 0x7f

.field private static final FP32_EXPONENT_MASK:I = 0xff

.field private static final FP32_EXPONENT_SHIFT:I = 0x17

.field private static final FP32_SIGNIFICAND_MASK:I = 0x7fffff

.field private static final FP32_SIGN_SHIFT:I = 0x1f

.field public static final LOWEST_VALUE:S = -0x401s

.field public static final MAX_EXPONENT:I = 0xf

.field public static final MAX_VALUE:S = 0x7bffs

.field public static final MIN_EXPONENT:I = -0xe

.field public static final MIN_NORMAL:S = 0x400s

.field public static final MIN_VALUE:S = 0x1s

.field public static final NEGATIVE_INFINITY:S = -0x400s

.field public static final NEGATIVE_ZERO:S = -0x8000s

.field public static final NaN:S = 0x7e00s

.field public static final POSITIVE_INFINITY:S = 0x7c00s

.field public static final POSITIVE_ZERO:S = 0x0s

.field public static final SIZE:I = 0x10


# instance fields
.field private final mValue:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    double-to-float p1, p1

    .line 6
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-short p1, p0, Landroid/util/Half;->mValue:S

    return-void
.end method

.method public static abs(S)S
    .locals 0

    and-int/lit16 p0, p0, 0x7fff

    int-to-short p0, p0

    return p0
.end method

.method public static ceil(S)S
    .locals 4

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x1

    const/16 v2, 0x3c00

    if-ge v0, v2, :cond_1

    const v3, 0x8000

    and-int/2addr v3, p0

    shr-int/lit8 p0, p0, 0xf

    not-int p0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p0, v1

    neg-int p0, p0

    and-int/2addr p0, v2

    or-int/2addr p0, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x6400

    if-ge v0, v2, :cond_2

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x19

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0xf

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    add-int/2addr p0, v1

    not-int v0, v0

    and-int/2addr p0, v0

    :cond_2
    :goto_1
    int-to-short p0, p0

    return p0
.end method

.method public static compare(SS)I
    .locals 5

    .line 1
    invoke-static {p0, p1}, Landroid/util/Half;->less(SS)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Half;->greater(SS)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    .line 18
    .line 19
    const/16 v3, 0x7e00

    .line 20
    .line 21
    const/16 v4, 0x7c00

    .line 22
    .line 23
    if-le v0, v4, :cond_2

    .line 24
    .line 25
    move p0, v3

    .line 26
    :cond_2
    and-int/lit16 v0, p1, 0x7fff

    .line 27
    .line 28
    if-le v0, v4, :cond_3

    .line 29
    .line 30
    move p1, v3

    .line 31
    :cond_3
    if-ne p0, p1, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    if-ge p0, p1, :cond_5

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_5
    move v1, v2

    .line 39
    :goto_0
    return v1
.end method

.method public static copySign(SS)S
    .locals 1

    const v0, 0x8000

    and-int/2addr p1, v0

    and-int/lit16 p0, p0, 0x7fff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static equals(SS)Z
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x0

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    if-eq p0, p1, :cond_2

    or-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x7fff

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static floor(S)S
    .locals 4

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/lit16 v1, p0, 0x7fff

    const/16 v2, 0x3c00

    if-ge v1, v2, :cond_1

    const v1, 0x8000

    and-int v3, p0, v1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 p0, v0, 0x3c00

    or-int/2addr p0, v3

    goto :goto_1

    :cond_1
    const/16 v0, 0x6400

    if-ge v1, v0, :cond_2

    shr-int/lit8 v0, v1, 0xa

    rsub-int/lit8 v0, v0, 0x19

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0xf

    neg-int v1, v1

    and-int/2addr v1, v0

    add-int/2addr p0, v1

    not-int v0, v0

    and-int/2addr p0, v0

    :cond_2
    :goto_1
    int-to-short p0, p0

    return p0
.end method

.method public static getExponent(S)I
    .locals 0

    ushr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method public static getSign(S)I
    .locals 1

    const v0, 0x8000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSignificand(S)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method public static greater(SS)Z
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x0

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    and-int/2addr p0, v3

    if-eqz v2, :cond_2

    sub-int p0, v0, p0

    :cond_2
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    and-int/2addr p1, v3

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_3
    and-int v0, p1, v3

    :goto_0
    if-le p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static greaterEquals(SS)Z
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x0

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    and-int/2addr p0, v3

    if-eqz v2, :cond_2

    sub-int p0, v0, p0

    :cond_2
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    and-int/2addr p1, v3

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_3
    and-int v0, p1, v3

    :goto_0
    if-lt p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static halfToIntBits(S)I
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 p0, 0x7e00

    goto :goto_0

    :cond_0
    const v0, 0xffff

    and-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public static halfToRawIntBits(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static halfToShortBits(S)S
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    const/16 p0, 0x7e00

    :cond_0
    return p0
.end method

.method public static hashCode(S)I
    .locals 0

    .line 2
    invoke-static {p0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result p0

    return p0
.end method

.method public static intBitsToHalf(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static isInfinite(S)Z
    .locals 1

    and-int/lit16 p0, p0, 0x7fff

    const/16 v0, 0x7c00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNaN(S)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x7fff

    const/16 v0, 0x7c00

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNormalized(S)Z
    .locals 1

    const/16 v0, 0x7c00

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static less(SS)Z
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x0

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    and-int/2addr p0, v3

    if-eqz v2, :cond_2

    sub-int p0, v0, p0

    :cond_2
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    and-int/2addr p1, v3

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_3
    and-int v0, p1, v3

    :goto_0
    if-ge p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static lessEquals(SS)Z
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x0

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    const v0, 0x8000

    and-int v2, p0, v0

    const v3, 0xffff

    and-int/2addr p0, v3

    if-eqz v2, :cond_2

    sub-int p0, v0, p0

    :cond_2
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    and-int/2addr p1, v3

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_3
    and-int v0, p1, v3

    :goto_0
    if-gt p0, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static max(SS)S
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v3, p1, 0x7fff

    if-le v3, v2, :cond_1

    return v1

    :cond_1
    const v1, 0x8000

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    and-int v0, p0, v1

    if-eqz v0, :cond_2

    move p0, p1

    :cond_2
    return p0

    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_0

    :cond_4
    and-int v0, p0, v2

    :goto_0
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_5
    and-int v1, p1, v2

    :goto_1
    if-le v0, v1, :cond_6

    goto :goto_2

    :cond_6
    move p0, p1

    :goto_2
    return p0
.end method

.method public static min(SS)S
    .locals 4

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit16 v3, p1, 0x7fff

    if-le v3, v2, :cond_1

    return v1

    :cond_1
    const v1, 0x8000

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    and-int v0, p0, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    :goto_0
    return p0

    :cond_3
    and-int v0, p0, v1

    const v2, 0xffff

    if-eqz v0, :cond_4

    and-int v0, p0, v2

    sub-int v0, v1, v0

    goto :goto_1

    :cond_4
    and-int v0, p0, v2

    :goto_1
    and-int v3, p1, v1

    if-eqz v3, :cond_5

    and-int/2addr v2, p1

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_5
    and-int v1, p1, v2

    :goto_2
    if-ge v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move p0, p1

    :goto_3
    return p0
.end method

.method public static parseHalf(Ljava/lang/String;)S
    .locals 0

    invoke-static {p0}, Lsun/misc/FloatingDecimal;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Landroid/util/Half;->toHalf(F)S

    move-result p0

    return p0
.end method

.method public static round(S)S
    .locals 4

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/lit16 v1, p0, 0x7fff

    const/16 v2, 0x3c00

    if-ge v1, v2, :cond_1

    const v3, 0x8000

    and-int/2addr p0, v3

    const/16 v3, 0x3800

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v2

    or-int/2addr p0, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x6400

    if-ge v1, v0, :cond_2

    shr-int/lit8 v0, v1, 0xa

    rsub-int/lit8 v0, v0, 0x19

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    add-int/2addr p0, v0

    not-int v0, v2

    and-int/2addr p0, v0

    :cond_2
    :goto_1
    int-to-short p0, p0

    return p0
.end method

.method public static toFloat(S)F
    .locals 4

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    const v0, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, p0

    .line 9
    ushr-int/lit8 v1, p0, 0xa

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    and-int/2addr v1, v2

    .line 14
    and-int/lit16 p0, p0, 0x3ff

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    add-int/2addr p0, v1

    .line 23
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    sget v1, Landroid/util/Half;->FP32_DENORMAL_FLOAT:F

    .line 28
    .line 29
    sub-float/2addr p0, v1

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    neg-float p0, p0

    .line 34
    :goto_0
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    move v1, p0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    shl-int/lit8 p0, p0, 0xd

    .line 39
    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    const/16 v1, 0xff

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    add-int/lit8 v1, v1, -0xf

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x7f

    .line 48
    .line 49
    :goto_1
    move v3, v1

    .line 50
    move v1, p0

    .line 51
    move p0, v3

    .line 52
    :goto_2
    shl-int/lit8 v0, v0, 0x10

    .line 53
    .line 54
    shl-int/lit8 p0, p0, 0x17

    .line 55
    .line 56
    or-int/2addr p0, v0

    .line 57
    or-int/2addr p0, v1

    .line 58
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public static toHalf(F)S
    .locals 5

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1f

    ushr-int/lit8 v1, p0, 0x17

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const v3, 0x7fffff

    and-int/2addr p0, v3

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    if-eqz p0, :cond_6

    const/16 p0, 0x200

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x7f

    add-int/lit8 v1, v1, 0xf

    if-lt v1, v3, :cond_1

    const/16 v3, 0x31

    goto :goto_2

    :cond_1
    if-gtz v1, :cond_4

    const/16 v2, -0xa

    if-ge v1, v2, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/high16 v2, 0x800000

    or-int/2addr p0, v2

    rsub-int/lit8 v1, v1, 0x1

    shr-int/2addr p0, v1

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_3

    add-int/lit16 p0, p0, 0x2000

    :cond_3
    shr-int/lit8 p0, p0, 0xd

    move v3, v4

    :goto_0
    move v4, p0

    goto :goto_2

    :cond_4
    shr-int/lit8 v4, p0, 0xd

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_5

    shl-int/lit8 p0, v1, 0xa

    or-int/2addr p0, v4

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0xf

    or-int/2addr p0, v0

    :goto_1
    int-to-short p0, p0

    return p0

    :cond_5
    move v3, v1

    :cond_6
    :goto_2
    shl-int/lit8 p0, v0, 0xf

    shl-int/lit8 v0, v3, 0xa

    or-int/2addr p0, v0

    or-int/2addr p0, v4

    goto :goto_1
.end method

.method public static toHexString(S)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, 0xffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p0, v1

    .line 10
    ushr-int/lit8 v1, p0, 0xf

    .line 11
    .line 12
    ushr-int/lit8 v2, p0, 0xa

    .line 13
    .line 14
    const/16 v3, 0x1f

    .line 15
    .line 16
    and-int/2addr v2, v3

    .line 17
    and-int/lit16 p0, p0, 0x3ff

    .line 18
    .line 19
    const/16 v4, 0x2d

    .line 20
    .line 21
    if-ne v2, v3, :cond_2

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string p0, "Infinity"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "NaN"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x1

    .line 43
    if-ne v1, v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    const-string v1, ""

    .line 49
    .line 50
    const-string v3, "0{2,}$"

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    const-string p0, "0x0.0p0"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const-string v2, "0x0."

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, "p-14"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const-string v4, "0x1."

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const/16 p0, 0x70

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v2, v2, -0xf

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trunc(S)S
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x3c00

    if-ge v0, v1, :cond_0

    const v0, 0x8000

    :goto_0
    and-int/2addr p0, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x6400

    if-ge v0, v1, :cond_1

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x19

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    not-int v0, v0

    goto :goto_0

    :cond_1
    :goto_1
    int-to-short p0, p0

    return p0
.end method

.method public static valueOf(F)Landroid/util/Half;
    .locals 1

    .line 2
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(F)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Half;
    .locals 1

    .line 3
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(S)Landroid/util/Half;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Half;

    invoke-direct {v0, p0}, Landroid/util/Half;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Landroid/util/Half;)I
    .locals 1

    .line 2
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    iget-short p1, p1, Landroid/util/Half;->mValue:S

    invoke-static {v0, p1}, Landroid/util/Half;->compare(SS)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Half;

    invoke-virtual {p0, p1}, Landroid/util/Half;->compareTo(Landroid/util/Half;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/util/Half;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/Half;

    iget-short p1, p1, Landroid/util/Half;->mValue:S

    .line 3
    invoke-static {p1}, Landroid/util/Half;->halfToIntBits(S)I

    move-result p1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->halfToIntBits(S)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public halfValue()S
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 2
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->isNaN(S)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-short v0, p0, Landroid/util/Half;->mValue:S

    invoke-static {v0}, Landroid/util/Half;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
