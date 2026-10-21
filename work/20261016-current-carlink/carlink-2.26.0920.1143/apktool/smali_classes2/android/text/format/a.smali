.class public abstract synthetic Landroid/text/format/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Landroid/icu/util/TimeUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    return-object v0
.end method

.method public static synthetic B()V
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public static bridge synthetic C()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public static bridge synthetic D()Landroid/icu/util/TimeUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    return-object v0
.end method

.method public static bridge synthetic a()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 0

    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 0

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Landroid/icu/text/UnicodeSet;
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Zs:][:Cf:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSetSpanner;
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/Float;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/Measure;
    .locals 1

    new-instance v0, Landroid/icu/util/Measure;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-object v0
.end method

.method public static synthetic i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;
    .locals 1

    new-instance v0, Landroid/icu/util/Measure;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-object v0
.end method

.method public static synthetic j(Ljava/lang/Long;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;
    .locals 1

    new-instance v0, Landroid/icu/util/Measure;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-object v0
.end method

.method public static bridge synthetic k()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public static bridge synthetic l()Landroid/icu/util/TimeUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/icu/text/UnicodeSetSpanner;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/icu/text/MeasureFormat;[Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/icu/text/NumberFormat;D)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p()V
    .locals 1

    new-instance v0, Landroid/icu/util/Measure;

    return-void
.end method

.method public static bridge synthetic q(Landroid/icu/text/NumberFormat;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/icu/text/NumberFormat;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroid/icu/text/DecimalFormat;

    return p0
.end method

.method public static bridge synthetic t()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public static bridge synthetic u()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public static bridge synthetic v()Landroid/icu/util/TimeUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    return-object v0
.end method

.method public static synthetic w()V
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    return-void
.end method

.method public static bridge synthetic x(Landroid/icu/text/NumberFormat;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/icu/text/NumberFormat;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public static bridge synthetic z()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method
