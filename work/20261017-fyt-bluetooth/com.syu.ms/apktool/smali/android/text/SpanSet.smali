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

.field public numberOfSpans:I

.field public spanEnds:[I

.field public spanFlags:[I

.field public spanStarts:[I

.field public spans:[Ljava/lang/Object;
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
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    return-void
.end method


# virtual methods
.method public getNextTransition(II)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 3
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    move p2, v1

    :cond_0
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    move p2, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 2
    array-length p3, p2

    if-lez p3, :cond_1

    .line 3
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p3, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 5
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 6
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 7
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanFlags:[I

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    :goto_0
    if-ge v0, p3, :cond_3

    .line 9
    aget-object v1, p2, v0

    .line 10
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 11
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 13
    iget-object v5, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v6, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v1, v5, v6

    .line 14
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aput v2, v1, v6

    .line 15
    iget-object v1, p0, Landroid/text/SpanSet;->spanEnds:[I

    aput v3, v1, v6

    .line 16
    iget-object v1, p0, Landroid/text/SpanSet;->spanFlags:[I

    aput v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 17
    iput v6, p0, Landroid/text/SpanSet;->numberOfSpans:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public recycle()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
