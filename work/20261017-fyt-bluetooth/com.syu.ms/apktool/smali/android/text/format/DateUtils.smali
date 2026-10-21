.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 2
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 3
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 6

    and-int/lit16 v0, p6, 0xc1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    const/16 p0, 0x40

    :goto_0
    or-int/2addr p6, p0

    :cond_1
    move v4, p6

    move-wide v0, p2

    move-wide v2, p4

    move-object v5, p7

    .line 5
    invoke-static/range {v0 .. v5}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    cmp-long v3, p0, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    const-wide/32 v6, 0x1b7740

    add-long/2addr p0, v6

    .line 2
    div-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0x1130014

    new-array v1, v5, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v1, 0xea60

    cmp-long v3, p0, v1

    if-ltz v3, :cond_1

    const-wide/16 v6, 0x7530

    add-long/2addr p0, v6

    .line 4
    div-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0x1130013

    new-array v1, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v1, 0x1f4

    add-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    .line 6
    div-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0x1130012

    new-array v1, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_0

    .line 2
    div-long v5, p1, v0

    mul-long/2addr v0, v5

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 3
    div-long v7, p1, v0

    mul-long/2addr v0, v7

    sub-long/2addr p1, v0

    goto :goto_1

    :cond_1
    move-wide v7, v3

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    :goto_2
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 7
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    cmp-long p0, v5, v3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez p0, :cond_3

    .line 8
    sget-object p0, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {v1, p0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 5
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_0

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p3, p2, :cond_0

    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, p1, :cond_0

    .line 7
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 p0, p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    .line 2
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .line 8
    :goto_0
    aget-object p0, p1, p0

    return-object p0
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    .line 2
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .line 8
    :goto_0
    aget-object p0, p1, p0

    return-object p0
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 16

    move-wide/from16 v6, p1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v6

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v0, 0x240c8400

    cmp-long v2, p5, v0

    const-wide/32 v3, 0x5265c00

    if-lez v2, :cond_0

    move-wide v13, v0

    goto :goto_0

    :cond_0
    cmp-long v0, p5, v3

    if-gez v0, :cond_1

    move-wide v13, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v13, p5

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p1

    .line 4
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v15

    cmp-long v0, v11, v13

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-gez v0, :cond_2

    move-wide/from16 v0, p1

    move-wide v2, v9

    move-wide/from16 v4, p3

    move/from16 v6, p7

    .line 5
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x10403e4

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v0, v2, v13

    aput-object v15, v2, v11

    .line 6
    invoke-virtual {v8, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    .line 7
    invoke-static {v0, v6, v7, v13}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x1040042

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v0, v2, v13

    aput-object v15, v2, v11

    .line 8
    invoke-virtual {v8, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 5
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 6
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 7
    invoke-virtual {v2, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 8
    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int/2addr v2, v1

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    cmp-long p1, p3, p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lez p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-ne v1, p3, :cond_3

    if-eqz p1, :cond_2

    .line 10
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    iget-object p0, p0, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_2
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    iget-object p0, p0, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    .line 12
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    iget-object p0, p0, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    return-object p0

    :cond_4
    if-eqz p1, :cond_5

    const p1, 0x1130005

    goto :goto_1

    :cond_5
    const p1, 0x1130009

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7

    const v6, 0x10014

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 16

    move-wide/from16 v3, p0

    move-wide/from16 v0, p2

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v5, 0xc0000

    and-int v5, p6, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    cmp-long v8, v0, v3

    if-ltz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    sub-long v9, v0, v3

    .line 4
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    cmp-long v13, v9, v11

    if-gez v13, :cond_5

    cmp-long v13, p4, v11

    if-gez v13, :cond_5

    const-wide/16 v0, 0x3e8

    .line 5
    div-long/2addr v9, v0

    if-eqz v8, :cond_3

    if-eqz v5, :cond_2

    const v0, 0x113000a

    goto :goto_2

    :cond_2
    const v0, 0x1130001

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    const v0, 0x113000e

    goto :goto_2

    :cond_4
    const v0, 0x1130006

    goto :goto_2

    :cond_5
    const-wide/32 v13, 0x36ee80

    cmp-long v15, v9, v13

    if-gez v15, :cond_9

    cmp-long v15, p4, v13

    if-gez v15, :cond_9

    .line 6
    div-long/2addr v9, v11

    if-eqz v8, :cond_7

    if-eqz v5, :cond_6

    const v0, 0x113000b

    goto :goto_2

    :cond_6
    const v0, 0x1130002

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    const v0, 0x113000f

    goto :goto_2

    :cond_8
    const v0, 0x1130007

    goto :goto_2

    :cond_9
    const-wide/32 v11, 0x5265c00

    cmp-long v15, v9, v11

    if-gez v15, :cond_d

    cmp-long v11, p4, v11

    if-gez v11, :cond_d

    .line 7
    div-long/2addr v9, v13

    if-eqz v8, :cond_b

    if-eqz v5, :cond_a

    const v0, 0x113000c

    goto :goto_2

    :cond_a
    const v0, 0x1130003

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    const v0, 0x1130010

    goto :goto_2

    :cond_c
    const v0, 0x1130008

    :goto_2
    long-to-int v1, v9

    .line 8
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-wide/32 v5, 0x240c8400

    cmp-long v7, v9, v5

    if-gez v7, :cond_e

    cmp-long v5, p4, v5

    if-gez v5, :cond_e

    .line 10
    invoke-static {v2, v3, v4, v0, v1}, Landroid/text/format/DateUtils;->getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p0

    move/from16 v5, p6

    .line 11
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 11

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 14
    const-class v4, Landroid/text/format/DateUtils;

    monitor-enter v4

    .line 15
    :try_start_0
    sget-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v5, :cond_0

    .line 16
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    sput-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 17
    :cond_0
    sget-object v5, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v5, :cond_1

    .line 18
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    sput-object v5, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 19
    :cond_1
    sget-object v5, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 20
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    const v1, 0x10403d5

    if-gez v0, :cond_2

    .line 21
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v2, :cond_2

    const/4 v10, 0x1

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p1

    .line 22
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    const v1, 0x10403d6

    goto :goto_0

    .line 23
    :cond_2
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-eq v0, v2, :cond_3

    const v10, 0x20014

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p1

    .line 24
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const v10, 0x10010

    move-object v5, p0

    move-wide v6, p1

    move-wide v8, p1

    .line 25
    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_4

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 27
    invoke-virtual {p0, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_4
    monitor-exit v4

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static initFormatStrings()V
    .locals 2

    .line 1
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :cond_0
    sput-object v1, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    const v1, 0x10403e9

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const v1, 0x10403ea

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3
    iget p0, v0, Landroid/text/format/Time;->year:I

    .line 4
    iget p1, v0, Landroid/text/format/Time;->month:I

    .line 5
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 7
    iget v2, v0, Landroid/text/format/Time;->year:I

    if-ne p0, v2, :cond_0

    iget p0, v0, Landroid/text/format/Time;->month:I

    if-ne p1, p0, :cond_0

    iget p0, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
