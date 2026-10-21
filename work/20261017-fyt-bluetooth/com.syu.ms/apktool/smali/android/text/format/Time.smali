.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static sAm:Ljava/lang/String; = null

.field private static sDateCommand:Ljava/lang/String; = "%a %b %e %H:%M:%S %Z %Y"

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLongMonths:[Ljava/lang/String;

.field private static sLongStandaloneMonths:[Ljava/lang/String;

.field private static sLongWeekdays:[Ljava/lang/String;

.field private static sPm:Ljava/lang/String;

.field private static sShortMonths:[Ljava/lang/String;

.field private static sShortWeekdays:[Ljava/lang/String;

.field private static final sThursdayOffset:[I

.field private static sTimeOnlyFormat:Ljava/lang/String;

.field private static sZeroDigit:C


# instance fields
.field public allDay:Z

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "timezone is null!"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/16 p1, 0x7b2

    .line 4
    iput p1, p0, Landroid/text/format/Time;->year:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 1

    const-string v0, "a == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "b == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0, p1}, Landroid/text/format/Time;->nativeCompare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p0

    return p0
.end method

.method private native format1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    const-wide/32 p2, 0x5265c00

    .line 1
    div-long/2addr p0, p2

    long-to-int p0, p0

    const p1, 0x253d8c    # 3.419992E-39f

    add-int/2addr p0, p1

    return p0
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x7

    const v0, 0x253d89

    add-int/2addr p0, v0

    return p0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 1

    rsub-int/lit8 p1, p1, 0x4

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x7

    :cond_0
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, p1

    sub-int/2addr p0, v0

    .line 1
    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    const v1, 0x253d8c    # 3.419992E-39f

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    sget-char v1, Landroid/text/format/Time;->sZeroDigit:C

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_0

    add-int/2addr v5, v1

    int-to-char v5, v5

    .line 5
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static native nativeCompare(Landroid/text/format/Time;Landroid/text/format/Time;)I
.end method

.method private native nativeParse(Ljava/lang/String;)Z
.end method

.method private native nativeParse3339(Ljava/lang/String;)Z
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "timezone is null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/text/format/Time;->allDay:Z

    .line 4
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 5
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 6
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 7
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 8
    iput p1, p0, Landroid/text/format/Time;->month:I

    .line 9
    iput p1, p0, Landroid/text/format/Time;->year:I

    .line 10
    iput p1, p0, Landroid/text/format/Time;->weekDay:I

    .line 11
    iput p1, p0, Landroid/text/format/Time;->yearDay:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Landroid/text/format/Time;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :cond_0
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 5
    iget-object v3, v2, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Landroid/text/format/Time;->sAm:Ljava/lang/String;

    .line 6
    iget-object v3, v2, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Landroid/text/format/Time;->sPm:Ljava/lang/String;

    .line 7
    iget-char v3, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    sput-char v3, Landroid/text/format/Time;->sZeroDigit:C

    .line 8
    iget-object v3, v2, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    sput-object v3, Landroid/text/format/Time;->sShortMonths:[Ljava/lang/String;

    .line 9
    iget-object v3, v2, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    sput-object v3, Landroid/text/format/Time;->sLongMonths:[Ljava/lang/String;

    .line 10
    iget-object v3, v2, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    sput-object v3, Landroid/text/format/Time;->sLongStandaloneMonths:[Ljava/lang/String;

    .line 11
    iget-object v3, v2, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    sput-object v3, Landroid/text/format/Time;->sShortWeekdays:[Ljava/lang/String;

    .line 12
    iget-object v2, v2, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    sput-object v2, Landroid/text/format/Time;->sLongWeekdays:[Ljava/lang/String;

    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040040

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sTimeOnlyFormat:Ljava/lang/String;

    const v3, 0x104003f

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/Time;->sDateOnlyFormat:Ljava/lang/String;

    const v3, 0x1040041

    .line 16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/Time;->sDateTimeFormat:Ljava/lang/String;

    .line 17
    sput-object v1, Landroid/text/format/Time;->sLocale:Ljava/util/Locale;

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Landroid/text/format/Time;->format1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-char v1, Landroid/text/format/Time;->sZeroDigit:C

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    .line 20
    invoke-direct {p0, p1}, Landroid/text/format/Time;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public native format2445()Ljava/lang/String;
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    const-string p1, "%Y-%m-%d"

    .line 1
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v0, "UTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "%Y-%m-%dT%H:%M:%S.000Z"

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "%Y-%m-%dT%H:%M:%S.000"

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-string v2, "-"

    goto :goto_0

    :cond_2
    const-string v2, "+"

    .line 6
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 7
    rem-int/lit16 v1, v0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 8
    div-int/lit16 v0, v0, 0xe10

    .line 9
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v2, v4, p1

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "%s%s%02d:%02d"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActualMaximum(I)I
    .locals 3

    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "WEEK_NUM not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 4
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_1

    :cond_0
    const/16 p1, 0x16d

    goto :goto_0

    :cond_1
    const/16 p1, 0x16c

    :goto_0
    return p1

    :pswitch_2
    const/4 p1, 0x6

    return p1

    :pswitch_3
    const/16 p1, 0x7f5

    return p1

    :pswitch_4
    const/16 p1, 0xb

    return p1

    .line 5
    :pswitch_5
    sget-object p1, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v0, p0, Landroid/text/format/Time;->month:I

    aget p1, p1, v0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_2

    return p1

    .line 6
    :cond_2
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 7
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_4

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_3

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_4

    :cond_3
    const/16 v0, 0x1d

    :cond_4
    return v0

    :pswitch_6
    const/16 p1, 0x17

    return p1

    :pswitch_7
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWeekNumber()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v2, v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/16 v3, 0x16c

    if-gt v0, v3, :cond_0

    .line 2
    div-int/lit8 v0, v0, 0x7

    :goto_0
    add-int/2addr v0, v2

    return v0

    .line 3
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 4
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v4

    add-int/2addr v3, v1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 5
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 6
    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method public native normalize(Z)J
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "time string is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 3
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "time string is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Landroid/text/format/Time;->nativeParse3339(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 3
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 26
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 27
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 28
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 29
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 30
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 31
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 32
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 34
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(IIIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 14
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 15
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 16
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 17
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 18
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 19
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 20
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 21
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 23
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public native set(J)V
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 3
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 4
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 5
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 6
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 7
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 8
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 9
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 10
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 11
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 12
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public setJulianDay(I)J
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 5
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 6
    iput p1, p0, Landroid/text/format/Time;->second:I

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public native setToNow()V
.end method

.method public native switchTimezone(Ljava/lang/String;)V
.end method

.method public native toMillis(Z)J
.end method

.method public native toString()Ljava/lang/String;
.end method
