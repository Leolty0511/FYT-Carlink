.class public final Landroid/hardware/camera2/Rational;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p2, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    .line 2
    :cond_0
    iput p1, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    .line 3
    iput p2, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    return-void
.end method

.method private isInf()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNaN()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNegInf()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/hardware/camera2/Rational;

    if-eqz v1, :cond_8

    .line 2
    check-cast p1, Landroid/hardware/camera2/Rational;

    .line 3
    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget v3, p1, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v4, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    iget v5, p1, Landroid/hardware/camera2/Rational;->mNumerator:I

    if-ne v4, v5, :cond_2

    if-ne v1, v3, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/Rational;->gcd()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/Rational;->gcd()I

    move-result v3

    .line 7
    iget v4, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    div-int/2addr v4, v1

    .line 8
    iget v5, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    div-int/2addr v5, v1

    .line 9
    iget v1, p1, Landroid/hardware/camera2/Rational;->mNumerator:I

    div-int/2addr v1, v3

    .line 10
    iget p1, p1, Landroid/hardware/camera2/Rational;->mDenominator:I

    div-int/2addr p1, v3

    if-ne v4, v1, :cond_3

    if-ne v5, p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 11
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p1}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p1}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p1}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v2

    :cond_8
    return v0
.end method

.method public gcd()I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    .line 2
    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    :goto_0
    move v2, v1

    move v1, v0

    move v0, v2

    if-eqz v0, :cond_0

    .line 3
    rem-int/2addr v1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    .line 2
    iget v4, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toFloat()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    int-to-float v0, v0

    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NaN"

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isInf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Infinity"

    return-object v0

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-Infinity"

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/camera2/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/camera2/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
