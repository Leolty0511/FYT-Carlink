.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/Rational;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/util/Rational;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 8
    .line 9
    new-instance v0, Landroid/util/Rational;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 16
    .line 17
    new-instance v0, Landroid/util/Rational;

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-direct {v0, v3, v1}, Landroid/util/Rational;-><init>(II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 24
    .line 25
    new-instance v0, Landroid/util/Rational;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    if-gez p2, :cond_0

    .line 5
    .line 6
    neg-int p1, p1

    .line 7
    neg-int p2, p2

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    if-lez p1, :cond_1

    .line 13
    .line 14
    iput v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 15
    .line 16
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 20
    .line 21
    if-gez p1, :cond_2

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 25
    .line 26
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-nez p2, :cond_3

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 34
    .line 35
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    if-nez p1, :cond_4

    .line 39
    .line 40
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 41
    .line 42
    iput v0, p0, Landroid/util/Rational;->mDenominator:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    div-int/2addr p1, v0

    .line 50
    iput p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 51
    .line 52
    div-int/2addr p2, v0

    .line 53
    iput p2, p0, Landroid/util/Rational;->mDenominator:I

    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private equals(Landroid/util/Rational;)Z
    .locals 2

    .line 2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    iget p1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static gcd(II)I
    .locals 1

    .line 1
    :goto_0
    move v0, p1

    .line 2
    move p1, p0

    .line 3
    move p0, v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    rem-int/2addr p1, p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 2
    .line 3
    const-string v1, "Invalid Rational: \""

    .line 4
    .line 5
    const-string v2, "\""

    .line 6
    .line 7
    invoke-static {v1, p0, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method private isNegInf()Z
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPosInf()Z
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .locals 3

    .line 1
    const-string/jumbo v0, "string must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "NaN"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, "Infinity"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string v0, "-Infinity"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object p0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    const/16 v0, 0x3a

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gez v0, :cond_3

    .line 47
    .line 48
    const/16 v0, 0x2f

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :cond_3
    if-ltz v0, :cond_4

    .line 55
    .line 56
    :try_start_0
    new-instance v1, Landroid/util/Rational;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-direct {v1, v2, v0}, Landroid/util/Rational;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :catch_0
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    throw p0

    .line 86
    :cond_4
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Landroid/util/Rational;->mNumerator:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 17
    .line 18
    const-string v0, "Rational must be deserialized from a reduced form for zero values"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    return-void

    .line 25
    :cond_2
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 26
    .line 27
    if-nez v1, :cond_5

    .line 28
    .line 29
    if-eq p1, v0, :cond_4

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 36
    .line 37
    const-string v0, "Rational must be deserialized from a reduced form for infinity values"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_4
    :goto_1
    return-void

    .line 44
    :cond_5
    invoke-static {p1, v1}, Landroid/util/Rational;->gcd(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-gt p1, v0, :cond_6

    .line 49
    .line 50
    return-void

    .line 51
    :cond_6
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 52
    .line 53
    const-string v0, "Rational must be deserialized from a reduced form for finite values"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .locals 10

    const-string v0, "another must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v4, v0

    iget v0, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 9
    iget p1, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v6, p1

    iget p1, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v8, p1

    mul-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-gez p1, :cond_5

    return v3

    :cond_5
    if-lez p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v3

    :cond_8
    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 4

    .line 1
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 2
    .line 3
    int-to-double v0, v0

    .line 4
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    .line 5
    .line 6
    int-to-double v2, v2

    .line 7
    div-double/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/Rational;

    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public floatValue()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    return v0
.end method

.method public getDenominator()I
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    ushr-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/high16 v0, -0x80000000

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 29
    .line 30
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 31
    .line 32
    div-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public isFinite()Z
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInfinite()Z
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaN()Z
    .locals 1

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 1

    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-wide/high16 v0, -0x8000000000000000L

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    return-wide v0

    .line 31
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    .line 32
    .line 33
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 34
    .line 35
    div-int/2addr v0, v1

    .line 36
    int-to-long v0, v0

    .line 37
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toFloat()F
    .locals 1

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "NaN"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "Infinity"

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v0, "-Infinity"

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "/"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
