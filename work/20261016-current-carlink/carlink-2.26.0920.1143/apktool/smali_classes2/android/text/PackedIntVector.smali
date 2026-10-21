.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 8
    .line 9
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 10
    .line 11
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 15
    .line 16
    mul-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    new-array p1, p1, [I

    .line 19
    .line 20
    iput-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 21
    .line 22
    return-void
.end method

.method private final growBuffer()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-int/2addr v1, v0

    .line 12
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    array-length v2, v1

    .line 17
    div-int/2addr v2, v0

    .line 18
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 19
    .line 20
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 21
    .line 22
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 23
    .line 24
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 25
    .line 26
    add-int/2addr v6, v4

    .line 27
    sub-int/2addr v5, v6

    .line 28
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    mul-int v8, v0, v4

    .line 34
    .line 35
    invoke-static {v6, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 36
    .line 37
    .line 38
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 39
    .line 40
    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 41
    .line 42
    sub-int/2addr v8, v5

    .line 43
    mul-int/2addr v8, v0

    .line 44
    sub-int v9, v2, v5

    .line 45
    .line 46
    mul-int/2addr v9, v0

    .line 47
    mul-int/2addr v5, v0

    .line 48
    invoke-static {v6, v8, v1, v9, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    if-ge v7, v0, :cond_2

    .line 52
    .line 53
    aget v5, v3, v7

    .line 54
    .line 55
    if-lt v5, v4, :cond_1

    .line 56
    .line 57
    iget v6, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 58
    .line 59
    sub-int v6, v2, v6

    .line 60
    .line 61
    add-int/2addr v6, v5

    .line 62
    aput v6, v3, v7

    .line 63
    .line 64
    if-ge v6, v4, :cond_1

    .line 65
    .line 66
    aput v4, v3, v7

    .line 67
    .line 68
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 72
    .line 73
    iget v3, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 74
    .line 75
    sub-int v3, v2, v3

    .line 76
    .line 77
    add-int/2addr v3, v0

    .line 78
    iput v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 79
    .line 80
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 81
    .line 82
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 83
    .line 84
    return-void
.end method

.method private final moveRowGapTo(I)V
    .locals 12

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-le p1, v0, :cond_4

    .line 8
    .line 9
    iget v2, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 10
    .line 11
    add-int v3, p1, v2

    .line 12
    .line 13
    add-int v4, v0, v2

    .line 14
    .line 15
    sub-int/2addr v3, v4

    .line 16
    iget v4, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 17
    .line 18
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 19
    .line 20
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    move v2, v0

    .line 24
    :goto_0
    add-int v7, v0, v3

    .line 25
    .line 26
    if-ge v2, v7, :cond_8

    .line 27
    .line 28
    sub-int v7, v2, v0

    .line 29
    .line 30
    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 31
    .line 32
    add-int/2addr v7, v8

    .line 33
    move v8, v1

    .line 34
    :goto_1
    if-ge v8, v4, :cond_3

    .line 35
    .line 36
    mul-int v9, v2, v4

    .line 37
    .line 38
    add-int/2addr v9, v8

    .line 39
    aget v9, v6, v9

    .line 40
    .line 41
    aget v10, v5, v8

    .line 42
    .line 43
    if-lt v2, v10, :cond_1

    .line 44
    .line 45
    add-int v11, v8, v4

    .line 46
    .line 47
    aget v11, v5, v11

    .line 48
    .line 49
    add-int/2addr v9, v11

    .line 50
    :cond_1
    if-lt v7, v10, :cond_2

    .line 51
    .line 52
    add-int v10, v8, v4

    .line 53
    .line 54
    aget v10, v5, v10

    .line 55
    .line 56
    sub-int/2addr v9, v10

    .line 57
    :cond_2
    mul-int v10, v7, v4

    .line 58
    .line 59
    add-int/2addr v10, v8

    .line 60
    aput v9, v6, v10

    .line 61
    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    sub-int v2, v0, p1

    .line 69
    .line 70
    iget v3, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 71
    .line 72
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 73
    .line 74
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 75
    .line 76
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 77
    .line 78
    add-int/2addr v0, v6

    .line 79
    add-int v6, p1, v2

    .line 80
    .line 81
    add-int/lit8 v6, v6, -0x1

    .line 82
    .line 83
    :goto_2
    if-lt v6, p1, :cond_8

    .line 84
    .line 85
    sub-int v7, v6, p1

    .line 86
    .line 87
    add-int/2addr v7, v0

    .line 88
    sub-int/2addr v7, v2

    .line 89
    move v8, v1

    .line 90
    :goto_3
    if-ge v8, v3, :cond_7

    .line 91
    .line 92
    mul-int v9, v6, v3

    .line 93
    .line 94
    add-int/2addr v9, v8

    .line 95
    aget v9, v5, v9

    .line 96
    .line 97
    aget v10, v4, v8

    .line 98
    .line 99
    if-lt v6, v10, :cond_5

    .line 100
    .line 101
    add-int v11, v8, v3

    .line 102
    .line 103
    aget v11, v4, v11

    .line 104
    .line 105
    add-int/2addr v9, v11

    .line 106
    :cond_5
    if-lt v7, v10, :cond_6

    .line 107
    .line 108
    add-int v10, v8, v3

    .line 109
    .line 110
    aget v10, v4, v10

    .line 111
    .line 112
    sub-int/2addr v9, v10

    .line 113
    :cond_6
    mul-int v10, v7, v3

    .line 114
    .line 115
    add-int/2addr v10, v8

    .line 116
    aput v9, v5, v10

    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_8
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 125
    .line 126
    return-void
.end method

.method private final moveValueGapTo(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 4
    .line 5
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 6
    .line 7
    aget v3, v0, p1

    .line 8
    .line 9
    if-ne p2, v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-le p2, v3, :cond_1

    .line 13
    .line 14
    :goto_0
    if-ge v3, p2, :cond_2

    .line 15
    .line 16
    mul-int v4, v3, v2

    .line 17
    .line 18
    add-int/2addr v4, p1

    .line 19
    aget v5, v1, v4

    .line 20
    .line 21
    add-int v6, p1, v2

    .line 22
    .line 23
    aget v6, v0, v6

    .line 24
    .line 25
    add-int/2addr v5, v6

    .line 26
    aput v5, v1, v4

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, p2

    .line 32
    :goto_1
    aget v4, v0, p1

    .line 33
    .line 34
    if-ge v3, v4, :cond_2

    .line 35
    .line 36
    mul-int v4, v3, v2

    .line 37
    .line 38
    add-int/2addr v4, p1

    .line 39
    aget v5, v1, v4

    .line 40
    .line 41
    add-int v6, p1, v2

    .line 42
    .line 43
    aget v6, v0, v6

    .line 44
    .line 45
    sub-int/2addr v5, v6

    .line 46
    aput v5, v1, v4

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    aput p2, v0, p1

    .line 52
    .line 53
    return-void
.end method

.method private setValueInternal(III)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 6
    .line 7
    add-int/2addr p1, v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 9
    .line 10
    aget v1, v0, p2

    .line 11
    .line 12
    if-lt p1, v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 15
    .line 16
    add-int/2addr v1, p2

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    sub-int/2addr p3, v0

    .line 20
    :cond_1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 21
    .line 22
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 23
    .line 24
    mul-int/2addr p1, v1

    .line 25
    add-int/2addr p1, p2

    .line 26
    aput p3, v0, p1

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .locals 1

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ge p2, v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 18
    .line 19
    if-lt p1, v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 22
    .line 23
    add-int/2addr p1, v0

    .line 24
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 28
    .line 29
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 30
    .line 31
    add-int/2addr p2, v0

    .line 32
    aget v0, p1, p2

    .line 33
    .line 34
    add-int/2addr v0, p3

    .line 35
    aput v0, p1, p2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ", "

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p3
.end method

.method public deleteAt(II)V
    .locals 2

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    add-int v0, p1, p2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 17
    .line 18
    sub-int/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 20
    .line 21
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ", "

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public getValue(II)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 2
    .line 3
    or-int v1, p1, p2

    .line 4
    .line 5
    if-ltz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_2

    .line 12
    .line 13
    if-ge p2, v0, :cond_2

    .line 14
    .line 15
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 16
    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 20
    .line 21
    add-int/2addr p1, v1

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 23
    .line 24
    mul-int v2, p1, v0

    .line 25
    .line 26
    add-int/2addr v2, p2

    .line 27
    aget v1, v1, v2

    .line 28
    .line 29
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 30
    .line 31
    aget v3, v2, p2

    .line 32
    .line 33
    if-lt p1, v3, :cond_1

    .line 34
    .line 35
    add-int/2addr p2, v0

    .line 36
    aget p1, v2, p2

    .line 37
    .line 38
    add-int/2addr v1, p1

    .line 39
    :cond_1
    return v1

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ", "

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public insertAt(I[I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_5

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    array-length v0, p2

    .line 12
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v1, "value count "

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    array-length p2, p2

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 56
    .line 57
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 62
    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    iget p2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 p2, p2, -0x1

    .line 68
    .line 69
    if-ltz p2, :cond_4

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 77
    .line 78
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    if-ltz v0, :cond_4

    .line 81
    .line 82
    aget v1, p2, v0

    .line 83
    .line 84
    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    return-void

    .line 89
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 90
    .line 91
    const-string v0, "row "

    .line 92
    .line 93
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method

.method public setValue(III)V
    .locals 3

    .line 1
    or-int v0, p1, p2

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 12
    .line 13
    if-ge p2, v0, :cond_2

    .line 14
    .line 15
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 16
    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 20
    .line 21
    add-int/2addr p1, v1

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 23
    .line 24
    aget v2, v1, p2

    .line 25
    .line 26
    if-lt p1, v2, :cond_1

    .line 27
    .line 28
    add-int v2, p2, v0

    .line 29
    .line 30
    aget v1, v1, v2

    .line 31
    .line 32
    sub-int/2addr p3, v1

    .line 33
    :cond_1
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 34
    .line 35
    mul-int/2addr p1, v0

    .line 36
    add-int/2addr p1, p2

    .line 37
    aput p3, v1, p1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ", "

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p3
.end method

.method public size()I
    .locals 2

    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
