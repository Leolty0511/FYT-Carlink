.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PduParser"
.end annotation


# instance fields
.field mCur:I

.field mPdu:[B

.field mUserData:[B

.field mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field mUserDataSeptetPadding:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public constructUserData(ZZ)I
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 4
    .line 5
    add-int/lit8 v2, v0, 0x1

    .line 6
    .line 7
    aget-byte v0, v1, v0

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    add-int/lit8 v5, v2, 0x1

    .line 16
    .line 17
    aget-byte v2, v1, v2

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    new-array v6, v2, [B

    .line 22
    .line 23
    invoke-static {v1, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 24
    .line 25
    .line 26
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 31
    .line 32
    add-int v1, v5, v2

    .line 33
    .line 34
    add-int/lit8 v5, v2, 0x1

    .line 35
    .line 36
    mul-int/lit8 v5, v5, 0x8

    .line 37
    .line 38
    div-int/lit8 v6, v5, 0x7

    .line 39
    .line 40
    rem-int/lit8 v7, v5, 0x7

    .line 41
    .line 42
    if-lez v7, :cond_0

    .line 43
    .line 44
    move v7, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v7, v4

    .line 47
    :goto_0
    add-int/2addr v6, v7

    .line 48
    mul-int/lit8 v7, v6, 0x7

    .line 49
    .line 50
    sub-int/2addr v7, v5

    .line 51
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 52
    .line 53
    move v8, v2

    .line 54
    move v2, v1

    .line 55
    move v1, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v1, v4

    .line 58
    move v6, v1

    .line 59
    :goto_1
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 62
    .line 63
    array-length p1, p1

    .line 64
    sub-int/2addr p1, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    if-eqz p1, :cond_3

    .line 67
    .line 68
    add-int/2addr v1, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v1, v4

    .line 71
    :goto_2
    sub-int p1, v0, v1

    .line 72
    .line 73
    if-gez p1, :cond_4

    .line 74
    .line 75
    move p1, v4

    .line 76
    :cond_4
    :goto_3
    new-array p1, p1, [B

    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 81
    .line 82
    array-length v3, p1

    .line 83
    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 84
    .line 85
    .line 86
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 87
    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    sub-int/2addr v0, v6

    .line 91
    if-gez v0, :cond_5

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move v4, v0

    .line 95
    :goto_4
    return v4

    .line 96
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 97
    .line 98
    array-length p1, p1

    .line 99
    return p1
.end method

.method public getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 4
    .line 5
    aget-byte v2, v0, v1

    .line 6
    .line 7
    and-int/lit16 v2, v2, 0xff

    .line 8
    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    div-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 16
    .line 17
    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 24
    .line 25
    return-object v3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public getByte()I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getSCAddress()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 10
    .line 11
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 12
    .line 13
    invoke-static {v2, v3, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    const-string v3, "SmsMessage"

    .line 20
    .line 21
    const-string v4, "invalid SC address: "

    .line 22
    .line 23
    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 27
    .line 28
    add-int/2addr v2, v0

    .line 29
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 30
    .line 31
    return-object v1
.end method

.method public getSCTimestampMillis()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 16
    .line 17
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x1

    .line 20
    .line 21
    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 22
    .line 23
    aget-byte v1, v1, v2

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 30
    .line 31
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 32
    .line 33
    add-int/lit8 v4, v3, 0x1

    .line 34
    .line 35
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 36
    .line 37
    aget-byte v2, v2, v3

    .line 38
    .line 39
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 44
    .line 45
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 46
    .line 47
    add-int/lit8 v5, v4, 0x1

    .line 48
    .line 49
    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 50
    .line 51
    aget-byte v3, v3, v4

    .line 52
    .line 53
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 58
    .line 59
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    .line 63
    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 64
    .line 65
    aget-byte v4, v4, v5

    .line 66
    .line 67
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 72
    .line 73
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 74
    .line 75
    add-int/lit8 v7, v6, 0x1

    .line 76
    .line 77
    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 78
    .line 79
    aget-byte v5, v5, v6

    .line 80
    .line 81
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 86
    .line 87
    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 88
    .line 89
    add-int/lit8 v8, v7, 0x1

    .line 90
    .line 91
    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 92
    .line 93
    aget-byte v6, v6, v7

    .line 94
    .line 95
    and-int/lit8 v7, v6, -0x9

    .line 96
    .line 97
    int-to-byte v7, v7

    .line 98
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    and-int/lit8 v6, v6, 0x8

    .line 103
    .line 104
    if-nez v6, :cond_0

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    neg-int v7, v7

    .line 108
    :goto_0
    new-instance v6, Landroid/text/format/Time;

    .line 109
    .line 110
    const-string v8, "UTC"

    .line 111
    .line 112
    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v8, 0x5a

    .line 116
    .line 117
    if-lt v0, v8, :cond_1

    .line 118
    .line 119
    add-int/lit16 v0, v0, 0x76c

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    add-int/lit16 v0, v0, 0x7d0

    .line 123
    .line 124
    :goto_1
    iput v0, v6, Landroid/text/format/Time;->year:I

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    sub-int/2addr v1, v0

    .line 128
    iput v1, v6, Landroid/text/format/Time;->month:I

    .line 129
    .line 130
    iput v2, v6, Landroid/text/format/Time;->monthDay:I

    .line 131
    .line 132
    iput v3, v6, Landroid/text/format/Time;->hour:I

    .line 133
    .line 134
    iput v4, v6, Landroid/text/format/Time;->minute:I

    .line 135
    .line 136
    iput v5, v6, Landroid/text/format/Time;->second:I

    .line 137
    .line 138
    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    mul-int/lit8 v7, v7, 0xf

    .line 143
    .line 144
    mul-int/lit8 v7, v7, 0x3c

    .line 145
    .line 146
    mul-int/lit16 v7, v7, 0x3e8

    .line 147
    .line 148
    int-to-long v2, v7

    .line 149
    sub-long/2addr v0, v2

    .line 150
    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method public getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-static {p1, v0, v1, p3}, Landroid/app/m;->z(IIII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 24
    .line 25
    return-object p2
.end method

.method public getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 13
    .line 14
    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getUserDataKSC5601(I)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 6
    .line 7
    const-string v3, "KSC5601"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "SmsMessage"

    .line 15
    .line 16
    const-string v2, "implausible UnsupportedEncodingException"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 27
    .line 28
    return-object v0
.end method

.method public getUserDataUCS2(I)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 6
    .line 7
    const-string v3, "utf-16"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "SmsMessage"

    .line 15
    .line 16
    const-string v2, "implausible UnsupportedEncodingException"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 27
    .line 28
    return-object v0
.end method

.method public moreDataPresent()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
