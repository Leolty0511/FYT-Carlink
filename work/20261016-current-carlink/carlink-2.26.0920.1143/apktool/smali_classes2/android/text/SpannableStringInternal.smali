.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne p3, v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 34
    .line 35
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 36
    .line 37
    instance-of v0, p1, Landroid/text/Spanned;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    check-cast p1, Landroid/text/SpannableStringInternal;

    .line 46
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;II)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Landroid/text/Spanned;

    .line 52
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;II)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    if-lt p3, p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gt p2, v1, :cond_1

    .line 10
    .line 11
    if-gt p3, v1, :cond_1

    .line 12
    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    if-ltz p3, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p3, " starts before 0"

    .line 29
    .line 30
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, " ends beyond length "

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 68
    .line 69
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string p3, " has end before start"

    .line 78
    .line 79
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1
.end method

.method private final copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 8
    iget-object p2, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 9
    iget-object p3, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p3, p3

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 10
    iget p3, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput p3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 11
    iget-object p3, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v1, p3

    invoke-static {p3, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object p1, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object p2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length p3, p2

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy([II[III)V

    goto/16 :goto_4

    .line 13
    :cond_0
    iget-object v1, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 14
    iget v2, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v5, 0x0

    .line 15
    aget v6, v1, v6

    add-int/lit8 v5, v5, 0x1

    .line 16
    aget v5, v1, v5

    .line 17
    invoke-direct {p0, p2, p3, v6, v5}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object p1, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 19
    iput v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 20
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 21
    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move v3, v0

    :goto_2
    if-ge v0, v2, :cond_7

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 22
    aget v5, v1, v5

    add-int/lit8 v6, v4, 0x1

    .line 23
    aget v6, v1, v6

    .line 24
    invoke-direct {p0, p2, p3, v5, v6}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    if-ge v5, p2, :cond_5

    move v5, p2

    :cond_5
    if-le v6, p3, :cond_6

    move v6, p3

    .line 25
    :cond_6
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v8, p1, v0

    aput-object v8, v7, v3

    .line 26
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v9, v8, 0x0

    sub-int/2addr v5, p2

    aput v5, v7, v9

    add-int/lit8 v5, v8, 0x1

    sub-int/2addr v6, p2

    .line 27
    aput v6, v7, v5

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 28
    aget v4, v1, v4

    aput v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method private final copySpans(Landroid/text/Spanned;II)V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 4
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 5
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-ge v2, p2, :cond_0

    move v2, p2

    :cond_0
    if-le v3, p3, :cond_1

    move v3, p3

    .line 6
    :cond_1
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isIndexFollowsNextLine(I)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p3, p2, :cond_3

    if-ge p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p3, p4, :cond_2

    if-eq p1, p2, :cond_2

    if-eq p3, p2, :cond_1

    if-ne p4, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, " ... "

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    invoke-static {v0, p0, v1, p1, v2}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    move-object v4, p0

    .line 16
    check-cast v4, Landroid/text/Spannable;

    .line 17
    .line 18
    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 1
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-class v2, Landroid/text/SpanWatcher;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    move-object v4, p0

    .line 24
    check-cast v4, Landroid/text/Spannable;

    .line 25
    .line 26
    move-object v5, p1

    .line 27
    move v6, p2

    .line 28
    move v7, p3

    .line 29
    move v8, p4

    .line 30
    move v9, p5

    .line 31
    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/text/SpanWatcher;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    move-object v4, p0

    .line 16
    check-cast v4, Landroid/text/Spannable;

    .line 17
    .line 18
    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private setSpan(Ljava/lang/Object;IIIZ)V
    .locals 10

    const-string/jumbo v0, "setSpan"

    .line 2
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    .line 3
    invoke-direct {p0, p2}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " follows "

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "PARAGRAPH span must start at paragraph boundary ("

    .line 5
    invoke-static {p3, p2, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-direct {p0, p3}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p5, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "PARAGRAPH span must end at paragraph boundary ("

    .line 9
    invoke-static {p2, p3, v2}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    .line 10
    invoke-virtual {p0, p3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 12
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p5, :cond_5

    .line 14
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_4

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 p5, v3, 0x0

    .line 15
    aget v6, v1, p5

    add-int/lit8 v0, v3, 0x1

    .line 16
    aget v7, v1, v0

    .line 17
    aput p2, v1, p5

    .line 18
    aput p3, v1, v0

    add-int/lit8 v3, v3, 0x2

    .line 19
    aput p4, v1, v3

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    .line 20
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_5
    iget p5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, p5, 0x1

    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 22
    invoke-static {p5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result p5

    .line 23
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object p5

    .line 24
    array-length v0, p5

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 25
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v1, v2, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 27
    iput-object p5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 29
    :cond_6
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, p5, v0

    .line 30
    iget-object p5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v1, v0, 0x3

    add-int/2addr v1, v2

    aput p2, p5, v1

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 31
    aput p3, p5, v1

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0x2

    .line 32
    aput p4, p5, v1

    add-int/lit8 v0, v0, 0x1

    .line 33
    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 34
    instance-of p4, p0, Landroid/text/Spannable;

    if-eqz p4, :cond_7

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    check-cast p1, Landroid/text/Spanned;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-class v2, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 33
    .line 34
    array-length v3, v0

    .line 35
    if-ne v2, v3, :cond_5

    .line 36
    .line 37
    move v2, v1

    .line 38
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 39
    .line 40
    if-ge v2, v3, :cond_4

    .line 41
    .line 42
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v3, v3, v2

    .line 45
    .line 46
    aget-object v4, v0, v2

    .line 47
    .line 48
    if-ne v3, p0, :cond_1

    .line 49
    .line 50
    if-ne p1, v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ne v5, v6, :cond_0

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v5, v6, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eq v3, v4, :cond_2

    .line 81
    .line 82
    :cond_0
    return v1

    .line 83
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-ne v5, v6, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-ne v5, v6, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eq v3, v4, :cond_2

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    return v1

    .line 124
    :cond_4
    const/4 p1, 0x1

    .line 125
    return p1

    .line 126
    :cond_5
    return v1
.end method

.method public final getChars(II[CI)V
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v0

    .line 12
    .line 13
    if-ne v3, p1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x3

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    aget p1, v2, v0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, -0x1

    .line 26
    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v0

    .line 12
    .line 13
    if-ne v3, p1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x3

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    aget p1, v2, v0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    aget-object v3, v1, v0

    .line 12
    .line 13
    if-ne v3, p1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x3

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x0

    .line 18
    .line 19
    aget p1, v2, v0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, -0x1

    .line 26
    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move v6, v3

    .line 10
    move v7, v6

    .line 11
    move-object v5, v4

    .line 12
    :goto_0
    const/4 v8, 0x1

    .line 13
    if-ge v6, v0, :cond_a

    .line 14
    .line 15
    mul-int/lit8 v9, v6, 0x3

    .line 16
    .line 17
    add-int/lit8 v10, v9, 0x0

    .line 18
    .line 19
    aget v10, v2, v10

    .line 20
    .line 21
    add-int/lit8 v11, v9, 0x1

    .line 22
    .line 23
    aget v11, v2, v11

    .line 24
    .line 25
    if-le v10, p2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    if-ge v11, p1, :cond_1

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_1
    if-eq v10, v11, :cond_3

    .line 33
    .line 34
    if-eq p1, p2, :cond_3

    .line 35
    .line 36
    if-ne v10, p2, :cond_2

    .line 37
    .line 38
    goto :goto_4

    .line 39
    :cond_2
    if-ne v11, p1, :cond_3

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_3
    if-eqz p3, :cond_4

    .line 43
    .line 44
    const-class v10, Ljava/lang/Object;

    .line 45
    .line 46
    if-eq p3, v10, :cond_4

    .line 47
    .line 48
    aget-object v10, v1, v6

    .line 49
    .line 50
    invoke-virtual {p3, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-nez v10, :cond_4

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    if-nez v7, :cond_5

    .line 58
    .line 59
    aget-object v5, v1, v6

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_5
    if-ne v7, v8, :cond_6

    .line 65
    .line 66
    sub-int v4, v0, v6

    .line 67
    .line 68
    add-int/2addr v4, v8

    .line 69
    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v5, v4, v3

    .line 76
    .line 77
    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 78
    .line 79
    aget v8, v2, v9

    .line 80
    .line 81
    const/high16 v9, 0xff0000

    .line 82
    .line 83
    and-int/2addr v8, v9

    .line 84
    if-eqz v8, :cond_9

    .line 85
    .line 86
    move v10, v3

    .line 87
    :goto_2
    if-ge v10, v7, :cond_8

    .line 88
    .line 89
    aget-object v11, v4, v10

    .line 90
    .line 91
    invoke-virtual {p0, v11}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    and-int/2addr v11, v9

    .line 96
    if-le v8, v11, :cond_7

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    :goto_3
    add-int/lit8 v8, v10, 0x1

    .line 103
    .line 104
    sub-int v9, v7, v10

    .line 105
    .line 106
    invoke-static {v4, v10, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    aget-object v8, v1, v6

    .line 110
    .line 111
    aput-object v8, v4, v10

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 115
    .line 116
    aget-object v9, v1, v6

    .line 117
    .line 118
    aput-object v9, v4, v7

    .line 119
    .line 120
    move v7, v8

    .line 121
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_a
    if-nez v7, :cond_b

    .line 125
    .line 126
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :cond_b
    if-ne v7, v8, :cond_c

    .line 132
    .line 133
    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object v5, p1, v3

    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_c
    array-length p1, v4

    .line 143
    if-ne v7, p1, :cond_d

    .line 144
    .line 145
    return-object v4

    .line 146
    :cond_d
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v4, v3, p1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    if-eq v2, p0, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v0, v3

    .line 32
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v0, v3

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v0, v3

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v0, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const-class p3, Ljava/lang/Object;

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_3

    .line 13
    .line 14
    mul-int/lit8 v4, v3, 0x3

    .line 15
    .line 16
    add-int/lit8 v5, v4, 0x0

    .line 17
    .line 18
    aget v5, v2, v5

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    aget v4, v2, v4

    .line 23
    .line 24
    if-le v5, p1, :cond_1

    .line 25
    .line 26
    if-ge v5, p2, :cond_1

    .line 27
    .line 28
    aget-object v6, v1, v3

    .line 29
    .line 30
    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    move p2, v5

    .line 37
    :cond_1
    if-le v4, p1, :cond_2

    .line 38
    .line 39
    if-ge v4, p2, :cond_2

    .line 40
    .line 41
    aget-object v5, v1, v3

    .line 42
    .line 43
    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    move p2, v4

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 6
    .line 7
    add-int/lit8 v3, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v3, :cond_1

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    if-ne v4, p1, :cond_0

    .line 14
    .line 15
    mul-int/lit8 v4, v3, 0x3

    .line 16
    .line 17
    add-int/lit8 v5, v4, 0x0

    .line 18
    .line 19
    aget v5, v2, v5

    .line 20
    .line 21
    add-int/lit8 v6, v4, 0x1

    .line 22
    .line 23
    aget v6, v2, v6

    .line 24
    .line 25
    add-int/lit8 v7, v3, 0x1

    .line 26
    .line 27
    sub-int/2addr v0, v7

    .line 28
    invoke-static {v1, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    mul-int/lit8 v7, v7, 0x3

    .line 32
    .line 33
    mul-int/lit8 v0, v0, 0x3

    .line 34
    .line 35
    invoke-static {v2, v7, v2, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 43
    .line 44
    invoke-direct {p0, p1, v5, v6}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
