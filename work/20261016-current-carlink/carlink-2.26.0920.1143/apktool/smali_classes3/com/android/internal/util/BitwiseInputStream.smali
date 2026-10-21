.class public Lcom/android/internal/util/BitwiseInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    shl-int/lit8 p1, p1, 0x3

    .line 8
    .line 9
    iput p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    and-int/lit8 v2, v0, 0x7

    .line 6
    .line 7
    rsub-int/lit8 v2, v2, 0x10

    .line 8
    .line 9
    sub-int/2addr v2, p1

    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-gt p1, v3, :cond_1

    .line 15
    .line 16
    add-int v4, v0, p1

    .line 17
    .line 18
    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 19
    .line 20
    if-gt v4, v5, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    .line 23
    .line 24
    aget-byte v5, v4, v1

    .line 25
    .line 26
    and-int/lit16 v5, v5, 0xff

    .line 27
    .line 28
    shl-int/2addr v5, v3

    .line 29
    if-ge v2, v3, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    aget-byte v1, v4, v1

    .line 34
    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    or-int/2addr v5, v1

    .line 38
    :cond_0
    ushr-int v1, v5, v2

    .line 39
    .line 40
    rsub-int/lit8 v2, p1, 0x20

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    ushr-int v2, v3, v2

    .line 44
    .line 45
    and-int/2addr v1, v2

    .line 46
    add-int/2addr v0, p1

    .line 47
    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "illegal read (pos "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", end "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", bits "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, ")"

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {v0, p1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method

.method public readByteArray(I)[B
    .locals 6

    .line 1
    ushr-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0x7

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    add-int/2addr v0, v1

    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    :goto_1
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    shl-int/lit8 v3, v2, 0x3

    .line 17
    .line 18
    sub-int v3, p1, v3

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sub-int/2addr v4, v3

    .line 31
    shl-int v3, v5, v4

    .line 32
    .line 33
    int-to-byte v3, v3

    .line 34
    aput-byte v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-object v1
.end method

.method public skip(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 6
    .line 7
    if-gt v1, v2, :cond_0

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "illegal skip (pos "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", end "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", bits "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ")"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method
