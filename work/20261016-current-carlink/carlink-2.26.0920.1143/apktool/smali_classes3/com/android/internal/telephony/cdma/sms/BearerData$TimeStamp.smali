.class public Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
.super Landroid/text/format/Time;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStamp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x63

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-gt v1, v2, :cond_7

    .line 17
    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/16 v2, 0x60

    .line 22
    .line 23
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    add-int/lit16 v1, v1, 0x76c

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    add-int/lit16 v1, v1, 0x7d0

    .line 29
    .line 30
    :goto_0
    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    aget-byte v2, p0, v1

    .line 34
    .line 35
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lt v2, v1, :cond_7

    .line 40
    .line 41
    const/16 v4, 0xc

    .line 42
    .line 43
    if-le v2, v4, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sub-int/2addr v2, v1

    .line 47
    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    aget-byte v2, p0, v2

    .line 51
    .line 52
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-lt v2, v1, :cond_7

    .line 57
    .line 58
    const/16 v1, 0x1f

    .line 59
    .line 60
    if-le v2, v1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    aget-byte v1, p0, v1

    .line 67
    .line 68
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ltz v1, :cond_7

    .line 73
    .line 74
    const/16 v2, 0x17

    .line 75
    .line 76
    if-le v1, v2, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    aget-byte v1, p0, v1

    .line 83
    .line 84
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ltz v1, :cond_7

    .line 89
    .line 90
    const/16 v2, 0x3b

    .line 91
    .line 92
    if-le v1, v2, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 96
    .line 97
    const/4 v1, 0x5

    .line 98
    aget-byte p0, p0, v1

    .line 99
    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-ltz p0, :cond_7

    .line 105
    .line 106
    if-le p0, v2, :cond_6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iput p0, v0, Landroid/text/format/Time;->second:I

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_7
    :goto_1
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimeStamp "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "{ year="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Landroid/text/format/Time;->year:I

    .line 16
    .line 17
    const-string v3, ", month="

    .line 18
    .line 19
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Landroid/text/format/Time;->month:I

    .line 24
    .line 25
    const-string v3, ", day="

    .line 26
    .line 27
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 32
    .line 33
    const-string v3, ", hour="

    .line 34
    .line 35
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v2, p0, Landroid/text/format/Time;->hour:I

    .line 40
    .line 41
    const-string v3, ", minute="

    .line 42
    .line 43
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget v2, p0, Landroid/text/format/Time;->minute:I

    .line 48
    .line 49
    const-string v3, ", second="

    .line 50
    .line 51
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, p0, Landroid/text/format/Time;->second:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, " }"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
