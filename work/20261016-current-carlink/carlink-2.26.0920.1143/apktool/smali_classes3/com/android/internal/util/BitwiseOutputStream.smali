.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p1, [B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 7
    .line 8
    shl-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 14
    .line 15
    return-void
.end method

.method private possExpand(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    add-int/2addr v0, p1

    .line 11
    ushr-int/lit8 p1, v0, 0x2

    .line 12
    .line 13
    new-array v0, p1, [B

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 16
    .line 17
    ushr-int/lit8 v2, v2, 0x3

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 24
    .line 25
    shl-int/lit8 p1, p1, 0x3

    .line 26
    .line 27
    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public skip(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 8
    .line 9
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x3

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    add-int/2addr v1, v0

    .line 14
    new-array v0, v1, [B

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 17
    .line 18
    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public write(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 8
    .line 9
    .line 10
    rsub-int/lit8 v1, p1, 0x20

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    ushr-int v1, v2, v1

    .line 14
    .line 15
    and-int/2addr p2, v1

    .line 16
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 17
    .line 18
    ushr-int/lit8 v2, v1, 0x3

    .line 19
    .line 20
    and-int/lit8 v3, v1, 0x7

    .line 21
    .line 22
    rsub-int/lit8 v3, v3, 0x10

    .line 23
    .line 24
    sub-int/2addr v3, p1

    .line 25
    shl-int/2addr p2, v3

    .line 26
    add-int/2addr v1, p1

    .line 27
    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 30
    .line 31
    aget-byte v1, p1, v2

    .line 32
    .line 33
    ushr-int/lit8 v4, p2, 0x8

    .line 34
    .line 35
    or-int/2addr v1, v4

    .line 36
    int-to-byte v1, v1

    .line 37
    aput-byte v1, p1, v2

    .line 38
    .line 39
    if-ge v3, v0, :cond_0

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    aget-byte v0, p1, v2

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    or-int/2addr p2, v0

    .line 48
    int-to-byte p2, p2

    .line 49
    aput-byte p2, p1, v2

    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p2, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    .line 53
    .line 54
    const-string v0, "illegal write ("

    .line 55
    .line 56
    const-string v1, " bits)"

    .line 57
    .line 58
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2
.end method

.method public writeByteArray(I[B)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    shl-int/lit8 v1, v0, 0x3

    .line 6
    .line 7
    sub-int v1, p1, v1

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    aget-byte v2, p2, v0

    .line 18
    .line 19
    rsub-int/lit8 v3, v1, 0x8

    .line 20
    .line 21
    ushr-int/2addr v2, v3

    .line 22
    int-to-byte v2, v2

    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
