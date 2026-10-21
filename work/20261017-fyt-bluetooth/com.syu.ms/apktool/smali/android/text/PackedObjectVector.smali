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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lu/a;->h(I)I

    move-result v0

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 5
    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    mul-int/2addr v0, v1

    .line 6
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    return-void
.end method

.method private growBuffer()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lu/a;->h(I)I

    move-result v0

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    div-int/2addr v0, v1

    mul-int v2, v0, v1

    .line 3
    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    .line 5
    iget-object v5, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    mul-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v1, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int/2addr v4, v3

    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr v4, v5

    sub-int v6, v0, v3

    mul-int/2addr v6, v5

    mul-int/2addr v3, v5

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    iget v3, p0, Landroid/text/PackedObjectVector;->mRows:I

    sub-int v3, v0, v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 8
    iput v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    .line 9
    iput-object v2, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    return-void
.end method

.method private moveRowGapTo(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, v0, :cond_2

    .line 2
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int v3, p1, v2

    add-int v4, v0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v2

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int v5, v2, v4

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_4

    add-int/2addr v4, v2

    sub-int v4, v0, v4

    add-int/2addr v4, v2

    move v2, v1

    .line 4
    :goto_1
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v5, :cond_1

    .line 5
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    mul-int v7, v0, v5

    add-int/2addr v7, v2

    aget-object v7, v6, v7

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    .line 6
    aput-object v7, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, p1

    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v2, p1, :cond_4

    sub-int v3, v2, p1

    .line 7
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    move v4, v1

    .line 8
    :goto_3
    iget v5, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v4, v5, :cond_3

    .line 9
    iget-object v6, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    mul-int v7, v2, v5

    add-int/2addr v7, v4

    aget-object v7, v6, v7

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 10
    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 11
    :cond_4
    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    return-void
.end method


# virtual methods
.method public deleteAt(II)V
    .locals 0

    add-int/2addr p1, p2

    .line 1
    invoke-direct {p0, p1}, Landroid/text/PackedObjectVector;->moveRowGapTo(I)V

    .line 2
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 3
    iget p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    .line 4
    invoke-virtual {p0}, Landroid/text/PackedObjectVector;->size()I

    return-void
.end method

.method public dump()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Landroid/text/PackedObjectVector;->mRows:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 2
    :goto_1
    iget v3, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v2, v3, :cond_2

    .line 3
    iget-object v4, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget-object v3, v4, v3

    .line 4
    iget v4, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    if-lt v1, v4, :cond_1

    iget v5, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_1
    :goto_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " << \n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

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

    if-lt p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

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
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/text/PackedObjectVector;->growBuffer()V

    .line 4
    :cond_0
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapStart:I

    .line 5
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 6
    :goto_0
    iget p2, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, p2, :cond_2

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p2}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    if-ge v0, v1, :cond_2

    .line 9
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/PackedObjectVector;->setValue(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    if-lt p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/text/PackedObjectVector;->mValues:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/PackedObjectVector;->mColumns:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    aput-object p3, v0, p1

    return-void
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mRows:I

    iget v1, p0, Landroid/text/PackedObjectVector;->mRowGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/PackedObjectVector;->mColumns:I

    return v0
.end method
