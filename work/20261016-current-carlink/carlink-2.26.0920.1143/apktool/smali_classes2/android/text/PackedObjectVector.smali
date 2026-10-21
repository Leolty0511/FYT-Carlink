.class Landroid/text/PackedObjectVector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 5
    .line 6
    sget-object p1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 12
    .line 13
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 14
    .line 15
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 16
    .line 17
    return-void
.end method

.method private growBuffer()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    iget v2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 18
    .line 19
    div-int/2addr v1, v2

    .line 20
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 21
    .line 22
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 23
    .line 24
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    sub-int/2addr v3, v5

    .line 28
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    mul-int/2addr v2, v4

    .line 32
    invoke-static {v5, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 36
    .line 37
    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 38
    .line 39
    sub-int/2addr v4, v3

    .line 40
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 41
    .line 42
    mul-int/2addr v4, v5

    .line 43
    sub-int v6, v1, v3

    .line 44
    .line 45
    mul-int/2addr v6, v5

    .line 46
    mul-int/2addr v3, v5

    .line 47
    invoke-static {v2, v4, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 51
    .line 52
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 53
    .line 54
    sub-int v3, v1, v3

    .line 55
    .line 56
    add-int/2addr v3, v2

    .line 57
    iput v3, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 58
    .line 59
    iput v1, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 60
    .line 61
    iput-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 62
    .line 63
    return-void
.end method

.method private moveRowGapTo(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

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
    if-le p1, v0, :cond_2

    .line 8
    .line 9
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

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
    add-int/2addr v0, v2

    .line 17
    :goto_0
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 18
    .line 19
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 20
    .line 21
    add-int v5, v2, v4

    .line 22
    .line 23
    add-int/2addr v5, v3

    .line 24
    if-ge v0, v5, :cond_4

    .line 25
    .line 26
    add-int/2addr v4, v2

    .line 27
    sub-int v4, v0, v4

    .line 28
    .line 29
    add-int/2addr v4, v2

    .line 30
    move v2, v1

    .line 31
    :goto_1
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 32
    .line 33
    if-ge v2, v5, :cond_1

    .line 34
    .line 35
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 36
    .line 37
    mul-int v7, v0, v5

    .line 38
    .line 39
    add-int/2addr v7, v2

    .line 40
    aget-object v7, v6, v7

    .line 41
    .line 42
    mul-int/2addr v5, v4

    .line 43
    add-int/2addr v5, v2

    .line 44
    aput-object v7, v6, v5

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sub-int/2addr v0, p1

    .line 53
    add-int v2, p1, v0

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    :goto_2
    if-lt v2, p1, :cond_4

    .line 58
    .line 59
    sub-int v3, v2, p1

    .line 60
    .line 61
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 62
    .line 63
    add-int/2addr v3, v4

    .line 64
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 65
    .line 66
    add-int/2addr v3, v4

    .line 67
    sub-int/2addr v3, v0

    .line 68
    move v4, v1

    .line 69
    :goto_3
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 70
    .line 71
    if-ge v4, v5, :cond_3

    .line 72
    .line 73
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 74
    .line 75
    mul-int v7, v2, v5

    .line 76
    .line 77
    add-int/2addr v7, v4

    .line 78
    aget-object v7, v6, v7

    .line 79
    .line 80
    mul-int/2addr v5, v3

    .line 81
    add-int/2addr v5, v4

    .line 82
    aput-object v7, v6, v5

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public deleteAt(II)V
    .locals 0

    .line 1
    add-int/2addr p1, p2

    .line 2
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 3
    .line 4
    .line 5
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 6
    .line 7
    sub-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 9
    .line 10
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 11
    .line 12
    add-int/2addr p1, p2

    .line 13
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public dump()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    move v2, v0

    .line 8
    :goto_1
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 9
    .line 10
    if-ge v2, v3, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 13
    .line 14
    mul-int/2addr v3, v1

    .line 15
    add-int/2addr v3, v2

    .line 16
    aget-object v3, v4, v3

    .line 17
    .line 18
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 19
    .line 20
    if-lt v1, v4, :cond_1

    .line 21
    .line 22
    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    if-lt v1, v4, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v6, "("

    .line 33
    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ") "

    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, " "

    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 79
    .line 80
    const-string v3, " << \n"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 89
    .line 90
    const-string v1, "-----\n\n"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public getValue(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 6
    .line 7
    add-int/2addr p1, v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 11
    .line 12
    mul-int/2addr p1, v1

    .line 13
    add-int/2addr p1, p2

    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    return-object p1
.end method

.method public insertAt(I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 16
    .line 17
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    :goto_0
    iget p2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 27
    .line 28
    if-ge v0, p2, :cond_2

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p1, v0, p2}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 38
    .line 39
    if-ge v0, v1, :cond_2

    .line 40
    .line 41
    aget-object v1, p2, v0

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    return-void
.end method

.method public setValue(IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 6
    .line 7
    add-int/2addr p1, v0

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    .line 11
    .line 12
    mul-int/2addr p1, v1

    .line 13
    add-int/2addr p1, p2

    .line 14
    aput-object p3, v0, p1

    .line 15
    .line 16
    return-void
.end method

.method public size()I
    .locals 2

    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
