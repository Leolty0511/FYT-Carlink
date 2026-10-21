.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$RoundedBytesResult;,
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PETABYTE:Landroid/icu/util/MeasureUnit;

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/format/a;->w()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/text/format/a;->B()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/text/format/a;->e()Landroid/icu/text/UnicodeSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/format/a;->f(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/format/a;->g(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSetSpanner;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    .line 20
    .line 21
    invoke-static {}, Landroid/text/format/Formatter;->createPetaByte()Landroid/icu/util/MeasureUnit;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    return-object p1
.end method

.method private static createPetaByte()Landroid/icu/util/MeasureUnit;
    .locals 6

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-class v1, Landroid/icu/util/MeasureUnit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object v0, v3, v4

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    aput-object v0, v3, v5

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    new-array v1, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "digital"

    .line 24
    .line 25
    aput-object v2, v1, v4

    .line 26
    .line 27
    const-string v2, "petabyte"

    .line 28
    .line 29
    aput-object v2, v1, v5

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/icu/util/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v2, "Failed to create petabyte MeasureUnit"

    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method private static deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget p3, p1, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 19
    .line 20
    invoke-static {p2, p3}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iget v0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 25
    .line 26
    float-to-double v0, v0

    .line 27
    invoke-static {p3, v0, v1}, Landroid/text/format/a;->o(Landroid/icu/text/NumberFormat;D)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 32
    .line 33
    invoke-static {}, Landroid/text/format/a;->k()Landroid/icu/util/MeasureUnit;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    iget-object v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 40
    .line 41
    sget-object v2, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 42
    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget p0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 47
    .line 48
    invoke-static {p2, p3, p0, v1}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0, v0}, Landroid/text/format/Formatter;->deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object p2, Landroid/text/format/Formatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    .line 57
    .line 58
    invoke-static {p2, p0}, Landroid/text/format/a;->m(Landroid/icu/text/UnicodeSetSpanner;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-object p2, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 68
    .line 69
    invoke-static {p0, p2}, Landroid/text/format/Formatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    new-instance p2, Landroid/text/format/Formatter$BytesResult;

    .line 74
    .line 75
    iget-wide v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    .line 76
    .line 77
    invoke-direct {p2, v0, p0, v1, v2}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 78
    .line 79
    .line 80
    return-object p2
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter$RoundedBytesResult;->roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Landroid/text/format/Formatter;->formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/format/a;->a()Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0, p1}, Landroid/text/format/a;->c(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, p3}, Landroid/text/format/a;->h(Ljava/lang/Float;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/Measure;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static formatRoundedBytesResult(Landroid/content/Context;Landroid/text/format/Formatter$RoundedBytesResult;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/text/format/Formatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 12
    .line 13
    invoke-static {}, Landroid/text/format/a;->k()Landroid/icu/util/MeasureUnit;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    iget-object v2, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 20
    .line 21
    sget-object v3, Landroid/text/format/Formatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 27
    .line 28
    invoke-static {v0, v1, p0, v2}, Landroid/text/format/Formatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    :goto_0
    iget v0, p1, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 34
    .line 35
    float-to-double v2, v0

    .line 36
    invoke-static {v1, v2, v3}, Landroid/text/format/a;->o(Landroid/icu/text/NumberFormat;D)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x2

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    aput-object v0, v1, v2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object p1, p1, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 51
    .line 52
    invoke-static {v0, p1}, Landroid/text/format/Formatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x1

    .line 57
    aput-object p1, v1, v0

    .line 58
    .line 59
    const p1, 0x1040211

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    const-wide/32 v0, 0x15180

    .line 5
    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    div-long v0, p1, v0

    .line 13
    .line 14
    long-to-int v0, v0

    .line 15
    const v1, 0x15180

    .line 16
    .line 17
    .line 18
    mul-int/2addr v1, v0

    .line 19
    int-to-long v1, v1

    .line 20
    sub-long/2addr p1, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    const-wide/16 v1, 0xe10

    .line 24
    .line 25
    cmp-long v4, p1, v1

    .line 26
    .line 27
    if-ltz v4, :cond_1

    .line 28
    .line 29
    div-long v1, p1, v1

    .line 30
    .line 31
    long-to-int v1, v1

    .line 32
    mul-int/lit16 v2, v1, 0xe10

    .line 33
    .line 34
    int-to-long v4, v2

    .line 35
    sub-long/2addr p1, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v3

    .line 38
    :goto_1
    const-wide/16 v4, 0x3c

    .line 39
    .line 40
    cmp-long v2, p1, v4

    .line 41
    .line 42
    if-ltz v2, :cond_2

    .line 43
    .line 44
    div-long v4, p1, v4

    .line 45
    .line 46
    long-to-int v2, v4

    .line 47
    mul-int/lit8 v4, v2, 0x3c

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    sub-long/2addr p1, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v2, v3

    .line 53
    :goto_2
    long-to-int p1, p1

    .line 54
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {}, Landroid/text/format/a;->a()Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p0, p2}, Landroid/text/format/a;->b(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 p2, 0x2

    .line 67
    if-lt v0, p2, :cond_3

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0xc

    .line 70
    .line 71
    div-int/lit8 v1, v1, 0x18

    .line 72
    .line 73
    add-int/2addr v1, v0

    .line 74
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {}, Landroid/text/format/a;->D()Landroid/icu/util/TimeUnit;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_3
    const/4 v4, 0x1

    .line 95
    if-lez v0, :cond_4

    .line 96
    .line 97
    new-array p1, p2, [Landroid/icu/util/Measure;

    .line 98
    .line 99
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {}, Landroid/text/format/a;->D()Landroid/icu/util/TimeUnit;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p2, v0}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    aput-object p2, p1, v3

    .line 115
    .line 116
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {}, Landroid/text/format/a;->l()Landroid/icu/util/TimeUnit;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {p2, v0}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    aput-object p2, p1, v4

    .line 132
    .line 133
    invoke-static {p0, p1}, Landroid/text/format/a;->n(Landroid/icu/text/MeasureFormat;[Landroid/icu/util/Measure;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_4
    if-lt v1, p2, :cond_5

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1e

    .line 141
    .line 142
    div-int/lit8 v2, v2, 0x3c

    .line 143
    .line 144
    add-int/2addr v2, v1

    .line 145
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {}, Landroid/text/format/a;->l()Landroid/icu/util/TimeUnit;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p1, p2}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :cond_5
    if-lez v1, :cond_6

    .line 166
    .line 167
    new-array p1, p2, [Landroid/icu/util/Measure;

    .line 168
    .line 169
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 170
    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-static {}, Landroid/text/format/a;->l()Landroid/icu/util/TimeUnit;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {p2, v0}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    aput-object p2, p1, v3

    .line 185
    .line 186
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 187
    .line 188
    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-static {}, Landroid/text/format/a;->v()Landroid/icu/util/TimeUnit;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {p2, v0}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    aput-object p2, p1, v4

    .line 202
    .line 203
    invoke-static {p0, p1}, Landroid/text/format/a;->n(Landroid/icu/text/MeasureFormat;[Landroid/icu/util/Measure;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :cond_6
    if-lt v2, p2, :cond_7

    .line 209
    .line 210
    add-int/lit8 p1, p1, 0x1e

    .line 211
    .line 212
    div-int/lit8 p1, p1, 0x3c

    .line 213
    .line 214
    add-int/2addr p1, v2

    .line 215
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {}, Landroid/text/format/a;->v()Landroid/icu/util/TimeUnit;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-static {p1, p2}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_7
    if-lez v2, :cond_8

    .line 236
    .line 237
    new-array p2, p2, [Landroid/icu/util/Measure;

    .line 238
    .line 239
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 240
    .line 241
    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {}, Landroid/text/format/a;->v()Landroid/icu/util/TimeUnit;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    aput-object v0, p2, v3

    .line 255
    .line 256
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 257
    .line 258
    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-static {}, Landroid/text/format/a;->A()Landroid/icu/util/TimeUnit;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {p1, v0}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    aput-object p1, p2, v4

    .line 272
    .line 273
    invoke-static {p0, p2}, Landroid/text/format/a;->n(Landroid/icu/text/MeasureFormat;[Landroid/icu/util/Measure;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :cond_8
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {}, Landroid/text/format/a;->A()Landroid/icu/util/TimeUnit;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-static {p1, p2}, Landroid/text/format/a;->i(Ljava/lang/Integer;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    return-object p0
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/32 v0, 0xea60

    .line 2
    .line 3
    .line 4
    add-long/2addr p1, v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    sub-long/2addr p1, v2

    .line 8
    div-long/2addr p1, v0

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v4, p1, v4

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    mul-long/2addr p1, v0

    .line 21
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/text/format/Formatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {}, Landroid/text/format/a;->a()Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Landroid/text/format/a;->b(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {}, Landroid/text/format/a;->p()V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Landroid/text/format/a;->v()Landroid/icu/util/TimeUnit;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Landroid/text/format/a;->j(Ljava/lang/Long;Landroid/icu/util/TimeUnit;)Landroid/icu/util/Measure;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/net/lowpan/b;->h(Landroid/icu/text/MeasureFormat;Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/format/a;->d(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/text/format/a;->r(Landroid/icu/text/NumberFormat;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/text/format/a;->y(Landroid/icu/text/NumberFormat;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroid/text/format/a;->q(Landroid/icu/text/NumberFormat;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroid/text/format/a;->s(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Landroid/text/format/a;->x(Landroid/icu/text/NumberFormat;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method private static getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/format/a;->k()Landroid/icu/util/MeasureUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const p1, 0x10400e8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const p1, 0x10404f0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method
