.class public abstract synthetic Lcom/google/common/collect/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/Spliterator$OfInt;Lcom/google/common/collect/u;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/Spliterator;Lcom/google/common/collect/t;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/Spliterator;Lcom/google/common/collect/w;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/util/Spliterator;Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Ljava/util/Spliterator;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/util/Spliterator$OfInt;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/util/Spliterator;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Spliterator;)Ljava/util/Comparator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfDouble;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Ljava/util/Spliterator$OfInt;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfInt;

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/util/stream/IntStream;)Ljava/util/Spliterator$OfInt;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/util/Spliterator$OfLong;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfLong;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Ljava/util/Spliterator$OfPrimitive;
    .locals 0

    check-cast p0, Ljava/util/Spliterator$OfPrimitive;

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 0

    check-cast p0, Ljava/util/Spliterator;

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Ljava/util/stream/Collector$Characteristics;
    .locals 1

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method

.method public static bridge synthetic n(Lcom/google/common/collect/m;Lcom/google/common/collect/r;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/common/collect/p;Lcom/google/common/collect/k;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/google/common/collect/p;Lcom/google/common/collect/o;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/m;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/p;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/util/function/Supplier;Lcom/google/common/collect/o;Lcom/google/common/collect/l;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Ljava/util/stream/Collector;Lcom/google/common/collect/c;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    check-cast p0, Ljava/util/stream/Stream;

    return-object p0
.end method

.method public static bridge synthetic v(Ljava/util/stream/Stream;Lcom/google/common/collect/q;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Ljava/util/Spliterator$OfInt;Lcom/google/common/collect/u;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/Spliterator;Lcom/google/common/collect/t;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic y(Ljava/util/Spliterator;Lcom/google/common/collect/v;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic z(Ljava/util/Spliterator;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method
