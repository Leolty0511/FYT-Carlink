.class public Lcom/android/internal/util/LineBreakBufferedWriter;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# instance fields
.field private buffer:[C

.field private bufferIndex:I

.field private final bufferSize:I

.field private lastNewline:I

.field private final lineSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;-><init>(Ljava/io/Writer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    .line 4
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 6
    iput p2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const-string p1, "line.separator"

    .line 7
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method private appendToBuffer(Ljava/lang/String;II)V
    .locals 3

    .line 5
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    add-int/2addr v0, p3

    .line 6
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    :cond_0
    add-int v0, p2, p3

    .line 7
    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 8
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    return-void
.end method

.method private appendToBuffer([CII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    add-int/2addr v0, p3

    .line 2
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->ensureCapacity(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 4
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x2

    .line 7
    .line 8
    if-ge v1, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, v1

    .line 12
    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 17
    .line 18
    return-void
.end method

.method private removeFromBuffer(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 2
    .line 3
    sub-int p1, v0, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    .line 9
    .line 10
    sub-int/2addr v0, p1

    .line 11
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private writeBuffer(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p1}, Ljava/io/PrintWriter;->write([CII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 8
    .line 9
    invoke-super {p0}, Ljava/io/PrintWriter;->flush()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public println()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    iget-object v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->buffer:[C

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    int-to-char p1, p1

    .line 2
    aput-char p1, v1, v0

    add-int/2addr v0, v3

    .line 3
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 4
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    :cond_0
    new-array v0, v3, [C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 5
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/util/LineBreakBufferedWriter;->write([CII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 8

    .line 24
    :goto_0
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v3, 0xa

    if-le v1, v2, :cond_4

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v4, v0

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_1

    add-int v6, p2, v4

    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    .line 26
    iget v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v6, v7, :cond_1

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eq v5, v1, :cond_2

    .line 27
    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 28
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 29
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 30
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    goto :goto_0

    .line 31
    :cond_2
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v2, v1, :cond_3

    .line 32
    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 33
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 34
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    .line 35
    :cond_3
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, v2

    .line 36
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    .line 37
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 38
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_4
    if-lez p3, :cond_6

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer(Ljava/lang/String;II)V

    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-ltz v0, :cond_6

    add-int v1, p2, v0

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5

    .line 41
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr p1, p3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public write([CII)V
    .locals 8

    .line 6
    :goto_0
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    const/16 v3, 0xa

    if-le v1, v2, :cond_4

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v4, v0

    move v5, v1

    :goto_1
    if-ge v4, v2, :cond_1

    add-int v6, p2, v4

    .line 7
    aget-char v6, p1, v6

    if-ne v6, v3, :cond_0

    .line 8
    iget v6, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    if-ge v6, v7, :cond_1

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eq v5, v1, :cond_2

    .line 9
    invoke-direct {p0, p1, p2, v5}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 10
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 11
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    .line 12
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    goto :goto_0

    .line 13
    :cond_2
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    if-eq v2, v1, :cond_3

    .line 14
    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 15
    iget v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/LineBreakBufferedWriter;->removeFromBuffer(I)V

    .line 16
    iput v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_0

    .line 17
    :cond_3
    iget v1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferSize:I

    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr v1, v2

    .line 18
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    .line 19
    iget v2, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    invoke-direct {p0, v2}, Lcom/android/internal/util/LineBreakBufferedWriter;->writeBuffer(I)V

    .line 20
    iput v0, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_4
    if-lez p3, :cond_6

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/LineBreakBufferedWriter;->appendToBuffer([CII)V

    add-int/lit8 v0, p3, -0x1

    :goto_2
    if-ltz v0, :cond_6

    add-int v1, p2, v0

    .line 22
    aget-char v1, p1, v1

    if-ne v1, v3, :cond_5

    .line 23
    iget p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->bufferIndex:I

    sub-int/2addr p1, p3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/util/LineBreakBufferedWriter;->lastNewline:I

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
