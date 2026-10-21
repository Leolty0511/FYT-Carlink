.class public abstract synthetic Landroid/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/stream/Stream;Landroid/hardware/radio/a;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/stream/IntStream;)[I
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C()Ljava/util/StringJoiner;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static synthetic D()V
    .locals 1

    new-instance v0, Ljava/util/StringJoiner;

    return-void
.end method

.method public static bridge synthetic a(Ljava/util/function/DoubleUnaryOperator;)D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b(Ljava/util/function/DoubleUnaryOperator;D)D
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(Ljava/util/stream/LongStream;)J
    .locals 2

    invoke-interface {p0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic d(Ljava/util/Locale;)Landroid/icu/text/PluralRules;
    .locals 0

    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/io/IOException;)Ljava/io/UncheckedIOException;
    .locals 1

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method

.method public static bridge synthetic f(Ljava/util/Map;Ljava/lang/Object;Landroid/bluetooth/le/IAdvertisingSetCallback;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/icu/text/PluralRules;D)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/util/StringJoiner;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Ljava/util/StringJoiner;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static bridge synthetic k()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic l(Landroid/graphics/b;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/function/DoubleUnaryOperator;Landroid/graphics/b;)Ljava/util/function/DoubleUnaryOperator;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/util/stream/Collector;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic o(Ljava/util/stream/Stream;Landroid/hardware/radio/b;)Ljava/util/stream/IntStream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p([I)Ljava/util/stream/IntStream;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q([J)Ljava/util/stream/LongStream;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/util/Set;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/util/stream/IntStream;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u()V
    .locals 1

    new-instance v0, Ljava/io/UncheckedIOException;

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/ArrayList;Landroid/app/q;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/ArrayList;Landroid/app/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/ArrayList;Landroid/app/t;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static bridge synthetic y(Ljava/util/ArrayList;Ljava/util/Comparator;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public static bridge synthetic z(Ljava/util/StringJoiner;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method
