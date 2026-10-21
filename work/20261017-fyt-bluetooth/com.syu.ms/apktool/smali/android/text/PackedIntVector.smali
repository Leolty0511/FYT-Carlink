.class Landroid/text/PackedIntVector;
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
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 4
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 5
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int/lit8 p1, p1, 0x2

    .line 7
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    return-void
.end method

.method private final growBuffer()V
    .locals 10

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 2
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    .line 3
    invoke-static {v1}, Lu/a;->h(I)I

    move-result v1

    div-int/2addr v1, v0

    mul-int v2, v1, v0

    .line 4
    new-array v2, v2, [I

    .line 5
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 6
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 7
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 8
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    mul-int v8, v0, v4

    .line 9
    invoke-static {v6, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v8, v5

    mul-int/2addr v8, v0

    sub-int v9, v1, v5

    mul-int/2addr v9, v0

    mul-int/2addr v5, v0

    invoke-static {v6, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-ge v7, v0, :cond_2

    .line 11
    aget v5, v3, v7

    if-lt v5, v4, :cond_1

    .line 12
    aget v5, v3, v7

    iget v6, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v6, v1, v6

    add-int/2addr v5, v6

    aput v5, v3, v7

    .line 13
    aget v5, v3, v7

    if-ge v5, v4, :cond_1

    .line 14
    aput v4, v3, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v3, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v3, v1, v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 16
    iput v1, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 17
    iput-object v2, p0, Landroid/text/PackedIntVector;->mValues:[I

    return-void
.end method

.method private final moveRowGapTo(I)V
    .locals 11

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, v0, :cond_4

    .line 2
    iget v2, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int v3, p1, v2

    add-int v4, v0, v2

    sub-int/2addr v3, v4

    .line 3
    iget v4, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 4
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 5
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    add-int/2addr v0, v2

    move v2, v0

    :goto_0
    add-int v7, v0, v3

    if-ge v2, v7, :cond_8

    sub-int v7, v2, v0

    .line 6
    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v7, v8

    move v8, v1

    :goto_1
    if-ge v8, v4, :cond_3

    mul-int v9, v2, v4

    add-int/2addr v9, v8

    .line 7
    aget v9, v6, v9

    .line 8
    aget v10, v5, v8

    if-lt v2, v10, :cond_1

    add-int v10, v8, v4

    .line 9
    aget v10, v5, v10

    add-int/2addr v9, v10

    .line 10
    :cond_1
    aget v10, v5, v8

    if-lt v7, v10, :cond_2

    add-int v10, v8, v4

    .line 11
    aget v10, v5, v10

    sub-int/2addr v9, v10

    :cond_2
    mul-int v10, v7, v4

    add-int/2addr v10, v8

    .line 12
    aput v9, v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int v2, v0, p1

    .line 13
    iget v3, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 14
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 15
    iget-object v5, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 16
    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, v6

    add-int v6, p1, v2

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-lt v6, p1, :cond_8

    sub-int v7, v6, p1

    add-int/2addr v7, v0

    sub-int/2addr v7, v2

    move v8, v1

    :goto_3
    if-ge v8, v3, :cond_7

    mul-int v9, v6, v3

    add-int/2addr v9, v8

    .line 17
    aget v9, v5, v9

    .line 18
    aget v10, v4, v8

    if-lt v6, v10, :cond_5

    add-int v10, v8, v3

    .line 19
    aget v10, v4, v10

    add-int/2addr v9, v10

    .line 20
    :cond_5
    aget v10, v4, v8

    if-lt v7, v10, :cond_6

    add-int v10, v8, v3

    .line 21
    aget v10, v4, v10

    sub-int/2addr v9, v10

    :cond_6
    mul-int v10, v7, v3

    add-int/2addr v10, v8

    .line 22
    aput v9, v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 23
    :cond_8
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    return-void
.end method

.method private final moveValueGapTo(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 2
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 3
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 4
    aget v3, v0, p1

    if-ne p2, v3, :cond_0

    return-void

    .line 5
    :cond_0
    aget v3, v0, p1

    if-le p2, v3, :cond_1

    .line 6
    aget v3, v0, p1

    :goto_0
    if-ge v3, p2, :cond_2

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    .line 7
    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, p2

    .line 8
    :goto_1
    aget v4, v0, p1

    if-ge v3, v4, :cond_2

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    .line 9
    aget v5, v1, v4

    add-int v6, p1, v2

    aget v6, v0, v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_2
    aput p2, v0, p1

    return-void
.end method

.method private setValueInternal(III)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 4
    aget v1, v0, p2

    if-lt p1, v1, :cond_1

    .line 5
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 3
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 4
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 5
    iget-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr p2, v0

    aget v0, p1, p2

    add-int/2addr v0, p3

    aput v0, p1, p2

    return-void

    .line 6
    :cond_1
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public deleteAt(II)V
    .locals 2

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 3
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 4
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(II)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    or-int v1, p1, p2

    if-ltz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ge p2, v0, :cond_2

    .line 3
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 4
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 6
    iget-object v2, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 7
    aget v3, v2, p2

    if-lt p1, v3, :cond_1

    add-int/2addr p2, v0

    .line 8
    aget p1, v2, p2

    add-int/2addr v1, p1

    :cond_1
    return v1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertAt(I[I)V
    .locals 2

    if-ltz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 5
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 7
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 8
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez p2, :cond_3

    .line 9
    iget p2, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 11
    :cond_3
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 12
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void

    .line 13
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setValue(III)V
    .locals 3

    or-int v0, p1, p2

    if-ltz v0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_2

    .line 2
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 3
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 5
    aget v2, v1, p2

    if-lt p1, v2, :cond_1

    add-int v2, p2, v0

    .line 6
    aget v1, v1, v2

    sub-int/2addr p3, v1

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aput p3, v1, p1

    return-void

    .line 8
    :cond_2
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return v0
.end method
