.class public abstract synthetic Lcom/google/common/hash/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/stream/LongStream;)[J
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(II[I)Ljava/util/Spliterator$OfInt;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D([JII)Ljava/util/Spliterator$OfLong;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/util/function/DoubleBinaryOperator;DD)D
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(Ljava/nio/channels/SeekableByteChannel;)J
    .locals 2

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/util/Spliterator$OfDouble;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfDouble;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Spliterator$OfInt;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfInt;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(Ljava/util/Spliterator$OfLong;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/Spliterator$OfLong;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Lcom/google/common/util/concurrent/l;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/stream/DoubleStream;Landroid/content/res/a;Lcom/google/common/math/e;Lcom/google/common/math/b;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/DoubleStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/util/stream/IntStream;Landroid/content/res/a;Lcom/google/common/math/f;Lcom/google/common/math/b;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/IntStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/stream/LongStream;Landroid/content/res/a;Lcom/google/common/math/a;Lcom/google/common/math/b;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/stream/LongStream;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(II[I)Ljava/util/Spliterator$OfInt;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p2, p0, p1, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l([JII)Ljava/util/Spliterator$OfLong;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/stream/Stream;Lcom/google/common/io/a;)Ljava/util/stream/BaseStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/content/res/a;Lcom/google/common/math/b;Lcom/google/common/math/c;Lcom/google/common/math/d;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/common/hash/b;Lcom/google/common/hash/c;Lcom/google/common/hash/d;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p([DII)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(II[I)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p2, p0, p1}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r([JII)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/io/BufferedReader;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 0

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/Spliterator$OfDouble;Lcom/google/common/primitives/a;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/Spliterator$OfInt;Lcom/google/common/primitives/b;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/Spliterator$OfLong;Lcom/google/common/primitives/c;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/function/DoubleConsumer;D)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public static bridge synthetic y(Ljava/util/function/LongConsumer;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public static bridge synthetic z(Ljava/util/stream/DoubleStream;)[D
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    return-object p0
.end method
