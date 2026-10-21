.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid range is ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public following(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int/2addr p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getBeginning(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int/2addr p1, v0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 3
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getEnd(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int/2addr p1, v0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 3
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public preceding(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int/2addr p1, v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr p1, v0

    return p1
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 1

    add-int/lit8 p2, p2, -0x32

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/lit8 p3, p3, 0x32

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    instance-of p3, p1, Landroid/text/SpannableStringBuilder;

    if-eqz p3, :cond_0

    .line 4
    check-cast p1, Landroid/text/SpannableStringBuilder;

    iget p3, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {p1, p3, p2}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget p3, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-interface {p1, p3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    iget-object p2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    return-void
.end method
