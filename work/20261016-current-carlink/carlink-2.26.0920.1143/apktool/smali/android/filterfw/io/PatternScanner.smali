.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIgnorePattern:Ljava/util/regex/Pattern;

.field private mInput:Ljava/lang/String;

.field private mLineNo:I

.field private mOffset:I

.field private mStartOfLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 3
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 4
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 5
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 8
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 9
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 10
    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 2

    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public lineNo()I
    .locals 1

    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    return v0
.end method

.method public peek(Ljava/util/regex/Pattern;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 15
    .line 16
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public skip(Ljava/util/regex/Pattern;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 8
    .line 9
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 15
    .line 16
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 45
    .line 46
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x0

    .line 62
    :goto_0
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-object p1
.end method

.method public unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 4
    .line 5
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Unexpected token on line "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " after \'"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "\' <- Expected "

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "!"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public updateLineCount(II)V
    .locals 2

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x1

    .line 20
    .line 21
    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    .line 22
    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method
