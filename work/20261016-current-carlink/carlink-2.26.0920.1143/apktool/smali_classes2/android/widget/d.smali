.class public abstract synthetic Landroid/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/icu/util/Calendar;)I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Landroid/icu/util/Calendar;)V
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic C(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic D(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/SimpleDateFormat;
    .locals 1

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/lang/Object;)Landroid/icu/util/ULocale;
    .locals 0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/icu/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/util/function/Consumer;
    .locals 0

    check-cast p0, Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .locals 0

    check-cast p0, Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static synthetic g()V
    .locals 1

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    return-void
.end method

.method public static bridge synthetic h(Landroid/icu/text/SimpleDateFormat;Landroid/icu/text/DisplayContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    return-void
.end method

.method public static bridge synthetic i(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic j(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic k(Landroid/icu/util/Calendar;Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public static bridge synthetic l(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Ljava/util/function/Predicate;Landroid/content/ClipData$Item;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Landroid/icu/util/Calendar;)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/icu/util/Calendar;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/icu/util/Calendar;)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/icu/util/Calendar;I)V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x1f

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/icu/util/Calendar;)I
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/icu/util/Calendar;)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method
