.class public abstract synthetic Landroid/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic B(Landroid/icu/util/Calendar;)I
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/icu/util/Calendar;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x76c

    invoke-virtual {p0, v2, v0, v1}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method public static bridge synthetic D(Landroid/icu/util/Calendar;)V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x1f

    const/16 v2, 0x834

    invoke-virtual {p0, v2, v0, v1}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/icu/util/TimeZone;J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string v0, "EMMMd"

    invoke-static {v0, p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d()Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/icu/util/Calendar;
    .locals 0

    check-cast p0, Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/icu/util/Calendar;)Landroid/icu/util/TimeZone;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/icu/util/Calendar;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/icu/util/Calendar;)Ljava/util/Date;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(ILandroid/icu/util/Calendar;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public static bridge synthetic k(Landroid/icu/text/DateFormat;Landroid/icu/text/DisplayContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, -0x7

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/icu/util/Calendar;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/icu/util/Calendar;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic q(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    const-string/jumbo v0, "y"

    invoke-static {v0, p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/icu/util/Calendar;)V
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clear()V

    return-void
.end method

.method public static bridge synthetic w(Landroid/icu/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->add(II)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method
