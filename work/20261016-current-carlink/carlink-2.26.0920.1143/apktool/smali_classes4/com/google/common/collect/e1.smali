.class public abstract synthetic Lcom/google/common/collect/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/stream/LongStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public static bridge synthetic B(Ljava/util/Spliterator$OfInt;)Z
    .locals 1

    const/16 v0, 0x4000

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfInt;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Ljava/util/Spliterator$OfLong;)Z
    .locals 1

    const/16 v0, 0x4000

    invoke-interface {p0, v0}, Ljava/util/Spliterator$OfLong;->hasCharacteristics(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/util/stream/IntStream;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Ljava/util/OptionalDouble;)D
    .locals 2

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b(Ljava/util/OptionalInt;)I
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/util/Spliterator$OfDouble;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->characteristics()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Ljava/util/Spliterator$OfInt;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->characteristics()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Ljava/util/OptionalLong;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(Ljava/util/Spliterator$OfDouble;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic g(Ljava/util/Spliterator;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/util/OptionalInt;
    .locals 1

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic i()Ljava/util/OptionalLong;
    .locals 1

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic j(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 0

    invoke-static {p0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/util/stream/DoubleStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/util/stream/IntStream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/stream/Stream;Lcom/google/common/collect/g1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/stream/Stream;Lcom/google/common/collect/j1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/util/stream/Stream;Lcom/google/common/collect/l1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/util/stream/Stream;Lcom/google/common/collect/m1;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q()Ljava/util/stream/DoubleStream;
    .locals 1

    invoke-static {}, Ljava/util/stream/DoubleStream;->empty()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic r(D)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/DoubleStream;->of(D)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Ljava/util/stream/DoubleStream;
    .locals 0

    check-cast p0, Ljava/util/stream/DoubleStream;

    return-object p0
.end method

.method public static bridge synthetic t(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u()Ljava/util/stream/IntStream;
    .locals 1

    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic v(I)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Ljava/lang/Object;)Ljava/util/stream/IntStream;
    .locals 0

    check-cast p0, Ljava/util/stream/IntStream;

    return-object p0
.end method

.method public static bridge synthetic x(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Ljava/util/stream/LongStream;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/util/stream/IntStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method
