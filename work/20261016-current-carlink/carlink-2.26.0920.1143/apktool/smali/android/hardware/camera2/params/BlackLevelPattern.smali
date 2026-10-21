.class public final Landroid/hardware/camera2/params/BlackLevelPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COUNT:I = 0x4


# instance fields
.field private final mCfaOffsets:[I


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x4

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Invalid offsets array length"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string v0, "Null offsets array passed to constructor"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method


# virtual methods
.method public copyTo([II)V
    .locals 4

    .line 1
    const-string v0, "destination must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_2

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    sub-int/2addr v0, p2

    .line 10
    const/4 v1, 0x4

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    add-int v2, p2, v0

    .line 17
    .line 18
    iget-object v3, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 19
    .line 20
    aget v3, v3, v0

    .line 21
    .line 22
    aput v3, p1, v2

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 29
    .line 30
    const-string p2, "destination too small to fit elements"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "Null offset passed to copyTo"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-ne p0, p1, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_1
    instance-of v1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    check-cast p1, Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 16
    .line 17
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_2
    return v0
.end method

.method public getOffsetForIndex(II)I
    .locals 1

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 6
    .line 7
    and-int/lit8 p2, p2, 0x1

    .line 8
    .line 9
    shl-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    or-int/2addr p1, p2

    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "column, row arguments must be positive"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget v1, v1, v2

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget v1, v1, v2

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    aput-object v1, v0, v2

    .line 36
    .line 37
    iget-object v1, p0, Landroid/hardware/camera2/params/BlackLevelPattern;->mCfaOffsets:[I

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    aget v1, v1, v2

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aput-object v1, v0, v2

    .line 47
    .line 48
    const-string v1, "BlackLevelPattern([%d, %d], [%d, %d])"

    .line 49
    .line 50
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
