.class public abstract synthetic Lcom/google/common/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/OptionalLong;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalLong;

    return p0
.end method

.method public static bridge synthetic a(Ljava/util/function/ToIntFunction;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Ljava/util/OptionalInt;
    .locals 0

    check-cast p0, Ljava/util/OptionalInt;

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/lang/Object;)Ljava/util/OptionalLong;
    .locals 0

    check-cast p0, Ljava/util/OptionalLong;

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/Iterable;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/Collection;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/Iterator;J)Ljava/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/Iterator;JI)Ljava/util/Spliterator;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/Set;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/common/collect/m;Lcom/google/common/collect/o;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/google/common/collect/p;Lcom/google/common/collect/r;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/common/collect/s;Lcom/google/common/collect/o;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/util/function/Supplier;Lcom/google/common/collect/k;Lcom/google/common/collect/l;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/util/Spliterator;)Ljava/util/stream/Stream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/Collection;Lcom/google/common/collect/b;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/Map;Lcom/google/common/collect/a;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/Map;Lcom/google/common/collect/f;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/Map;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/stream/Stream;Lcom/google/common/collect/w;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic y(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalInt;

    return p0
.end method

.method public static bridge synthetic z(Ljava/util/OptionalInt;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    return p0
.end method
