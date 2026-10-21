.class public abstract synthetic Landroid/net/lowpan/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/util/stream/IntStream;Landroid/os/c;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/util/stream/Stream;Landroid/os/d;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(I)Z
    .locals 1

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(I)Z
    .locals 1

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(I)I
    .locals 0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public static bridge synthetic c(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/util/concurrent/CompletableFuture;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/icu/text/StringPrepParseException;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/StringPrepParseException;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k()Ljava/util/StringJoiner;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static synthetic l()Ljava/util/concurrent/CompletableFuture;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic m(I)Ljava/util/stream/IntStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/util/List;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLSession;
    .locals 0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static bridge synthetic s(ILjava/util/function/IntConsumer;)V
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/util/Set;Landroid/telecom/c;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/Set;Landroid/telecom/d;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/util/concurrent/CompletableFuture;Landroid/os/SynchronousResultReceiver$Result;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic w(Ljava/util/concurrent/LinkedBlockingQueue;Landroid/telecom/Logging/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/util/function/Consumer;Landroid/os/IInterface;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic y(I)Z
    .locals 1

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Landroid/icu/util/ULocale;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result p0

    return p0
.end method
