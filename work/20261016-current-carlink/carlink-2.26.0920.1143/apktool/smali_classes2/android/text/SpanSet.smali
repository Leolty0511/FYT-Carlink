.class public Landroid/text/SpanSet;
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
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getNextTransition(II)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 11
    .line 12
    aget v2, v2, v0

    .line 13
    .line 14
    if-le v1, p1, :cond_0

    .line 15
    .line 16
    if-ge v1, p2, :cond_0

    .line 17
    .line 18
    move p2, v1

    .line 19
    :cond_0
    if-le v2, p1, :cond_1

    .line 20
    .line 21
    if-ge v2, p2, :cond_1

    .line 22
    .line 23
    move p2, v2

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-ge v2, p2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 14
    .line 15
    aget v2, v2, v1

    .line 16
    .line 17
    if-gt v2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    return v0
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    array-length p3, p2

    .line 8
    if-lez p3, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    if-ge v0, p3, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 26
    .line 27
    new-array v0, p3, [I

    .line 28
    .line 29
    iput-object v0, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 30
    .line 31
    new-array v0, p3, [I

    .line 32
    .line 33
    iput-object v0, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 34
    .line 35
    new-array v0, p3, [I

    .line 36
    .line 37
    iput-object v0, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 38
    .line 39
    :cond_1
    iget v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 43
    .line 44
    :goto_0
    if-ge v1, p3, :cond_3

    .line 45
    .line 46
    aget-object v2, p2, v1

    .line 47
    .line 48
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v3, v4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget-object v6, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 64
    .line 65
    iget v7, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 66
    .line 67
    aput-object v2, v6, v7

    .line 68
    .line 69
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 70
    .line 71
    aput v3, v2, v7

    .line 72
    .line 73
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 74
    .line 75
    aput v4, v2, v7

    .line 76
    .line 77
    iget-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 78
    .line 79
    aput v5, v2, v7

    .line 80
    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    iput v7, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 84
    .line 85
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 89
    .line 90
    if-ge p1, v0, :cond_4

    .line 91
    .line 92
    iget-object p2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 93
    .line 94
    const/4 p3, 0x0

    .line 95
    invoke-static {p2, p1, v0, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
