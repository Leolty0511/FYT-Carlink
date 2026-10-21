.class public abstract synthetic Landroidx/emoji2/text/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/OptionalDouble;

    return p0
.end method

.method public static bridge synthetic C()Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public static bridge synthetic D(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b()Landroid/icu/util/TimeZone;
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic c()Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic d(ILjava/util/function/IntFunction;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/Optional;Lcom/google/android/projection/protocol/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/util/stream/Stream;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/lang/Object;)Ljava/util/OptionalDouble;
    .locals 0

    check-cast p0, Ljava/util/OptionalDouble;

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/stream/Stream;Lcom/android/internal/util/a;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/util/stream/Stream;Lcom/google/android/projection/protocol/c;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p()V
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    return-void
.end method

.method public static bridge synthetic q(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public static synthetic r(Landroid/icu/util/ULocale;)V
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/util/List;Lb/a;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/icu/util/ULocale;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/util/Optional;

    return p0
.end method

.method public static bridge synthetic v(Ljava/util/Optional;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Ljava/util/OptionalDouble;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x()Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public static bridge synthetic y(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/util/stream/Stream;)Ljava/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
