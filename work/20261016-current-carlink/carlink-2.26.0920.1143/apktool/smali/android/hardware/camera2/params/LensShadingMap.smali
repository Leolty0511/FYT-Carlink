.class public final Landroid/hardware/camera2/params/LensShadingMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MINIMUM_GAIN_FACTOR:F = 1.0f


# instance fields
.field private final mColumns:I

.field private final mElements:[F

.field private final mRows:I


# direct methods
.method public constructor <init>([FII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "rows must be positive"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iput p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 12
    .line 13
    const-string p2, "columns must be positive"

    .line 14
    .line 15
    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iput p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 20
    .line 21
    const-string p2, "elements must not be null"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, [F

    .line 28
    .line 29
    iput-object p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 30
    .line 31
    array-length p2, p1

    .line 32
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-ne p2, p3, :cond_0

    .line 37
    .line 38
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 39
    .line 40
    .line 41
    const-string p3, "elements"

    .line 42
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "elements must be "

    .line 54
    .line 55
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " length, received "

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    array-length p1, p1

    .line 71
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method


# virtual methods
.method public copyGainFactors([FI)V
    .locals 3

    .line 1
    const-string/jumbo v0, "offset must not be negative"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    const-string v0, "destination must not be null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    array-length v0, p1

    .line 13
    add-int/2addr v0, p2

    .line 14
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 32
    .line 33
    const-string p2, "destination too small to fit elements"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/LensShadingMap;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/LensShadingMap;

    .line 14
    .line 15
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 16
    .line 17
    iget v3, p1, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 22
    .line 23
    iget v3, p1, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 28
    .line 29
    iget-object p1, p1, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 30
    .line 31
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_2
    return v0
.end method

.method public getColumnCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    return v0
.end method

.method public getGainFactor(III)F
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-gt p1, v0, :cond_2

    .line 5
    .line 6
    if-ltz p2, :cond_1

    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 9
    .line 10
    if-ge p2, v1, :cond_1

    .line 11
    .line 12
    if-ltz p3, :cond_0

    .line 13
    .line 14
    iget v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 15
    .line 16
    if-ge p3, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 19
    .line 20
    mul-int/2addr p3, v1

    .line 21
    add-int/2addr p3, p2

    .line 22
    mul-int/2addr p3, v0

    .line 23
    add-int/2addr p3, p1

    .line 24
    aget p1, v2, p3

    .line 25
    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string/jumbo p2, "row out of range"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "column out of range"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p2, "colorChannel out of range"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public getGainFactorCount()I
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getGainFactorVector(II)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    if-ltz p2, :cond_0

    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 10
    .line 11
    if-ge p2, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-static {p2, v0, p1, v1}, Landroid/app/m;->D(IIII)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 19
    .line 20
    add-int/lit8 v0, p1, 0x0

    .line 21
    .line 22
    aget v0, p2, v0

    .line 23
    .line 24
    add-int/lit8 v1, p1, 0x1

    .line 25
    .line 26
    aget v1, p2, v1

    .line 27
    .line 28
    add-int/lit8 v2, p1, 0x2

    .line 29
    .line 30
    aget v2, p2, v2

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x3

    .line 33
    .line 34
    aget p1, p2, p1

    .line 35
    .line 36
    new-instance p2, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 37
    .line 38
    invoke-direct {p2, v0, v1, v2, p1}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    return-object p2

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string/jumbo p2, "row out of range"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "column out of range"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/params/LensShadingMap;->mElements:[F

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 12
    .line 13
    aput v3, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iget v3, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 17
    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aput v0, v1, v2

    .line 22
    .line 23
    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LensShadingMap{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "G_odd:("

    .line 9
    .line 10
    const-string v2, "B:("

    .line 11
    .line 12
    const-string v3, "R:("

    .line 13
    .line 14
    const-string v4, "G_even:("

    .line 15
    .line 16
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    const/4 v4, 0x4

    .line 23
    if-ge v3, v4, :cond_5

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move v4, v2

    .line 31
    :goto_1
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 32
    .line 33
    const-string v6, ", "

    .line 34
    .line 35
    if-ge v4, v5, :cond_3

    .line 36
    .line 37
    const-string v5, "["

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move v5, v2

    .line 43
    :goto_2
    iget v7, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 44
    .line 45
    if-ge v5, v7, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v3, v5, v4}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactor(III)F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v7, p0, Landroid/hardware/camera2/params/LensShadingMap;->mColumns:I

    .line 55
    .line 56
    add-int/lit8 v7, v7, -0x1

    .line 57
    .line 58
    if-ge v5, v7, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    const-string v5, "]"

    .line 67
    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v5, p0, Landroid/hardware/camera2/params/LensShadingMap;->mRows:I

    .line 72
    .line 73
    add-int/lit8 v5, v5, -0x1

    .line 74
    .line 75
    if-ge v4, v5, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string v4, ")"

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x3

    .line 89
    if-ge v3, v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const-string/jumbo v1, "}"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method
