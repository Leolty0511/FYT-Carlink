.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

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

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    .line 17
    .line 18
    return-void

    .line 19
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

    .line 20
    .line 21
    .line 22
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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "timezoneId is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/util/TimeFormatException;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v1, p1

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    aput-object p2, v1, p1

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    aput-object p2, v1, p1

    .line 40
    .line 41
    const-string p1, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    .line 42
    .line 43
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 25
    .line 26
    const-string p1, "b == null"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 33
    .line 34
    const-string p1, "a == null"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(C)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    mul-int/2addr p0, p2

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance p0, Landroid/util/TimeFormatException;

    .line 18
    .line 19
    const-string p2, "Parse error at pos="

    .line 20
    .line 21
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

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

    add-long/2addr p2, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr p2, p0

    long-to-int p0, p2

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

    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v0, 0x7b2

    .line 4
    .line 5
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 12
    .line 13
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 19
    .line 20
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const v1, 0x253d8c    # 3.419992E-39f

    .line 13
    .line 14
    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-lt v0, v1, :cond_a

    .line 8
    .line 9
    const/16 v2, 0x3e8

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p1, v3, v2}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v4, 0x64

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-static {p1, v5, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/2addr v2, v4

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-static {p1, v4, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    add-int/2addr v2, v6

    .line 30
    const/4 v6, 0x3

    .line 31
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    add-int/2addr v2, v6

    .line 36
    iput v2, p0, Landroid/text/format/Time;->year:I

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    const/16 v6, 0x2d

    .line 40
    .line 41
    invoke-direct {p0, p1, v2, v6}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-static {p1, v2, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v8, 0x6

    .line 50
    invoke-static {p1, v8, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    add-int/2addr v7, v8

    .line 55
    const/4 v8, -0x1

    .line 56
    add-int/2addr v7, v8

    .line 57
    iput v7, p0, Landroid/text/format/Time;->month:I

    .line 58
    .line 59
    const/4 v7, 0x7

    .line 60
    invoke-direct {p0, p1, v7, v6}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 61
    .line 62
    .line 63
    const/16 v7, 0x8

    .line 64
    .line 65
    invoke-static {p1, v7, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const/16 v9, 0x9

    .line 70
    .line 71
    invoke-static {p1, v9, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    add-int/2addr v7, v9

    .line 76
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 77
    .line 78
    const/16 v7, 0x13

    .line 79
    .line 80
    if-lt v0, v7, :cond_8

    .line 81
    .line 82
    const/16 v9, 0x54

    .line 83
    .line 84
    invoke-direct {p0, p1, v1, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 85
    .line 86
    .line 87
    iput-boolean v3, p0, Landroid/text/format/Time;->allDay:Z

    .line 88
    .line 89
    const/16 v9, 0xb

    .line 90
    .line 91
    invoke-static {p1, v9, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    const/16 v10, 0xc

    .line 96
    .line 97
    invoke-static {p1, v10, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    add-int/2addr v9, v10

    .line 102
    const/16 v10, 0xd

    .line 103
    .line 104
    const/16 v11, 0x3a

    .line 105
    .line 106
    invoke-direct {p0, p1, v10, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 107
    .line 108
    .line 109
    const/16 v10, 0xe

    .line 110
    .line 111
    invoke-static {p1, v10, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    const/16 v12, 0xf

    .line 116
    .line 117
    invoke-static {p1, v12, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    add-int/2addr v10, v12

    .line 122
    const/16 v12, 0x10

    .line 123
    .line 124
    invoke-direct {p0, p1, v12, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 125
    .line 126
    .line 127
    const/16 v11, 0x11

    .line 128
    .line 129
    invoke-static {p1, v11, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    const/16 v12, 0x12

    .line 134
    .line 135
    invoke-static {p1, v12, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    add-int/2addr v11, v12

    .line 140
    iput v11, p0, Landroid/text/format/Time;->second:I

    .line 141
    .line 142
    if-ge v7, v0, :cond_1

    .line 143
    .line 144
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    const/16 v12, 0x2e

    .line 149
    .line 150
    if-ne v11, v12, :cond_1

    .line 151
    .line 152
    :cond_0
    add-int/2addr v7, v5

    .line 153
    if-ge v7, v0, :cond_1

    .line 154
    .line 155
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v11, :cond_0

    .line 164
    .line 165
    :cond_1
    if-le v0, v7, :cond_6

    .line 166
    .line 167
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    const/16 v12, 0x2b

    .line 172
    .line 173
    if-eq v11, v12, :cond_4

    .line 174
    .line 175
    if-eq v11, v6, :cond_3

    .line 176
    .line 177
    const/16 v6, 0x5a

    .line 178
    .line 179
    if-ne v11, v6, :cond_2

    .line 180
    .line 181
    move v4, v3

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    new-instance p1, Landroid/util/TimeFormatException;

    .line 184
    .line 185
    new-array v0, v4, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    aput-object v1, v0, v3

    .line 192
    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    aput-object v1, v0, v5

    .line 198
    .line 199
    const-string v1, "Unexpected character 0x%02d at position %d.  Expected + or -"

    .line 200
    .line 201
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_3
    move v4, v5

    .line 210
    goto :goto_0

    .line 211
    :cond_4
    move v4, v8

    .line 212
    :goto_0
    if-eqz v4, :cond_7

    .line 213
    .line 214
    add-int/lit8 v6, v7, 0x6

    .line 215
    .line 216
    if-lt v0, v6, :cond_5

    .line 217
    .line 218
    add-int/lit8 v0, v7, 0x1

    .line 219
    .line 220
    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    add-int/lit8 v6, v7, 0x2

    .line 225
    .line 226
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    add-int/2addr v0, v6

    .line 231
    mul-int/2addr v0, v4

    .line 232
    add-int/2addr v9, v0

    .line 233
    add-int/lit8 v0, v7, 0x4

    .line 234
    .line 235
    invoke-static {p1, v0, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v7, v2

    .line 240
    invoke-static {p1, v7, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    add-int/2addr v0, p1

    .line 245
    mul-int/2addr v0, v4

    .line 246
    add-int/2addr v10, v0

    .line 247
    goto :goto_1

    .line 248
    :cond_5
    new-instance p1, Landroid/util/TimeFormatException;

    .line 249
    .line 250
    new-array v0, v5, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    aput-object v1, v0, v3

    .line 257
    .line 258
    const-string v1, "Unexpected length; should be %d characters"

    .line 259
    .line 260
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    :cond_6
    move v4, v3

    .line 269
    move v5, v4

    .line 270
    :cond_7
    :goto_1
    iput v9, p0, Landroid/text/format/Time;->hour:I

    .line 271
    .line 272
    iput v10, p0, Landroid/text/format/Time;->minute:I

    .line 273
    .line 274
    if-eqz v4, :cond_9

    .line 275
    .line 276
    invoke-virtual {p0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_8
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 281
    .line 282
    iput v3, p0, Landroid/text/format/Time;->hour:I

    .line 283
    .line 284
    iput v3, p0, Landroid/text/format/Time;->minute:I

    .line 285
    .line 286
    iput v3, p0, Landroid/text/format/Time;->second:I

    .line 287
    .line 288
    move v5, v3

    .line 289
    :cond_9
    :goto_2
    iput v3, p0, Landroid/text/format/Time;->weekDay:I

    .line 290
    .line 291
    iput v3, p0, Landroid/text/format/Time;->yearDay:I

    .line 292
    .line 293
    iput v8, p0, Landroid/text/format/Time;->isDst:I

    .line 294
    .line 295
    const-wide/16 v0, 0x0

    .line 296
    .line 297
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 298
    .line 299
    return v5

    .line 300
    :cond_a
    new-instance p1, Landroid/util/TimeFormatException;

    .line 301
    .line 302
    const-string v0, "String too short --- expected at least 10 characters."

    .line 303
    .line 304
    invoke-direct {p1, v0}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p1
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "String is too short: \""

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-lt v0, v2, :cond_3

    .line 10
    .line 11
    const/16 v3, 0x3e8

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v5, 0x64

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    add-int/2addr v3, v5

    .line 26
    const/4 v5, 0x2

    .line 27
    const/16 v7, 0xa

    .line 28
    .line 29
    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v3, v5

    .line 34
    const/4 v5, 0x3

    .line 35
    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    add-int/2addr v3, v5

    .line 40
    iput v3, p0, Landroid/text/format/Time;->year:I

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v5, 0x5

    .line 48
    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/2addr v3, v5

    .line 53
    const/4 v5, -0x1

    .line 54
    add-int/2addr v3, v5

    .line 55
    iput v3, p0, Landroid/text/format/Time;->month:I

    .line 56
    .line 57
    const/4 v3, 0x6

    .line 58
    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v8, 0x7

    .line 63
    invoke-static {p1, v8, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    add-int/2addr v3, v8

    .line 68
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 69
    .line 70
    if-le v0, v2, :cond_1

    .line 71
    .line 72
    const/16 v3, 0xf

    .line 73
    .line 74
    if-lt v0, v3, :cond_0

    .line 75
    .line 76
    const/16 v1, 0x54

    .line 77
    .line 78
    invoke-direct {p0, p1, v2, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 79
    .line 80
    .line 81
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 82
    .line 83
    const/16 v1, 0x9

    .line 84
    .line 85
    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v1, v2

    .line 94
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 95
    .line 96
    const/16 v1, 0xb

    .line 97
    .line 98
    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/16 v2, 0xc

    .line 103
    .line 104
    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    add-int/2addr v1, v2

    .line 109
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 110
    .line 111
    const/16 v1, 0xd

    .line 112
    .line 113
    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/16 v2, 0xe

    .line 118
    .line 119
    invoke-static {p1, v2, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    add-int/2addr v1, v2

    .line 124
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 125
    .line 126
    if-le v0, v3, :cond_2

    .line 127
    .line 128
    const/16 v0, 0x5a

    .line 129
    .line 130
    invoke-direct {p0, p1, v3, v0}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Landroid/util/TimeFormatException;

    .line 135
    .line 136
    const-string v2, "\" If there are more than 8 characters there must be at least 15."

    .line 137
    .line 138
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_1
    iput-boolean v6, p0, Landroid/text/format/Time;->allDay:Z

    .line 147
    .line 148
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 149
    .line 150
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 151
    .line 152
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 153
    .line 154
    :cond_2
    move v6, v4

    .line 155
    :goto_0
    iput v4, p0, Landroid/text/format/Time;->weekDay:I

    .line 156
    .line 157
    iput v4, p0, Landroid/text/format/Time;->yearDay:I

    .line 158
    .line 159
    iput v5, p0, Landroid/text/format/Time;->isDst:I

    .line 160
    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .line 163
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 164
    .line 165
    return v6

    .line 166
    :cond_3
    new-instance v0, Landroid/util/TimeFormatException;

    .line 167
    .line 168
    const-string v2, "\" Expected at least 8 characters."

    .line 169
    .line 170
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {v0, p1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 0

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

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/text/format/Time;->allDay:Z

    .line 7
    .line 8
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 9
    .line 10
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 11
    .line 12
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 13
    .line 14
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 15
    .line 16
    iput p1, p0, Landroid/text/format/Time;->month:I

    .line 17
    .line 18
    iput p1, p0, Landroid/text/format/Time;->year:I

    .line 19
    .line 20
    iput p1, p0, Landroid/text/format/Time;->weekDay:I

    .line 21
    .line 22
    iput p1, p0, Landroid/text/format/Time;->yearDay:I

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 27
    .line 28
    const/4 p1, -0x1

    .line 29
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 33
    .line 34
    const-string/jumbo v0, "timezone is null!"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z

    .line 9
    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "%Y-%m-%d"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "UTC"

    .line 11
    .line 12
    iget-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p1, "%Y-%m-%dT%H:%M:%S.000Z"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const-string p1, "%Y-%m-%dT%H:%M:%S.000"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v2, v0, v2

    .line 38
    .line 39
    if-gez v2, :cond_2

    .line 40
    .line 41
    const-string v2, "-"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string v2, "+"

    .line 45
    .line 46
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    long-to-int v0, v0

    .line 51
    rem-int/lit16 v1, v0, 0xe10

    .line 52
    .line 53
    div-int/lit8 v1, v1, 0x3c

    .line 54
    .line 55
    div-int/lit16 v0, v0, 0xe10

    .line 56
    .line 57
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object p1, v4, v5

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    aput-object v2, v4, p1

    .line 67
    .line 68
    const/4 p1, 0x2

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    aput-object v0, v4, p1

    .line 74
    .line 75
    const/4 p1, 0x3

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    aput-object v0, v4, p1

    .line 81
    .line 82
    const-string p1, "%s%s%02d:%02d"

    .line 83
    .line 84
    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public getActualMaximum(I)I
    .locals 2

    .line 1
    const/16 v0, 0x3b

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    const-string v1, "bad field="

    .line 9
    .line 10
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "WEEK_NUM not implemented"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :pswitch_1
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 27
    .line 28
    rem-int/lit8 v0, p1, 0x4

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    rem-int/lit8 v0, p1, 0x64

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    rem-int/lit16 p1, p1, 0x190

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    :cond_0
    const/16 p1, 0x16d

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 p1, 0x16c

    .line 44
    .line 45
    :goto_0
    return p1

    .line 46
    :pswitch_2
    const/4 p1, 0x6

    .line 47
    return p1

    .line 48
    :pswitch_3
    const/16 p1, 0x7f5

    .line 49
    .line 50
    return p1

    .line 51
    :pswitch_4
    const/16 p1, 0xb

    .line 52
    .line 53
    return p1

    .line 54
    :pswitch_5
    sget-object p1, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 55
    .line 56
    iget v0, p0, Landroid/text/format/Time;->month:I

    .line 57
    .line 58
    aget p1, p1, v0

    .line 59
    .line 60
    const/16 v0, 0x1c

    .line 61
    .line 62
    if-eq p1, v0, :cond_2

    .line 63
    .line 64
    return p1

    .line 65
    :cond_2
    iget p1, p0, Landroid/text/format/Time;->year:I

    .line 66
    .line 67
    rem-int/lit8 v1, p1, 0x4

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    rem-int/lit8 v1, p1, 0x64

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    rem-int/lit16 p1, p1, 0x190

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    :cond_3
    const/16 v0, 0x1d

    .line 80
    .line 81
    :cond_4
    return v0

    .line 82
    :pswitch_6
    const/16 p1, 0x17

    .line 83
    .line 84
    return p1

    .line 85
    :pswitch_7
    return v0

    .line 86
    nop

    .line 87
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

    .line 2
    .line 3
    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    .line 4
    .line 5
    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    .line 6
    .line 7
    aget v2, v1, v2

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    const/16 v3, 0x16c

    .line 14
    .line 15
    if-gt v0, v3, :cond_0

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x7

    .line 18
    .line 19
    :goto_0
    add-int/2addr v0, v2

    .line 20
    return v0

    .line 21
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 24
    .line 25
    .line 26
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 27
    .line 28
    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    .line 29
    .line 30
    aget v1, v1, v4

    .line 31
    .line 32
    add-int/2addr v3, v1

    .line 33
    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 36
    .line 37
    .line 38
    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    .line 39
    .line 40
    div-int/lit8 v0, v0, 0x7

    .line 41
    .line 42
    goto :goto_0
.end method

.method public normalize(Z)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 15
    .line 16
    .line 17
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "UTC"

    .line 10
    .line 11
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string/jumbo v0, "time string is null"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "UTC"

    .line 10
    .line 11
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string/jumbo v0, "time string is null"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 30
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 31
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 32
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 33
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 34
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 35
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 36
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 38
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(IIIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 18
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 19
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 20
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 21
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 22
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 23
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 24
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 25
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(J)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 2
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 4
    iget-object p1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {p1, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2

    .line 5
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 6
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 7
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 8
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 9
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 10
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 11
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 12
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 13
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 14
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 15
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 16
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public setJulianDay(I)J
    .locals 4

    .line 1
    const v0, 0x253d8c    # 3.419992E-39f

    .line 2
    .line 3
    .line 4
    sub-int v0, p1, v0

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    const-wide/32 v2, 0x5265c00

    .line 8
    .line 9
    .line 10
    mul-long/2addr v0, v2

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr p1, v0

    .line 21
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 22
    .line 23
    add-int/2addr v0, p1

    .line 24
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Landroid/text/format/Time;->hour:I

    .line 28
    .line 29
    iput p1, p0, Landroid/text/format/Time;->minute:I

    .line 30
    .line 31
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    return-wide v0
.end method

.method public setToNow()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public toMillis(Z)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
