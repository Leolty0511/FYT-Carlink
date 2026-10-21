.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeCalculator"
.end annotation


# instance fields
.field public timezone:Ljava/lang/String;

.field public final wallTime:Llibcore/util/ZoneInfo$WallTime;

.field private zoneInfo:Llibcore/util/ZoneInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 9
    .line 10
    new-instance p1, Llibcore/util/ZoneInfo$WallTime;

    .line 11
    .line 12
    invoke-direct {p1}, Llibcore/util/ZoneInfo$WallTime;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 16
    .line 17
    return-void
.end method

.method public static compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 13
    .line 14
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 19
    .line 20
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v0, v2

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 29
    .line 30
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 35
    .line 36
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v0, v2

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 45
    .line 46
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 51
    .line 52
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr v0, v2

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 61
    .line 62
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 67
    .line 68
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int/2addr v0, v2

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    return v0

    .line 76
    :cond_3
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 77
    .line 78
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 83
    .line 84
    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    sub-int/2addr v0, v2

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    return v0

    .line 92
    :cond_4
    iget-object p0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 93
    .line 94
    invoke-virtual {p0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    iget-object p1, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 99
    .line 100
    invoke-virtual {p1}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    sub-int/2addr p0, p1

    .line 105
    if-eqz p0, :cond_5

    .line 106
    .line 107
    return p0

    .line 108
    :cond_5
    return v1

    .line 109
    :cond_6
    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-virtual {p1, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    .line 114
    .line 115
    .line 116
    move-result-wide p0

    .line 117
    sub-long/2addr v2, p0

    .line 118
    const-wide/16 p0, 0x0

    .line 119
    .line 120
    cmp-long p0, v2, p0

    .line 121
    .line 122
    if-gez p0, :cond_7

    .line 123
    .line 124
    const/4 v1, -0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_7
    if-lez p0, :cond_8

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    :cond_8
    :goto_0
    return v1
.end method

.method private static lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 4

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    const-string v1, "GMT not found: \""

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "GMT"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    if-eqz v2, :cond_1

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    new-instance v2, Ljava/lang/AssertionError;

    .line 51
    .line 52
    const-string v3, "Error loading timezone: \""

    .line 53
    .line 54
    invoke-static {v3, p0, v0}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw v2
.end method

.method private toChar(I)C
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    return p1
.end method

.method private updateZoneInfoFromTimeZone()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 2
    .line 3
    iget v1, p1, Landroid/text/format/Time;->second:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setSecond(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 9
    .line 10
    iget v1, p1, Landroid/text/format/Time;->minute:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMinute(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 16
    .line 17
    iget v1, p1, Landroid/text/format/Time;->hour:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setHour(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 23
    .line 24
    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonthDay(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 30
    .line 31
    iget v1, p1, Landroid/text/format/Time;->month:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonth(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 37
    .line 38
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYear(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 44
    .line 45
    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setWeekDay(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 51
    .line 52
    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYearDay(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 58
    .line 59
    iget v1, p1, Landroid/text/format/Time;->isDst:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 65
    .line 66
    iget-wide v1, p1, Landroid/text/format/Time;->gmtoff:J

    .line 67
    .line 68
    long-to-int v1, v1

    .line 69
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setGmtOffset(I)V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget v0, p1, Landroid/text/format/Time;->second:I

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    iget v0, p1, Landroid/text/format/Time;->minute:I

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    iget v0, p1, Landroid/text/format/Time;->hour:I

    .line 85
    .line 86
    if-nez v0, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v0, "allDay is true but sec, min, hour are not 0."

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_1
    :goto_0
    iget-object p1, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 98
    .line 99
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 2
    .line 3
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 8
    .line 9
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 10
    .line 11
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 16
    .line 17
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 18
    .line 19
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 24
    .line 25
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 26
    .line 27
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 32
    .line 33
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 34
    .line 35
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p1, Landroid/text/format/Time;->month:I

    .line 40
    .line 41
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 42
    .line 43
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p1, Landroid/text/format/Time;->year:I

    .line 48
    .line 49
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 50
    .line 51
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 56
    .line 57
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 58
    .line 59
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    .line 64
    .line 65
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 66
    .line 67
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p1, Landroid/text/format/Time;->isDst:I

    .line 72
    .line 73
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 74
    .line 75
    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    int-to-long v0, v0

    .line 80
    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    .line 81
    .line 82
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "%c"

    .line 4
    .line 5
    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 11
    .line 12
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public format2445(Z)Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    new-array v2, v2, [C

    .line 11
    .line 12
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 13
    .line 14
    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    div-int/lit16 v4, v3, 0x3e8

    .line 19
    .line 20
    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    aput-char v4, v2, v5

    .line 26
    .line 27
    rem-int/lit16 v3, v3, 0x3e8

    .line 28
    .line 29
    div-int/lit8 v4, v3, 0x64

    .line 30
    .line 31
    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v6, 0x1

    .line 36
    aput-char v4, v2, v6

    .line 37
    .line 38
    rem-int/lit8 v3, v3, 0x64

    .line 39
    .line 40
    div-int/lit8 v4, v3, 0xa

    .line 41
    .line 42
    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v7, 0x2

    .line 47
    aput-char v4, v2, v7

    .line 48
    .line 49
    const/16 v4, 0xa

    .line 50
    .line 51
    rem-int/2addr v3, v4

    .line 52
    const/4 v7, 0x3

    .line 53
    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    aput-char v3, v2, v7

    .line 58
    .line 59
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 60
    .line 61
    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-int/2addr v3, v6

    .line 66
    div-int/lit8 v6, v3, 0xa

    .line 67
    .line 68
    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    const/4 v7, 0x4

    .line 73
    aput-char v6, v2, v7

    .line 74
    .line 75
    rem-int/2addr v3, v4

    .line 76
    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v6, 0x5

    .line 81
    aput-char v3, v2, v6

    .line 82
    .line 83
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 84
    .line 85
    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    div-int/lit8 v6, v3, 0xa

    .line 90
    .line 91
    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    const/4 v7, 0x6

    .line 96
    aput-char v6, v2, v7

    .line 97
    .line 98
    rem-int/2addr v3, v4

    .line 99
    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const/4 v6, 0x7

    .line 104
    aput-char v3, v2, v6

    .line 105
    .line 106
    if-nez p1, :cond_1

    .line 107
    .line 108
    new-instance p1, Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {p1, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_1
    const/16 p1, 0x54

    .line 115
    .line 116
    aput-char p1, v2, v1

    .line 117
    .line 118
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 119
    .line 120
    invoke-virtual {p1}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    div-int/lit8 v1, p1, 0xa

    .line 125
    .line 126
    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const/16 v3, 0x9

    .line 131
    .line 132
    aput-char v1, v2, v3

    .line 133
    .line 134
    rem-int/2addr p1, v4

    .line 135
    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    aput-char p1, v2, v4

    .line 140
    .line 141
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 142
    .line 143
    invoke-virtual {p1}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    div-int/lit8 v1, p1, 0xa

    .line 148
    .line 149
    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    const/16 v3, 0xb

    .line 154
    .line 155
    aput-char v1, v2, v3

    .line 156
    .line 157
    rem-int/2addr p1, v4

    .line 158
    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    const/16 v1, 0xc

    .line 163
    .line 164
    aput-char p1, v2, v1

    .line 165
    .line 166
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 167
    .line 168
    invoke-virtual {p1}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    div-int/lit8 v1, p1, 0xa

    .line 173
    .line 174
    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/16 v3, 0xd

    .line 179
    .line 180
    aput-char v1, v2, v3

    .line 181
    .line 182
    rem-int/2addr p1, v4

    .line 183
    invoke-direct {p0, p1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    const/16 v1, 0xe

    .line 188
    .line 189
    aput-char p1, v2, v1

    .line 190
    .line 191
    const-string p1, "UTC"

    .line 192
    .line 193
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    const/16 v1, 0xf

    .line 200
    .line 201
    if-eqz p1, :cond_2

    .line 202
    .line 203
    const/16 p1, 0x5a

    .line 204
    .line 205
    aput-char p1, v2, v1

    .line 206
    .line 207
    new-instance p1, Ljava/lang/String;

    .line 208
    .line 209
    invoke-direct {p1, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    .line 210
    .line 211
    .line 212
    return-object p1

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {p1, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 216
    .line 217
    .line 218
    return-object p1
.end method

.method public setTimeInMillis(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public switchTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public toMillis(Z)J
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    return-wide v0

    .line 22
    :cond_1
    int-to-long v0, p1

    .line 23
    const-wide/16 v2, 0x3e8

    .line 24
    .line 25
    mul-long/2addr v0, v2

    .line 26
    return-wide v0
.end method

.method public toStringInternal()Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 6
    .line 7
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 19
    .line 20
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x1

    .line 25
    add-int/2addr v1, v3

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 33
    .line 34
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v1, v0, v3

    .line 44
    .line 45
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 46
    .line 47
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v3, 0x3

    .line 56
    aput-object v1, v0, v3

    .line 57
    .line 58
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 59
    .line 60
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v3, 0x4

    .line 69
    aput-object v1, v0, v3

    .line 70
    .line 71
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 72
    .line 73
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v3, 0x5

    .line 82
    aput-object v1, v0, v3

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 86
    .line 87
    aput-object v3, v0, v1

    .line 88
    .line 89
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 90
    .line 91
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v3, 0x7

    .line 100
    aput-object v1, v0, v3

    .line 101
    .line 102
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 103
    .line 104
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/16 v3, 0x8

    .line 113
    .line 114
    aput-object v1, v0, v3

    .line 115
    .line 116
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 117
    .line 118
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/16 v3, 0x9

    .line 127
    .line 128
    aput-object v1, v0, v3

    .line 129
    .line 130
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 131
    .line 132
    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const/16 v3, 0xa

    .line 141
    .line 142
    aput-object v1, v0, v3

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    const-wide/16 v3, 0x3e8

    .line 149
    .line 150
    div-long/2addr v1, v3

    .line 151
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const/16 v2, 0xb

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    const-string v1, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    .line 160
    .line 161
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method
