.class public final Landroid/hardware/camera2/params/ColorSpaceTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final COUNT:I = 0x9

.field private static final COUNT_INT:I = 0x12

.field private static final OFFSET_DENOMINATOR:I = 0x1

.field private static final OFFSET_NUMERATOR:I = 0x0

.field private static final RATIONAL_SIZE:I = 0x2

.field private static final ROWS:I = 0x3


# instance fields
.field private final mElements:[I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "elements must not be null"

    .line 17
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    array-length v0, p1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    return-void

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "elements must be 18 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Landroid/util/Rational;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "elements must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 4
    iput-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const-string v1, "element["

    const-string v2, "] must not be null"

    .line 6
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    aput v4, v1, v3

    .line 9
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "elements must be 9 length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toShortString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const/4 v4, 0x3

    .line 12
    if-ge v2, v4, :cond_3

    .line 13
    .line 14
    const-string v5, "["

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move v5, v1

    .line 20
    :goto_1
    const-string v6, ", "

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    if-ge v5, v4, :cond_1

    .line 24
    .line 25
    iget-object v8, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 26
    .line 27
    add-int/lit8 v9, v3, 0x0

    .line 28
    .line 29
    aget v9, v8, v9

    .line 30
    .line 31
    add-int/lit8 v10, v3, 0x1

    .line 32
    .line 33
    aget v8, v8, v10

    .line 34
    .line 35
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v9, "/"

    .line 39
    .line 40
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    if-ge v5, v7, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v4, "]"

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    if-ge v2, v7, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v1, ")"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method


# virtual methods
.method public copyElements([II)V
    .locals 4

    const-string/jumbo v0, "offset must not be negative"

    .line 8
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    .line 9
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, v0, p2

    .line 11
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    aget v3, v3, v0

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "destination too small to fit elements"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyElements([Landroid/util/Rational;I)V
    .locals 7

    const-string/jumbo v0, "offset must not be negative"

    .line 1
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string v0, "destination must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    iget-object v3, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    add-int/lit8 v4, v2, 0x0

    aget v4, v3, v4

    add-int/lit8 v5, v2, 0x1

    .line 5
    aget v3, v3, v5

    add-int v5, v0, p2

    .line 6
    new-instance v6, Landroid/util/Rational;

    invoke-direct {v6, v4, v3}, Landroid/util/Rational;-><init>(II)V

    aput-object v6, p1, v5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "destination too small to fit elements"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

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
    instance-of v2, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 10
    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 14
    .line 15
    move v2, v0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    const/16 v4, 0x9

    .line 18
    .line 19
    if-ge v2, v4, :cond_3

    .line 20
    .line 21
    iget-object v4, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 22
    .line 23
    add-int/lit8 v5, v3, 0x0

    .line 24
    .line 25
    aget v6, v4, v5

    .line 26
    .line 27
    add-int/lit8 v7, v3, 0x1

    .line 28
    .line 29
    aget v4, v4, v7

    .line 30
    .line 31
    iget-object v8, p1, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 32
    .line 33
    aget v5, v8, v5

    .line 34
    .line 35
    aget v7, v8, v7

    .line 36
    .line 37
    new-instance v8, Landroid/util/Rational;

    .line 38
    .line 39
    invoke-direct {v8, v6, v4}, Landroid/util/Rational;-><init>(II)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Landroid/util/Rational;

    .line 43
    .line 44
    invoke-direct {v4, v5, v7}, Landroid/util/Rational;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v4}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v1

    .line 60
    :cond_4
    return v0
.end method

.method public getElement(II)Landroid/util/Rational;
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    if-ltz p2, :cond_0

    .line 7
    .line 8
    if-ge p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {p2, v0, p1, v2}, Landroid/app/m;->D(IIII)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/lit8 p2, p1, 0x0

    .line 18
    .line 19
    aget p2, v1, p2

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    aget p1, v1, p1

    .line 24
    .line 25
    new-instance v0, Landroid/util/Rational;

    .line 26
    .line 27
    invoke-direct {v0, p2, p1}, Landroid/util/Rational;-><init>(II)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo p2, "row out of range"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "column out of range"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ColorSpaceTransform;->mElements:[I

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Landroid/hardware/camera2/params/ColorSpaceTransform;->toShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 10
    .line 11
    const-string v1, "ColorSpaceTransform%s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
