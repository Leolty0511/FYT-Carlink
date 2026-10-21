.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x27

    if-ge v0, p2, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    move p1, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 12

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_d

    .line 8
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_0

    .line 9
    invoke-static {v0, v4, v2}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v2

    .line 10
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    goto/16 :goto_4

    :cond_0
    const/4 v6, 0x1

    move v7, v6

    :goto_1
    add-int v8, v4, v7

    if-ge v8, v2, :cond_1

    .line 11
    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x41

    if-eq v5, v9, :cond_b

    const/16 v9, 0x45

    if-eq v5, v9, :cond_a

    const/16 v9, 0x48

    if-eq v5, v9, :cond_9

    const/16 v9, 0x61

    if-eq v5, v9, :cond_b

    const/16 v9, 0xc

    const/16 v10, 0x68

    if-eq v5, v10, :cond_7

    const/16 v11, 0x6b

    if-eq v5, v11, :cond_9

    const/16 v11, 0x6d

    if-eq v5, v11, :cond_6

    const/16 v11, 0x73

    if-eq v5, v11, :cond_5

    const/16 v11, 0x63

    if-eq v5, v11, :cond_a

    const/16 v11, 0x64

    if-eq v5, v11, :cond_4

    const/16 v11, 0x79

    if-eq v5, v11, :cond_3

    const/16 v6, 0x7a

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    goto/16 :goto_3

    :pswitch_0
    const/4 v6, 0x2

    .line 12
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v1, v6, v7, v5}, Landroid/text/format/DateFormat;->getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 13
    :cond_2
    invoke-static {p1, v7}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->getYearString(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x5

    .line 15
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    const/16 v5, 0xd

    .line 16
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    :pswitch_1
    const/16 v6, 0xa

    .line 18
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v10, :cond_8

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move v9, v6

    .line 19
    :goto_2
    invoke-static {v9, v7}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_9
    const/16 v5, 0xb

    .line 20
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 21
    invoke-static {v5, v7}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_a
    const/4 v6, 0x7

    .line 22
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v1, v6, v7, v5}, Landroid/text/format/DateFormat;->getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 23
    :cond_b
    iget-object v5, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int/2addr v6, v3

    aget-object v5, v5, v6

    :goto_3
    if-eqz v5, :cond_c

    .line 24
    invoke-virtual {v0, v4, v8, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v2

    move v2, v7

    :goto_4
    add-int/2addr v4, v2

    move v2, v5

    goto/16 :goto_0

    .line 27
    :cond_d
    instance-of p0, p0, Landroid/text/Spanned;

    if-eqz p0, :cond_e

    .line 28
    new-instance p0, Landroid/text/SpannedString;

    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0

    .line 29
    :cond_e
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 1

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 2

    .line 1
    div-int/lit16 p0, p0, 0x3e8

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const-string v1, "-"

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p0, p0

    goto :goto_0

    :cond_0
    const-string v1, "+"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 6
    rem-int/lit16 p0, p0, 0xe10

    div-int/lit8 p0, p0, 0x3c

    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p0, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p1, :cond_5

    const/16 v0, 0x4d

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x64

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x79

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    const v2, 0x104003e

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "MM"

    const/4 v3, 0x2

    const-string/jumbo v4, "yyyy"

    const/4 v5, 0x1

    const-string v6, "dd"

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ge p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    if-ge v0, v1, :cond_0

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v4, p1, v7

    aput-object v2, p1, v5

    aput-object v6, p1, v3

    .line 5
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v4, p1, v7

    aput-object v6, p1, v5

    aput-object v2, p1, v3

    .line 6
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_3

    if-ge v1, p1, :cond_2

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v2, p1, v7

    aput-object v6, p1, v5

    aput-object v4, p1, v3

    .line 7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v2, p1, v7

    aput-object v4, p1, v5

    aput-object v6, p1, v3

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-ge v0, p1, :cond_4

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v6, p1, v7

    aput-object v2, p1, v5

    aput-object v4, p1, v3

    .line 9
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v6, p1, v7

    aput-object v4, p1, v5

    aput-object v2, p1, v3

    .line 10
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 11
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object p0

    .line 12
    iget-object p0, p0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    return-object p0
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x63

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 1
    iget-object p0, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1
    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_3

    .line 2
    iget-object p0, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_2
    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    .line 3
    iget-object p0, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_3

    :cond_5
    iget-object p0, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_3
    return-object p0
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 0

    const/4 p0, 0x1

    .line 1
    invoke-static {p0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 0

    const/4 p0, 0x2

    .line 1
    invoke-static {p0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x4c

    if-ne p3, v1, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_1

    .line 1
    iget-object p0, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1
    return-object p0

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_3

    .line 2
    iget-object p0, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_2
    return-object p0

    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_5

    .line 3
    iget-object p0, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_3

    :cond_5
    iget-object p0, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_3
    return-object p0

    :cond_6
    add-int/2addr p1, v0

    .line 4
    invoke-static {p1, p2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, p1

    .line 4
    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getYearString(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    rem-int/lit8 p0, p0, 0x64

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 3
    invoke-static {p0, v2, v1}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v5

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    return v5

    :cond_2
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 1

    const/16 v0, 0x73

    .line 1
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result p0

    return p0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3
    sget-object v1, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-boolean p0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v1

    return p0

    .line 6
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 7
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 8
    instance-of v2, v0, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_2

    .line 9
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 10
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, "24"

    goto :goto_0

    :cond_1
    const-string v0, "12"

    goto :goto_0

    :cond_2
    const-string v0, "12"

    .line 12
    :goto_0
    monitor-enter v1

    .line 13
    :try_start_1
    sput-object p0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    const-string p0, "24"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 15
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 16
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    const-string p0, "24"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/16 v1, 0x27

    if-ge p1, p2, :cond_0

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_2

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
