.class public abstract synthetic Lcom/google/common/collect/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Ljava/util/Collection;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x510

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Lcom/google/common/collect/c;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/common/collect/UnmodifiableIterator;J)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x511

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/Collection;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/List;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/stream/Stream;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h([Ljava/lang/Object;I)Ljava/util/Spliterator;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {p0, v0, p1, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/util/function/Function;
    .locals 1

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Lcom/google/common/collect/m;Lcom/google/common/collect/k;Lcom/google/common/collect/l;Lcom/google/common/collect/e;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/google/common/collect/b0;Lcom/google/common/collect/r;Lcom/google/common/collect/l;Lcom/google/common/collect/c;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/google/common/collect/s;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/stream/Stream;Lcom/google/common/collect/f0;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/lang/Iterable;Lcom/google/common/collect/v;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic o(Ljava/util/Collection;Lcom/google/common/collect/v;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic p(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic r(Ljava/util/NavigableMap;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/Set;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/function/ObjIntConsumer;Ljava/lang/Enum;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/Collection;Lcom/google/common/collect/a0;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Ljava/util/Spliterator$OfPrimitive;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/util/Collection;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
