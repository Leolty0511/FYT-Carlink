.class public abstract synthetic Lcom/google/common/collect/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/Spliterator;)Z
    .locals 1

    const/16 v0, 0x4000

    invoke-interface {p0, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/stream/DoubleStream;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/stream/LongStream;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/util/stream/Stream;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Ljava/util/Spliterator$OfLong;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->characteristics()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/util/Spliterator$OfLong;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/util/Spliterator;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/Optional;Lcom/google/common/collect/p;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/stream/Stream;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g()Ljava/util/Optional;
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/util/OptionalDouble;
    .locals 1

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 0

    invoke-static {p0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/stream/DoubleStream;)Ljava/util/Spliterator$OfDouble;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/stream/LongStream;)Ljava/util/Spliterator$OfLong;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/Iterator;)Ljava/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/stream/LongStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/util/stream/Stream;Lcom/google/common/collect/k1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/lang/Object;)Ljava/util/stream/LongStream;
    .locals 0

    check-cast p0, Ljava/util/stream/LongStream;

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r()Ljava/util/stream/Stream;
    .locals 1

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Ljava/util/Spliterator;Lcom/google/common/collect/i1;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/stream/BaseStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/stream/DoubleStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/stream/Stream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public static bridge synthetic y(Ljava/util/stream/Stream;Lcom/google/common/collect/l0;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic z(Ljava/util/Spliterator$OfDouble;)Z
    .locals 1

    const/16 v0, 0x4000

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfDouble;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method
