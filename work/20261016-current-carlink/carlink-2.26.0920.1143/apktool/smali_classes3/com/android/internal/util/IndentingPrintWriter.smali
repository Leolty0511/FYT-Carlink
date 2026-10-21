.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    new-array p1, p1, [C

    .line 5
    iput-object p1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    .line 6
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 15
    .line 16
    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 10
    .line 11
    return-void
.end method

.method public printHexPair(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "=0x"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, " "

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "="

    .line 1
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "="

    .line 7
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .line 3
    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 7
    aget-char p2, p1, p2

    .line 8
    iget v3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 10
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 11
    iput-boolean v4, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 12
    iput v3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 13
    :cond_0
    iget p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez p2, :cond_2

    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_2

    .line 14
    iget-boolean p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez p2, :cond_1

    .line 15
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 16
    iput-boolean v4, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    sub-int p2, v2, v1

    .line 17
    iput p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 19
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 20
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 21
    iput-boolean v4, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 22
    iput v3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    :cond_2
    :goto_1
    move p2, v2

    goto :goto_0

    :cond_3
    if-eq v1, p2, :cond_4

    .line 23
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int/2addr p2, v1

    .line 24
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
