.class public abstract synthetic Lcom/google/common/util/concurrent/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/util/function/LongBinaryOperator;JJ)J
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(Ljava/util/function/LongUnaryOperator;J)J
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/google/common/util/concurrent/m;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/stream/Stream;Lcom/google/common/util/concurrent/p;)Ljava/util/stream/LongStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/Collection;Lcom/google/common/util/concurrent/r;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static bridge synthetic g(Ljava/util/Map;Lcom/google/common/util/concurrent/s;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static bridge synthetic h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/google/common/util/concurrent/n;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic i(Ljava/util/function/BooleanSupplier;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method
