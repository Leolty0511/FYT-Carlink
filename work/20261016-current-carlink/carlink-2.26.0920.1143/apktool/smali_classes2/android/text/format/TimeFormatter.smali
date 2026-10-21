.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/text/format/TimeFormatter;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    :cond_0
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 28
    .line 29
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x1040623

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 41
    .line 42
    const v2, 0x10403ab

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 50
    .line 51
    const v2, 0x104017f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sput-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 59
    .line 60
    :cond_1
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v1, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v1, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 71
    .line 72
    sget-object v1, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 73
    .line 74
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw v1
.end method

.method private static brokenIsLower(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static brokenIsUpper(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static brokenToLower(C)C
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method private static brokenToUpper(C)C
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    int-to-char p0, p0

    :cond_0
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->get(I)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x25

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_1
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1, v1}, Ljava/nio/CharBuffer;->get(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v0, v2

    .line 50
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 p3, 0x30

    if-eq p0, p3, :cond_1

    const/16 p3, 0x5f

    if-eq p0, p3, :cond_0

    return-object p1

    :cond_0
    return-object p2

    :cond_1
    return-object p4

    :cond_2
    return-object p3
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_24

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    const/16 v4, 0x23

    if-eq v2, v4, :cond_23

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_22

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_23

    const/16 v5, 0x30

    if-eq v2, v5, :cond_23

    const/16 v5, 0x4d

    const-string v6, "%2d"

    const-string v7, "%d"

    const-string v8, "%02d"

    if-eq v2, v5, :cond_21

    const/16 v5, 0x70

    const/16 v9, 0xc

    if-eq v2, v5, :cond_1f

    const/16 v5, 0x4f

    if-eq v2, v5, :cond_0

    const/16 v5, 0x50

    if-eq v2, v5, :cond_1d

    const/16 v5, 0x5e

    if-eq v2, v5, :cond_23

    const/16 v5, 0x5f

    if-eq v2, v5, :cond_23

    const/16 v5, 0x67

    const/4 v10, 0x7

    if-eq v2, v5, :cond_15

    const/16 v5, 0x68

    const-string v11, "?"

    if-eq v2, v5, :cond_12

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    return v3

    .line 4
    :pswitch_1
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/2addr p1, v9

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/lit8 v9, p1, 0xc

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 6
    :pswitch_2
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 8
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_3
    const-string p1, "%Y-%m-%d"

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    :pswitch_4
    const-string p1, "%m/%d/%y"

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 11
    :pswitch_5
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v3, v0, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    :pswitch_6
    if-ne v1, v4, :cond_4

    .line 12
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_3

    .line 13
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object v11, p1, p2

    .line 15
    :cond_3
    :goto_1
    invoke-direct {p0, v11, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_6

    .line 17
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v9, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object v11, p1, p2

    .line 19
    :cond_6
    :goto_2
    invoke-direct {p0, v11, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    :goto_3
    return v0

    .line 20
    :pswitch_7
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-ltz p1, :cond_8

    .line 21
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-lt p1, v10, :cond_7

    goto :goto_4

    :cond_7
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    add-int/2addr p2, v3

    aget-object v11, p1, p2

    .line 23
    :cond_8
    :goto_4
    invoke-direct {p0, v11, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 24
    :pswitch_8
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-gez p1, :cond_9

    return v0

    .line 25
    :cond_9
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v3, v0

    .line 26
    :goto_5
    invoke-virtual {p3, v3, v0}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 27
    :pswitch_9
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v3, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    .line 28
    :pswitch_a
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 29
    :pswitch_b
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p1

    add-int/2addr p1, v10

    .line 30
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    sub-int/2addr p2, v3

    goto :goto_6

    :cond_b
    const/4 p2, 0x6

    :goto_6
    sub-int/2addr p1, p2

    div-int/2addr p1, v10

    .line 31
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p2, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 32
    :pswitch_c
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 34
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_d
    const-string p1, "%H:%M:%S"

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 36
    :pswitch_e
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 38
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_f
    const-string p1, "%H:%M"

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 40
    :pswitch_10
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v6, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 42
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 43
    :pswitch_11
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 45
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 46
    :pswitch_12
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 47
    :pswitch_13
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-ltz p1, :cond_d

    .line 48
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-lt p1, v10, :cond_c

    goto :goto_7

    :cond_c
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    add-int/2addr p2, v3

    aget-object v11, p1, p2

    .line 50
    :cond_d
    :goto_7
    invoke-direct {p0, v11, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 51
    :pswitch_14
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    .line 52
    :pswitch_15
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 53
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 54
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 55
    :pswitch_16
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/2addr p1, v9

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    rem-int/lit8 v9, p1, 0xc

    .line 56
    :cond_e
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v6, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 57
    :pswitch_17
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v6, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 59
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 60
    :pswitch_18
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p1

    add-int/2addr p1, v3

    .line 61
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p3, "%3d"

    const-string v2, "%03d"

    invoke-static {v1, v2, p3, v7, v2}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 63
    invoke-virtual {p2, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 64
    :pswitch_19
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result p1

    if-gez p1, :cond_f

    return v0

    .line 65
    :cond_f
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result p1

    if-gez p1, :cond_10

    neg-int p1, p1

    goto :goto_8

    :cond_10
    const/16 v4, 0x2b

    .line 66
    :goto_8
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    div-int/lit8 p1, p1, 0x3c

    .line 68
    div-int/lit8 p2, p1, 0x3c

    mul-int/lit8 p2, p2, 0x64

    rem-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    .line 69
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string p3, "%4d"

    const-string v2, "%04d"

    invoke-static {v1, v2, p3, v7, v2}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p2, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 70
    :pswitch_1a
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    invoke-direct {p0, p1, v0, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    return v0

    .line 71
    :pswitch_1b
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 72
    :pswitch_1c
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-virtual {p1, v7, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :pswitch_1d
    const-string p1, "%e-%b-%Y"

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 74
    :pswitch_1e
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result p1

    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v10

    .line 75
    :goto_9
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1, v7, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    .line 76
    :pswitch_1f
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    .line 77
    :pswitch_20
    invoke-virtual {p2, p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result p1

    .line 78
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_21
    const-string p1, "%I:%M:%S %p"

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    .line 80
    :cond_12
    :pswitch_22
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-ltz p1, :cond_14

    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p1

    if-lt p1, v9, :cond_13

    goto :goto_a

    :cond_13
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result p2

    aget-object v11, p1, p2

    .line 82
    :cond_14
    :goto_a
    invoke-direct {p0, v11, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 83
    :cond_15
    :pswitch_23
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result p3

    .line 85
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v4

    .line 86
    :goto_b
    invoke-static {p1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result p2

    if-eqz p2, :cond_16

    const/16 p2, 0x16e

    goto :goto_c

    :cond_16
    const/16 p2, 0x16d

    :goto_c
    add-int/lit8 v5, p3, 0xb

    sub-int/2addr v5, v4

    .line 87
    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, -0x3

    .line 88
    rem-int/lit8 v9, p2, 0x7

    sub-int v9, v5, v9

    const/4 v11, -0x3

    if-ge v9, v11, :cond_17

    add-int/lit8 v9, v9, 0x7

    :cond_17
    add-int/2addr v9, p2

    if-lt p3, v9, :cond_18

    add-int/lit8 p1, p1, 0x1

    move p2, v3

    goto :goto_d

    :cond_18
    if-lt p3, v5, :cond_1b

    .line 89
    invoke-static {p3, v5, v10, v3}, Landroid/app/m;->b(IIII)I

    move-result p2

    :goto_d
    const/16 p3, 0x56

    if-ne v2, p3, :cond_19

    .line 90
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_e

    :cond_19
    const/16 p2, 0x67

    if-ne v2, p2, :cond_1a

    .line 91
    invoke-direct {p0, p1, v0, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_e

    .line 92
    :cond_1a
    invoke-direct {p0, p1, v3, v3, v1}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    :goto_e
    return v0

    :cond_1b
    add-int/lit8 p1, p1, -0x1

    .line 93
    invoke-static {p1}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/16 p2, 0x16e

    goto :goto_f

    :cond_1c
    const/16 p2, 0x16d

    :goto_f
    add-int/2addr p3, p2

    goto :goto_b

    .line 94
    :cond_1d
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    if-lt p1, v9, :cond_1e

    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v3

    goto :goto_10

    :cond_1e
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_10
    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 95
    :cond_1f
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result p1

    if-lt p1, v9, :cond_20

    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v3

    goto :goto_11

    :cond_20
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-object p1, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_11
    invoke-direct {p0, p1, v1}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    return v0

    .line 96
    :cond_21
    iget-object p1, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-static {v1, v8, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 97
    invoke-virtual {p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    .line 98
    invoke-virtual {p1, p3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return v0

    :cond_22
    const-string p1, "%a %b %e %H:%M:%S %Z %Y"

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    return v0

    :cond_23
    move v1, v2

    goto/16 :goto_0

    :cond_24
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_23
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_23
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_13
        :pswitch_22
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6a
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 6
    .line 7
    iget-char v1, v1, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 8
    .line 9
    const/16 v2, 0x30

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-lt v5, v2, :cond_0

    .line 25
    .line 26
    const/16 v6, 0x39

    .line 27
    .line 28
    if-gt v5, v6, :cond_0

    .line 29
    .line 30
    add-int/2addr v5, v1

    .line 31
    int-to-char v5, v5

    .line 32
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p2, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x23

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x5e

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-ge v1, p2, :cond_5

    .line 24
    .line 25
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-ge v1, p2, :cond_5

    .line 46
    .line 47
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-static {p2}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ge v1, p2, :cond_5

    .line 85
    .line 86
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_4
    return-void
.end method

.method private outputYear(IZZI)V
    .locals 8

    .line 1
    rem-int/lit8 v0, p1, 0x64

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x64

    .line 4
    .line 5
    div-int/lit8 v1, v0, 0x64

    .line 6
    .line 7
    add-int/2addr v1, p1

    .line 8
    rem-int/lit8 v0, v0, 0x64

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x64

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-gez v1, :cond_1

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x64

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    const-string v2, "%d"

    .line 29
    .line 30
    const-string v3, "%2d"

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    const-string v5, "%02d"

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "-0"

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 50
    .line 51
    invoke-static {p4, v5, v3, v2, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-array v7, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    aput-object v1, v7, p1

    .line 62
    .line 63
    invoke-virtual {p2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 67
    .line 68
    if-gez v0, :cond_4

    .line 69
    .line 70
    neg-int v0, v0

    .line 71
    :cond_4
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 72
    .line 73
    invoke-static {p4, v5, v3, v2, v5}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    new-array p4, v4, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aput-object v0, p4, p1

    .line 84
    .line 85
    invoke-virtual {p2, p3, p4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    new-instance v2, Ljava/util/Formatter;

    .line 10
    .line 11
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 26
    .line 27
    iget-char p2, p2, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 28
    .line 29
    const/16 p3, 0x30

    .line 30
    .line 31
    if-eq p2, p3, :cond_0

    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 40
    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iput-object v0, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 46
    .line 47
    throw p1
.end method
