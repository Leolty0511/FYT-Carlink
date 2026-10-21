.class public abstract synthetic Landroid/text/format/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/icu/text/BreakIterator;I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic B()Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static bridge synthetic C(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D()Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static bridge synthetic a(I)I
    .locals 0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/icu/text/BreakIterator;I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/icu/util/Calendar;)I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Landroid/icu/util/TimeZone;)I
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/icu/util/Calendar;)J
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic f(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 0

    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j()Landroid/icu/util/Calendar;
    .locals 1

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic k(Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 0

    invoke-static {p0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public static bridge synthetic m()Landroid/icu/util/TimeZone;
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic n(Ljava/lang/Object;)Landroid/icu/util/TimeZone;
    .locals 0

    check-cast p0, Landroid/icu/util/TimeZone;

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/icu/text/LocaleDisplayNames;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/view/textclassifier/f;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/icu/text/BreakIterator;Landroid/text/CharSequenceCharacterIterator;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/icu/util/Calendar;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/icu/util/Calendar;Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/util/function/Consumer;Ljava/io/FileOutputStream;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic v(I)Z
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic w(Landroid/icu/text/BreakIterator;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(I)I
    .locals 1

    const/16 v0, 0x1014

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p0

    return p0
.end method
