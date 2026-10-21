.class public final Lcom/google/common/collect/Streams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;,
        Lcom/google/common/collect/Streams$LongFunctionWithIndex;,
        Lcom/google/common/collect/Streams$IntFunctionWithIndex;,
        Lcom/google/common/collect/Streams$MapWithIndexSpliterator;,
        Lcom/google/common/collect/Streams$FunctionWithIndex;,
        Lcom/google/common/collect/Streams$TemporaryPair;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$6(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/Streams;->lambda$forEachPair$8(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V

    return-void
.end method

.method public static synthetic c([Ljava/util/stream/Stream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$1([Ljava/util/stream/Stream;)V

    return-void
.end method

.method private static closeAll([Ljava/util/stream/BaseStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/stream/BaseStream<",
            "**>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/common/collect/d1;->v(Ljava/util/stream/BaseStream;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static varargs concat([Ljava/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .locals 9

    .line 34
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 35
    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x150

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v7, p0, v2

    .line 36
    invoke-static {v7}, Lcom/google/common/collect/d1;->B(Ljava/util/stream/DoubleStream;)Z

    move-result v8

    or-int/2addr v3, v8

    .line 37
    invoke-static {v7}, Lcom/google/common/collect/d1;->k(Ljava/util/stream/DoubleStream;)Ljava/util/Spliterator$OfDouble;

    move-result-object v7

    .line 38
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 39
    invoke-static {v7}, Lcom/google/common/collect/e1;->c(Ljava/util/Spliterator$OfDouble;)I

    move-result v8

    and-int/2addr v4, v8

    .line 40
    invoke-static {v7}, Lcom/google/common/collect/e1;->f(Ljava/util/Spliterator$OfDouble;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/f0;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/google/common/collect/f0;-><init>(I)V

    .line 42
    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/common/collect/CollectSpliterators;->flatMapToDouble(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    .line 43
    invoke-static {v0, v3}, Lcom/google/common/collect/e1;->t(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/j1;-><init>([Ljava/util/stream/BaseStream;I)V

    .line 44
    invoke-static {v0, v1}, Lcom/google/common/collect/e1;->k(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/e1;->s(Ljava/lang/Object;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .locals 9

    .line 12
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 13
    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x150

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v7, p0, v2

    .line 14
    invoke-static {v7}, Lcom/google/common/collect/e1;->D(Ljava/util/stream/IntStream;)Z

    move-result v8

    or-int/2addr v3, v8

    .line 15
    invoke-static {v7}, Lcom/google/common/collect/j;->h(Ljava/util/stream/IntStream;)Ljava/util/Spliterator$OfInt;

    move-result-object v7

    .line 16
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 17
    invoke-static {v7}, Lcom/google/common/collect/e1;->d(Ljava/util/Spliterator$OfInt;)I

    move-result v8

    and-int/2addr v4, v8

    .line 18
    invoke-static {v7}, Lcom/google/common/collect/j;->b(Ljava/util/Spliterator$OfInt;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/f0;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/common/collect/f0;-><init>(I)V

    .line 20
    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/common/collect/CollectSpliterators;->flatMapToInt(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    .line 21
    invoke-static {v0, v3}, Lcom/google/common/collect/e1;->x(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/j1;-><init>([Ljava/util/stream/BaseStream;I)V

    .line 22
    invoke-static {v0, v1}, Lcom/google/common/collect/e1;->l(Ljava/util/stream/IntStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/e1;->w(Ljava/lang/Object;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .locals 10

    .line 23
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 24
    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x150

    const-wide/16 v4, 0x0

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v8, p0, v6

    .line 25
    invoke-static {v8}, Lcom/google/common/collect/d1;->C(Ljava/util/stream/LongStream;)Z

    move-result v9

    or-int/2addr v7, v9

    .line 26
    invoke-static {v8}, Lcom/google/common/collect/d1;->l(Ljava/util/stream/LongStream;)Ljava/util/Spliterator$OfLong;

    move-result-object v8

    .line 27
    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    invoke-static {v8}, Lcom/google/common/collect/d1;->a(Ljava/util/Spliterator$OfLong;)I

    move-result v9

    and-int/2addr v3, v9

    .line 29
    invoke-static {v8}, Lcom/google/common/collect/d1;->b(Ljava/util/Spliterator$OfLong;)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/f0;

    const/16 v6, 0x8

    invoke-direct {v1, v6}, Lcom/google/common/collect/f0;-><init>(I)V

    .line 31
    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/common/collect/CollectSpliterators;->flatMapToLong(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    .line 32
    invoke-static {v0, v7}, Lcom/google/common/collect/d1;->q(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j1;

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/j1;-><init>([Ljava/util/stream/BaseStream;I)V

    .line 33
    invoke-static {v0, v1}, Lcom/google/common/collect/d1;->n(Ljava/util/stream/LongStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d1;->p(Ljava/lang/Object;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/stream/Stream<",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x150

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v7, p0, v2

    .line 3
    invoke-static {v7}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    move-result v8

    or-int/2addr v3, v8

    .line 4
    invoke-static {v7}, Lcom/google/common/collect/y;->f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;

    move-result-object v7

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 6
    invoke-static {v7}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    move-result v8

    and-int/2addr v4, v8

    .line 7
    invoke-static {v7}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/f0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/common/collect/f0;-><init>(I)V

    .line 9
    invoke-static {v0, v1, v4, v5, v6}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v0

    .line 10
    invoke-static {v0, v3}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/j1;-><init>([Ljava/util/stream/BaseStream;I)V

    .line 11
    invoke-static {v0, v1}, Lcom/google/common/collect/e1;->n(Ljava/util/stream/Stream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$2(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e([Ljava/util/stream/IntStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$3([Ljava/util/stream/IntStream;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$0(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$1OptionalState;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/y;->f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->k(Ljava/lang/Object;)Ljava/util/Spliterator;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/common/collect/d1;->c(Ljava/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/d1;->A(Ljava/util/Spliterator;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/google/common/collect/j;->l(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-static {v1}, Lcom/google/common/collect/d1;->c(Ljava/util/Spliterator;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {p0}, Lcom/google/common/collect/d1;->c(Ljava/util/Spliterator;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object p0, v1

    .line 11
    :cond_4
    :goto_1
    new-instance v1, Lcom/google/common/collect/i1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/Streams$1OptionalState;I)V

    invoke-static {p0, v1}, Lcom/google/common/collect/d1;->u(Ljava/util/Spliterator;Lcom/google/common/collect/i1;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d1;->h(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-static {p0}, Lcom/google/common/collect/j;->l(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 14
    invoke-static {v2}, Lcom/google/common/collect/d1;->c(Ljava/util/Spliterator;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_7
    :goto_2
    new-instance v2, Lcom/google/common/collect/i1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/Streams$1OptionalState;I)V

    invoke-static {p0, v2}, Lcom/google/common/collect/d1;->u(Ljava/util/Spliterator;Lcom/google/common/collect/i1;)V

    .line 18
    iget-boolean p0, v0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d1;->h(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 20
    :cond_8
    invoke-static {}, Lcom/google/common/collect/d1;->g()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/util/stream/DoubleStream;)Ljava/util/OptionalDouble;
    .locals 2

    .line 25
    invoke-static {p0}, Lcom/google/common/collect/f1;->r(Ljava/util/stream/DoubleStream;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object p0

    .line 26
    new-instance v0, Lcom/google/common/collect/f0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/common/collect/f0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/f1;->i(Ljava/util/Optional;Lcom/google/common/collect/f0;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/p;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/common/collect/p;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/d1;->e(Ljava/util/Optional;Lcom/google/common/collect/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/emoji2/text/e;->k(Ljava/lang/Object;)Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/util/stream/IntStream;)Ljava/util/OptionalInt;
    .locals 2

    .line 21
    invoke-static {p0}, Landroid/animation/b;->s(Ljava/util/stream/IntStream;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object p0

    .line 22
    new-instance v0, Lcom/google/common/collect/f0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/common/collect/f0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/f1;->i(Ljava/util/Optional;Lcom/google/common/collect/f0;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/common/collect/p;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/d1;->e(Ljava/util/Optional;Lcom/google/common/collect/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/a;->f(Ljava/lang/Object;)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static findLast(Ljava/util/stream/LongStream;)Ljava/util/OptionalLong;
    .locals 2

    .line 23
    invoke-static {p0}, Lcom/google/common/collect/e1;->y(Ljava/util/stream/LongStream;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->findLast(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object p0

    .line 24
    new-instance v0, Lcom/google/common/collect/f0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/common/collect/f0;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/f1;->i(Ljava/util/Optional;Lcom/google/common/collect/f0;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/p;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/common/collect/p;-><init>(I)V

    invoke-static {p0, v0}, Lcom/google/common/collect/d1;->e(Ljava/util/Optional;Lcom/google/common/collect/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/a;->g(Ljava/lang/Object;)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static forEachPair(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TA;>;",
            "Ljava/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/d1;->f(Ljava/util/stream/Stream;)Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1}, Lcom/google/common/collect/d1;->f(Ljava/util/stream/Stream;)Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p2, v0, v1}, Lcom/google/common/base/a;->v(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/common/collect/h1;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/google/common/collect/h1;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Streams;->zip(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Lcom/google/common/collect/l0;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-direct {p1, p2, v0}, Lcom/google/common/collect/l0;-><init>(Ljava/util/function/BiConsumer;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/google/common/collect/d1;->y(Ljava/util/stream/Stream;Lcom/google/common/collect/l0;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public static synthetic g(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$4(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h([Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$7([Ljava/util/stream/DoubleStream;)V

    return-void
.end method

.method public static synthetic i([Ljava/util/stream/LongStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->lambda$concat$5([Ljava/util/stream/LongStream;)V

    return-void
.end method

.method private static synthetic lambda$concat$0(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$concat$1([Ljava/util/stream/Stream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method private static synthetic lambda$concat$2(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$concat$3([Ljava/util/stream/IntStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method private static synthetic lambda$concat$4(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$concat$5([Ljava/util/stream/LongStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method private static synthetic lambda$concat$6(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$concat$7([Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Ljava/util/stream/BaseStream;)V

    return-void
.end method

.method private static synthetic lambda$forEachPair$8(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 1

    iget-object v0, p1, Lcom/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lcom/google/common/base/a;->v(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static mapWithIndex(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/DoubleStream;",
            "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p0}, Lcom/google/common/collect/d1;->B(Ljava/util/stream/DoubleStream;)Z

    move-result v0

    .line 40
    invoke-static {p0}, Lcom/google/common/collect/d1;->k(Ljava/util/stream/DoubleStream;)Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/google/common/collect/d1;->z(Ljava/util/Spliterator$OfDouble;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-static {v1}, Lcom/google/common/collect/d1;->j(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v7

    .line 43
    new-instance v2, Lcom/google/common/collect/Streams$5;

    .line 44
    invoke-static {v1}, Lcom/google/common/collect/e1;->f(Ljava/util/Spliterator$OfDouble;)J

    move-result-wide v4

    .line 45
    invoke-static {v1}, Lcom/google/common/collect/e1;->c(Ljava/util/Spliterator$OfDouble;)I

    move-result v1

    and-int/lit8 v6, v1, 0x50

    move-object v3, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$5;-><init>(JILjava/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    .line 46
    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/google/common/collect/k1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/k1;-><init>(Ljava/util/stream/DoubleStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/d1;->o(Ljava/util/stream/Stream;Lcom/google/common/collect/k1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$4Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Ljava/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/k1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/k1;-><init>(Ljava/util/stream/DoubleStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/d1;->o(Ljava/util/stream/Stream;Lcom/google/common/collect/k1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static mapWithIndex(Ljava/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/IntStream;",
            "Lcom/google/common/collect/Streams$IntFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0}, Lcom/google/common/collect/e1;->D(Ljava/util/stream/IntStream;)Z

    move-result v0

    .line 16
    invoke-static {p0}, Lcom/google/common/collect/j;->h(Ljava/util/stream/IntStream;)Ljava/util/Spliterator$OfInt;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/google/common/collect/e1;->B(Ljava/util/Spliterator$OfInt;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    invoke-static {v1}, Lcom/google/common/collect/e1;->j(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v7

    .line 19
    new-instance v2, Lcom/google/common/collect/Streams$3;

    .line 20
    invoke-static {v1}, Lcom/google/common/collect/j;->b(Ljava/util/Spliterator$OfInt;)J

    move-result-wide v4

    .line 21
    invoke-static {v1}, Lcom/google/common/collect/e1;->d(Ljava/util/Spliterator$OfInt;)I

    move-result v1

    and-int/lit8 v6, v1, 0x50

    move-object v3, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$3;-><init>(JILjava/util/PrimitiveIterator$OfInt;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    .line 22
    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/google/common/collect/l1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/l1;-><init>(Ljava/util/stream/IntStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->o(Ljava/util/stream/Stream;Lcom/google/common/collect/l1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$2Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$2Splitr;-><init>(Ljava/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/l1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/l1;-><init>(Ljava/util/stream/IntStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->o(Ljava/util/stream/Stream;Lcom/google/common/collect/l1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static mapWithIndex(Ljava/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/LongStream;",
            "Lcom/google/common/collect/Streams$LongFunctionWithIndex<",
            "TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Lcom/google/common/collect/d1;->C(Ljava/util/stream/LongStream;)Z

    move-result v0

    .line 28
    invoke-static {p0}, Lcom/google/common/collect/d1;->l(Ljava/util/stream/LongStream;)Ljava/util/Spliterator$OfLong;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/google/common/collect/e1;->C(Ljava/util/Spliterator$OfLong;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-static {v1}, Lcom/google/common/collect/f1;->j(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v7

    .line 31
    new-instance v2, Lcom/google/common/collect/Streams$4;

    .line 32
    invoke-static {v1}, Lcom/google/common/collect/d1;->b(Ljava/util/Spliterator$OfLong;)J

    move-result-wide v4

    .line 33
    invoke-static {v1}, Lcom/google/common/collect/d1;->a(Ljava/util/Spliterator$OfLong;)I

    move-result v1

    and-int/lit8 v6, v1, 0x50

    move-object v3, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$4;-><init>(JILjava/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    .line 34
    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/google/common/collect/m1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m1;-><init>(Ljava/util/stream/LongStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->p(Ljava/util/stream/Stream;Lcom/google/common/collect/m1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$3Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Ljava/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/m1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/m1;-><init>(Ljava/util/stream/LongStream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->p(Ljava/util/stream/Stream;Lcom/google/common/collect/m1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static mapWithIndex(Ljava/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Ljava/util/stream/Stream;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lcom/google/common/collect/Streams$FunctionWithIndex<",
            "-TT;+TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    move-result v0

    .line 4
    invoke-static {p0}, Lcom/google/common/collect/y;->f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/google/common/collect/d1;->A(Ljava/util/Spliterator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {v1}, Lcom/google/common/collect/e1;->g(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v7

    .line 7
    new-instance v2, Lcom/google/common/collect/Streams$2;

    .line 8
    invoke-static {v1}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    move-result-wide v4

    .line 9
    invoke-static {v1}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    move-result v1

    and-int/lit8 v6, v1, 0x50

    move-object v3, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$2;-><init>(JILjava/util/Iterator;Lcom/google/common/collect/Streams$FunctionWithIndex;)V

    .line 10
    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/common/collect/g1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g1;-><init>(Ljava/util/stream/Stream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->m(Ljava/util/stream/Stream;Lcom/google/common/collect/g1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$1Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Ljava/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    invoke-static {v2, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/common/collect/g1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g1;-><init>(Ljava/util/stream/Stream;I)V

    invoke-static {p1, v0}, Lcom/google/common/collect/e1;->m(Ljava/util/stream/Stream;Lcom/google/common/collect/g1;)Ljava/util/stream/BaseStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/OptionalDouble;)Ljava/util/stream/DoubleStream;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "optional.stream()"
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMeValidationDisabled;
        value = "Java 9+ API only"
    .end annotation

    .line 10
    invoke-static {p0}, Landroidx/emoji2/text/e;->w(Ljava/util/OptionalDouble;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/e1;->a(Ljava/util/OptionalDouble;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/collect/e1;->r(D)Ljava/util/stream/DoubleStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/e1;->q()Ljava/util/stream/DoubleStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stream(Ljava/util/OptionalInt;)Ljava/util/stream/IntStream;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "optional.stream()"
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMeValidationDisabled;
        value = "Java 9+ API only"
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/google/common/base/a;->z(Ljava/util/OptionalInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/e1;->b(Ljava/util/OptionalInt;)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/e1;->v(I)Ljava/util/stream/IntStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/e1;->u()Ljava/util/stream/IntStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stream(Ljava/util/OptionalLong;)Ljava/util/stream/LongStream;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "optional.stream()"
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMeValidationDisabled;
        value = "Java 9+ API only"
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/google/common/base/a;->A(Ljava/util/OptionalLong;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/e1;->e(Ljava/util/OptionalLong;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/collect/f1;->p(J)Ljava/util/stream/LongStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/f1;->o()Ljava/util/stream/LongStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stream(Lcom/google/common/base/Optional;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Optional<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d1;->s(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/d1;->r()Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Landroidx/emoji2/text/e;->m(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/a;->h(Ljava/lang/Iterable;)Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/a;->q(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static stream(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "collection.stream()"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p0}, Landroidx/emoji2/text/e;->m(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Iterator;)Ljava/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/google/common/collect/d1;->m(Ljava/util/Iterator;)Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/a;->q(Ljava/util/Spliterator;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Optional;)Ljava/util/stream/Stream;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        replacement = "optional.stream()"
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMeValidationDisabled;
        value = "Java 9+ API only"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Optional<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Landroidx/emoji2/text/e;->v(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/d1;->d(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d1;->s(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/d1;->r()Ljava/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zip(Ljava/util/stream/Stream;Ljava/util/stream/Stream;Ljava/util/function/BiFunction;)Ljava/util/stream/Stream;
    .locals 13
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TA;>;",
            "Ljava/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/common/collect/d1;->D(Ljava/util/stream/Stream;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v0, v2

    .line 28
    :goto_1
    invoke-static {p0}, Lcom/google/common/collect/y;->f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {p1}, Lcom/google/common/collect/y;->f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-static {v4}, Lcom/google/common/collect/j;->a(Ljava/util/Spliterator;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    and-int/2addr v5, v6

    .line 45
    and-int/lit8 v9, v5, 0x50

    .line 46
    .line 47
    invoke-static {v3}, Lcom/google/common/collect/e1;->g(Ljava/util/Spliterator;)Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-static {v4}, Lcom/google/common/collect/e1;->g(Ljava/util/Spliterator;)Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    new-instance v5, Lcom/google/common/collect/Streams$1;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    invoke-static {v4}, Lcom/google/common/collect/j;->c(Ljava/util/Spliterator;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    move-object v6, v5

    .line 70
    move-object v12, p2

    .line 71
    invoke-direct/range {v6 .. v12}, Lcom/google/common/collect/Streams$1;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v0}, Lcom/google/common/collect/d1;->t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-instance v0, Lcom/google/common/collect/g1;

    .line 79
    .line 80
    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g1;-><init>(Ljava/util/stream/Stream;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p2, v0}, Lcom/google/common/collect/e1;->m(Ljava/util/stream/Stream;Lcom/google/common/collect/g1;)Ljava/util/stream/BaseStream;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-instance p2, Lcom/google/common/collect/g1;

    .line 92
    .line 93
    invoke-direct {p2, p1, v2}, Lcom/google/common/collect/g1;-><init>(Ljava/util/stream/Stream;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p2}, Lcom/google/common/collect/e1;->m(Ljava/util/stream/Stream;Lcom/google/common/collect/g1;)Ljava/util/stream/BaseStream;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
