.class public abstract synthetic Lcom/google/common/collect/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/util/PrimitiveIterator$OfDouble;)D
    .locals 2

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b(Ljava/util/PrimitiveIterator$OfInt;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/util/PrimitiveIterator$OfLong;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/util/function/BinaryOperator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/Optional;Lcom/google/common/collect/f0;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 0

    invoke-static {p0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k()Ljava/util/stream/Collector$Characteristics;
    .locals 1

    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method

.method public static bridge synthetic l(Lcom/google/common/collect/p;Lcom/google/common/collect/n1;Lcom/google/common/collect/o1;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/common/collect/p;Lcom/google/common/collect/p1;Lcom/google/common/collect/l;Lcom/google/common/collect/f0;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/function/Supplier;Lcom/google/common/collect/n1;Lcom/google/common/collect/o1;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o()Ljava/util/stream/LongStream;
    .locals 1

    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic p(J)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/LongStream;->of(J)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/stream/DoubleStream;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/List;Ljava/util/function/UnaryOperator;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Ljava/util/PrimitiveIterator$OfDouble;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->hasNext()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Ljava/util/PrimitiveIterator$OfInt;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->hasNext()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/util/PrimitiveIterator$OfLong;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method
