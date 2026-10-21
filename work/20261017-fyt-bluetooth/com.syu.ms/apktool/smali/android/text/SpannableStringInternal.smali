.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLUMNS:I = 0x3

.field public static final EMPTY:[Ljava/lang/Object;

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lu/a;->h(I)I

    move-result v1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x3

    .line 7
    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 8
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    .line 9
    check-cast p1, Landroid/text/Spanned;

    .line 10
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 11
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 12
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 13
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 14
    aget-object v4, v1, v0

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, p2, :cond_1

    move v2, p2

    :cond_1
    if-le v3, p3, :cond_2

    move v3, p3

    .line 15
    :cond_2
    aget-object v5, v1, v0

    sub-int/2addr v2, p2

    sub-int/2addr v3, p2

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    const-string v0, " "

    if-lt p3, p2, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    if-gt p2, v1, :cond_1

    if-gt p3, v1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " starts before 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ends beyond length "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has end before start"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ... "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    .line 1
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5

    .line 1
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Landroid/text/Spanned;

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_5

    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v2, v3, :cond_4

    .line 6
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 7
    aget-object v4, v0, v2

    if-ne v3, p0, :cond_1

    if-ne p1, v4, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_0
    return v1

    .line 9
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public final getChars(II[CI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 5
    aget p1, v2, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    .line 5
    aget p1, v2, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    .line 5
    aget p1, v2, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

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
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v0, :cond_a

    if-eqz p3, :cond_0

    .line 4
    aget-object v9, v1, v6

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_4

    :cond_0
    mul-int/lit8 v9, v6, 0x3

    add-int/lit8 v10, v9, 0x0

    .line 5
    aget v10, v2, v10

    add-int/lit8 v11, v9, 0x1

    .line 6
    aget v11, v2, v11

    if-le v10, p2, :cond_1

    goto :goto_4

    :cond_1
    if-ge v11, p1, :cond_2

    goto :goto_4

    :cond_2
    if-eq v10, v11, :cond_4

    if-eq p1, p2, :cond_4

    if-ne v10, p2, :cond_3

    goto :goto_4

    :cond_3
    if-ne v11, p1, :cond_4

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    .line 7
    aget-object v5, v1, v6

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    if-ne v7, v8, :cond_6

    sub-int v3, v0, v6

    add-int/2addr v3, v8

    .line 8
    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 9
    aput-object v5, v3, v4

    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 10
    aget v8, v2, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    move v10, v4

    :goto_2
    if-ge v10, v7, :cond_8

    .line 11
    aget-object v11, v3, v10

    invoke-virtual {p0, v11}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    and-int/2addr v11, v9

    if-le v8, v11, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v8, v10, 0x1

    sub-int v9, v7, v10

    .line 12
    invoke-static {v3, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    aget-object v8, v1, v6

    aput-object v8, v3, v10

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v7, 0x1

    .line 14
    aget-object v9, v1, v6

    aput-object v9, v3, v7

    move v7, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    if-nez v7, :cond_b

    .line 15
    invoke-static {p3}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    if-ne v7, v8, :cond_c

    .line 16
    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 17
    aput-object v5, p1, v4

    return-object p1

    .line 18
    :cond_c
    array-length p1, v3

    if-ne v7, p1, :cond_d

    return-object v3

    .line 19
    :cond_d
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 20
    invoke-static {v3, v4, p1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p0, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
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
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    if-nez p3, :cond_0

    .line 4
    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 5
    aget v5, v2, v5

    add-int/lit8 v4, v4, 0x1

    .line 6
    aget v4, v2, v4

    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    .line 7
    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move p2, v5

    :cond_1
    if-le v4, p1, :cond_2

    if-ge v4, p2, :cond_2

    .line 8
    aget-object v5, v1, v3

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move p2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 2
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 4
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v4, 0x0

    .line 5
    aget v5, v2, v5

    add-int/lit8 v6, v4, 0x1

    .line 6
    aget v6, v2, v6

    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v0, v7

    .line 7
    invoke-static {v1, v7, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 8
    invoke-static {v2, v7, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 10
    invoke-direct {p0, p1, v5, v6}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 11

    const-string/jumbo v0, "setSpan"

    .line 1
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    and-int/lit8 v0, p4, 0x33

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    const-string v0, ")"

    const-string v1, " follows "

    const/16 v2, 0xa

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    if-eq p2, v3, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 3
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    if-eq p3, v3, :cond_3

    add-int/lit8 v3, p3, -0x1

    .line 6
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_1
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 9
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_5

    .line 11
    aget-object v5, v1, v4

    if-ne v5, p1, :cond_4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x0

    .line 12
    aget v7, v2, v0

    add-int/lit8 v1, v4, 0x1

    .line 13
    aget v8, v2, v1

    .line 14
    aput p2, v2, v0

    .line 15
    aput p3, v2, v1

    add-int/lit8 v4, v4, 0x2

    .line 16
    aput p4, v2, v4

    move-object v5, p0

    move-object v6, p1

    move v9, p2

    move v10, p3

    .line 17
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 18
    :cond_5
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-static {v0}, Lu/a;->h(I)I

    move-result v0

    .line 20
    new-array v1, v0, [Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x3

    .line 21
    new-array v0, v0, [I

    .line 22
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iput-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 26
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object p1, v0, v1

    .line 27
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v3

    aput p2, v0, v2

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 28
    aput p3, v0, v2

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x2

    .line 29
    aput p4, v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 30
    iput v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 31
    instance-of p4, p0, Landroid/text/Spannable;

    if-eqz p4, :cond_7

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
