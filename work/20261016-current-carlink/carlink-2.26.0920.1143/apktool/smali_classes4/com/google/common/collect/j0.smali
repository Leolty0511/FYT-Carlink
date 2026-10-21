.class public abstract synthetic Lcom/google/common/collect/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/List;Lcom/google/common/collect/a0;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x511

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Ljava/util/NavigableSet;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/NavigableSet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Ljava/util/stream/Stream;J)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/util/Spliterator;
    .locals 1

    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic d(Ljava/util/Iterator;J)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x41

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/NavigableSet;)Ljava/util/Spliterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/NavigableSet;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/Set;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1

    const/16 v0, 0x510

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/util/function/BiConsumer;
    .locals 0

    check-cast p0, Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/stream/Stream;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/NavigableSet;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/NavigableSet;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/Set;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/stream/Stream;J)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/stream/Stream;Lcom/google/common/collect/y0;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/util/Collection;Lcom/google/common/collect/l0;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic r(Ljava/util/Collection;Lcom/google/common/collect/q0;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/Iterator;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/Map;Lcom/google/common/collect/k;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/Map;Lcom/google/common/collect/g0;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/NavigableSet;Lcom/google/common/collect/v;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/NavigableSet;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/Set;Lcom/google/common/collect/v;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic y(Ljava/util/Set;Lcom/google/common/collect/w;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic z(Ljava/util/Set;Lcom/google/common/collect/q0;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
